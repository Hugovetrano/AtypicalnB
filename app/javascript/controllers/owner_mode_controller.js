import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="owner-mode"
export default class extends Controller {
  static targets = ['container'];

  toggle() {
    fetch('/mode/toggle')
    .then((response) => response.text)
    .then((data) => {
      Turbo.visit(window.location, { action: "replace" });
    })
  }
}
