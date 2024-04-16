import { readFileSync, readdirSync } from "node:fs";
import { basename } from "node:path";

function panic(...arg: any[]): never {
  console.error(...arg);
  process.exit(1);
}

function mapCpu(rb: string): string {
  switch (rb.trim()) {
    case "Hardware::CPU.intel?":
      return "x86_64";
    case "Hardware::CPU.intel? && Hardware::CPU.is_64_bit?":
      return "x86_64";
    case "Hardware::CPU.intel? && Hardware::CPU.is_32_bit?":
      return "i386";

    case "Hardware::CPU.arm?":
      return "ARM";
    case "Hardware::CPU.arm? && Hardware::CPU.is_64_bit?":
      return "ARM64";
    case "Hardware::CPU.arm? && Hardware::CPU.is_32_bit?":
      return "ARM32";
    default:
      return rb;
  }
}

const rootDir = readdirSync(".");
export const formulae = rootDir
  .filter((x) => x.endsWith(".rb"))
  .map(readFormulaFromFile);

export type Formulae = typeof formulae;

export type Formula = Formulae[number];

function readFormulaFromFile(path: string) {
  const id = (() => {
    const dotSep = basename(path).split(".");
    dotSep.pop();
    return dotSep.join(".");
  })();

  const content = readFileSync(path, "utf8");

  const name = (() => {
    const res = /class\s+([^\s]+)\s*<\s*Formula/.exec(content);
    if (res === null) {
      panic("name parsing failed");
    }
    return res[1];
  })();

  const desc = (() => {
    const res = /\s*desc\s+("[^"]+")/.exec(content);
    if (res === null) {
      panic("desc parsing failed");
    }
    return JSON.parse(res[1] ?? "");
  })();
  const homepage = (() => {
    const res = /\s*homepage\s+("[^"]+")/.exec(content);
    if (res === null) {
      return "";
    }
    return JSON.parse(res[1] ?? "");
  })();
  const version = (() => {
    const res = /\s*version\s+("[^"]+")/.exec(content);
    if (res === null) {
      panic("version parsing failed");
    }
    return JSON.parse(res[1] ?? "");
  })();

  const platforms = (() => {
    const os = Array.from(content.matchAll(/on_([a-z]+)\s+do/g)).map(
      (x) => x[1],
    ) as string[];
    if (!os) {
      panic("os parsing failed");
    }

    const osSep = content.split(/^\s*on_[a-z]+\s+do/gm);
    osSep.shift();
    const cpu = osSep.map((x) => {
      return Array.from(x.matchAll(/^\s+if\s(.+)$/gm)).map((x) => x[1]);
    });

    if (os.length !== cpu.length) {
      panic("failed to marge os and cpu");
    }

    return os.map((os, i) => ({
      os: os,
      cpu: (cpu[i] as string[]).map(mapCpu),
    }));
  })();

  return {
    id,
    name,
    desc,
    homepage,
    version,
    platforms,
  };
}
