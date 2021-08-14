import { Controller } from "stimulus"

export default class extends Controller {
    clear() {
        this.element.remove()
    }
}
