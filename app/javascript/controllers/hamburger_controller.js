import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    static targets = ["animate"];

    connect() {
        this.element.addEventListener("click", () => this.navClick());
        console.log(this.isIsbnValid("978-1-891830-85-3"))
    }

    navClick() {
        this.animateTargets.map((temp, index) => {
            switch (index) {
                case 0:
                    this.changeClass(temp, "rotate-[42deg]");
                    break;
                case 1:
                    this.changeClass(temp, "-translate-x-10");
                    break;
                case 2:
                    this.changeClass(temp, "-rotate-[42deg]");
                    break;
                default:
                    break;
            }
        });
    }

    changeClass(temp, twcss) {
        const { classList } = temp;
        if (classList.contains(twcss)) {
            temp.classList.remove(twcss);
        } else {
            temp.classList.add(twcss);
        }
    }

    disconnect() {
        this.element.removeEventListener("click", this.navClick());
    }

    isIsbnValid(value) {
        const isbn10 = new RegExp(/^(?:ISBN(?:-10)?:?●)?(?=[0-9X]{10}$|(?=(?:[0-9]+[-●]){3})[-●0-9X]{13}$)[0-9]{1,5}[-●]?[0-9]+[-●]?[0-9]+[-●]?[0-9X]$/)
        const isbn13 = new RegExp(/^(?:ISBN(?:-13)?:?●)?(?=[0-9]{13}$|(?=(?:[0-9]+[-●]){4})[-●0-9]{17}$)97[89][-●]?[0-9]{1,5}[-●]?[0-9]+[-●]?[0-9]+[-●]?[0-9]$/)
        
        if(isbn10.test(value) || isbn13.test(value)) return true;
        return false;
    }
}