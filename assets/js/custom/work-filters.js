/*
 * Work page (/portfolio/) card filtering.
 *
 * The matching itself happens at build time in layouts/projects/list.html:
 * each card carries the ids of the filters it satisfies in `data-filters`.
 * This only toggles visibility and keeps the count line in sync.
 */

function initWorkFilters() {
  const bar = document.querySelector("[data-work-filters]");
  const grid = document.querySelector("[data-work-grid]");
  if (!bar || !grid) return;

  const buttons = Array.from(bar.querySelectorAll("[data-filter]"));
  const cards = Array.from(grid.querySelectorAll(".work-card"));
  const empty = document.querySelector("[data-work-empty]");
  const counter = document.querySelector("[data-work-count]");

  let countLabels = {};
  if (counter && counter.dataset.countLabels) {
    try {
      countLabels = JSON.parse(counter.dataset.countLabels);
    } catch (e) {
      countLabels = {};
    }
  }

  const apply = (filter) => {
    let visible = 0;

    cards.forEach((card) => {
      const ids = (card.dataset.filters || "").split(/\s+/).filter(Boolean);
      const shown = filter === "all" || ids.includes(filter);
      card.hidden = !shown;
      if (shown) visible += 1;
    });

    buttons.forEach((button) => {
      button.setAttribute(
        "aria-pressed",
        button.dataset.filter === filter ? "true" : "false",
      );
    });

    if (empty) empty.hidden = visible > 0;
    if (counter && countLabels[visible] !== undefined) {
      counter.textContent = countLabels[visible];
    }
  };

  bar.addEventListener("click", (event) => {
    const button = event.target.closest("[data-filter]");
    if (!button || !bar.contains(button)) return;
    apply(button.dataset.filter);
  });

  apply("all");
}

if (document.readyState === "loading") {
  document.addEventListener("DOMContentLoaded", initWorkFilters);
} else {
  initWorkFilters();
}
