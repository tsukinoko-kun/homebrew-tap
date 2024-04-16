import { createFormulaeSignal, type Formulae } from "../formulae/client";
import { createSignal } from "solid-js";

export function Search() {
  const formulae = createFormulaeSignal();
  const [searchTerm, setSearchTerm] = createSignal("");

  const filterFormulas = (formulas: Formulae, searchTerm: string): Formulae => {
    console.log(formulas);
    return formulas.filter((formula) =>
      formula.id.toLowerCase().includes(searchTerm.toLowerCase()),
    );
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
