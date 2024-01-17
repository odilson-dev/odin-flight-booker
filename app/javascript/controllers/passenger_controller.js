import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="passenger"
export default class extends Controller {
  static targets = ["content"]

  connect() {
    console.log("Toggle Controller connected");
  }

  toggle() {
    this.contentTarget.classList.toggle("hidden");
  }
}
