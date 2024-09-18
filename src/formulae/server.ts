import "@total-typescript/ts-reset";
import { readFileSync, readdirSync } from "node:fs";
import { basename } from "node:path";

function panic(...arg: any[]): never {
  console.error(...arg);
  process.exit(1);
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

  const bin = (() => {
    const res = Array.from(content.matchAll(/^\s*bin\.install\s*(".+")$/gm))
      .map((x) => x[1])
      .filter(Boolean)
      .map((x) => JSON.parse(x) as string);
    return Array.from(new Set(res));
  })();

  const name = (() => {
    const res = /class\s+([^\s]+)\s*<\s*Formula/.exec(content);
    if (res === null) {
      panic("name parsing failed");
    }
    return res[1] as string;
  })();

  const desc = (() => {
    const res = /\s*desc\s+("[^"]+")/.exec(content);
    if (res === null) {
      panic("desc parsing failed");
    }
    return JSON.parse(res[1] ?? "") as string;
  })();
  const homepage = (() => {
    const res = /\s*homepage\s+("[^"]+")/.exec(content);
    if (res === null) {
      return "";
    }
    return JSON.parse(res[1] ?? "") as string;
  })();
  const version = (() => {
    const res = /\s*version\s+("[^"]+")/.exec(content);
    if (res === null) {
      panic("version parsing failed");
    }
    return JSON.parse(res[1] ?? "") as string;
  })();

  const platforms = (() => {
    const platforms = new Array<{ os: string; cpu: string[] }>();
    let os = { os: "", cpu: [] as string[] };
    for (const line of content.split("\n")) {
      const onRes = /^\s*on_([a-z]+)\s+do/.exec(line);
      if (!onRes) continue;
      const on = onRes[1]?.toLowerCase();
      if (!on) continue;
      switch (on) {
        case "macos":
        case "linux":
        case "windows":
          if (os.os) {
            platforms.push(structuredClone(os));
            os.cpu = [];
          }
          os.os = on;
          break;
        case "arm":
          os.cpu.push("ARM");
          break;
        case "intel":
          os.cpu.push("x86_64");
          break;
        default:
          os.cpu.push(on);
          continue;
      }
    }
    if (os.os) {
      platforms.push(os);
    }
    return platforms;
  })();

  return {
    id,
    name,
    desc,
    bin,
    homepage,
    version,
    platforms,
  };
}
