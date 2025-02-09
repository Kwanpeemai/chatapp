import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["name"];

  change(event) {
    
    const roomName = event.currentTarget.dataset.roomName;
    this.nameTarget.textContent = roomName;
  }
}
