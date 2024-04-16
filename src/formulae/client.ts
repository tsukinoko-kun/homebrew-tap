import { createSignal } from "solid-js";
import type { Accessor, Signal } from "solid-js";
import type { Formulae } from "./server";
export type { Formulae, Formula } from "./server";

function updateFormulae(signal: Signal<Formulae>): boolean {
  if (signal[0].length !== 0) {
    return true;
  }

  const formulaeEl = document.getElementById("formulae");
  if (!formulaeEl) {
    return false;
  }

  if (!(globalThis as any).formulaeCode) {
    (globalThis as any).formulaeCode = JSON.parse(formulaeEl.innerHTML);
  }

  signal[1]((globalThis as any).formulaeCode);
  return true;
}

export function createFormulaeSignal(): Accessor<Formulae> {
  const [formulae, setFormulae] = createSignal<Formulae>([]);
  updateFormulae([formulae, setFormulae]);

  return formulae;
}
