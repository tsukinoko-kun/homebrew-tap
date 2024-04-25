import { createFormulaeSignal, type Formulae } from "../formulae/client";
import { createSignal } from "solid-js";

function filterAndSort<T>(arr: T[], score: (el: T) => number): T[] {
  return arr
    .map((x) => ({ el: x, score: score(x) }))
    .filter((x) => x.score > 0)
    .sort((a, b) => b.score - a.score)
    .map((x) => x.el);
}

export function Search() {
  const formulae = createFormulaeSignal();
  const [searchTerm, setSearchTerm] = createSignal("");

  const filterFormulas = (formulas: Formulae, searchTerm: string): Formulae => {
    searchTerm = searchTerm.toLowerCase();
    return filterAndSort(formulas, (formula) => {
      if (formula.id.toLowerCase().includes(searchTerm)) return 10;
      for (const bin of formula.bin) {
        if (bin.includes(searchTerm)) return 5;
      }
      if (formula.desc.toLowerCase().includes(searchTerm)) return 1;
      return 0;
    });
  };

  return (
    <div class="relative mx-auto my-8 block w-fit">
      <label class="bg-ctp-surface0 p-4">
        <input
          type="text"
          placeholder="Search formulas..."
          value={searchTerm()}
          onInput={(e: Event) =>
            setSearchTerm((e.target as HTMLInputElement).value)
          }
        />
      </label>
      <ul
        class={
          "absolute top-full bg-ctp-overlay0 " +
          (searchTerm() ? "visible block" : "collapse hidden")
        }
      >
        {filterFormulas(formulae(), searchTerm()).map((formula) => (
          <li>
            <a
              class="block p-2 hover:bg-ctp-overlay1"
              href={`/formula/${formula.id}`}
            >
              {formula.name}
            </a>
          </li>
        ))}
      </ul>
    </div>
  );
}
