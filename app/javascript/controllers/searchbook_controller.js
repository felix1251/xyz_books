import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    static targets = ["link", "search"];

    connect() {
        const urlParams = new URLSearchParams(window.location.search);
        const searchUrl = urlParams.get('search');
        if(searchUrl) {
            this.searchTarget.value = searchUrl
            this.validate()
        }

        this.searchTarget.addEventListener("keypress", (event) => {
            if (event.key === "Enter"){
                const main = document.getElementById("main")
                const not_found =  document.getElementById("not_found")

                if(!event.target.value){
                    const invalidElement = document.getElementById("invalid_book")
                    main.classList.remove("hidden")
                    invalidElement.classList.add("hidden")
                    this.reloadPathState()
                    if (not_found) not_found.classList.add("hidden")
                    return
                }
                main.classList.add("hidden")
                this.initPath()
                this.validate()
            }
        });
    }

    search(){
        this.linkTarget.setAttribute('href', "/search/" + this.searchTarget.value)
        this.linkTarget.click() 
    }

    validate(){
        const invalidElement = document.getElementById("invalid_book")
        const not_found =  document.getElementById("not_found")
        
        if(this.isbn10Validate() || this.isbn13Validate()){
            invalidElement.classList.add("hidden")
            this.search() 
        }else{
            invalidElement.classList.remove("hidden")
            if (not_found) not_found.classList.remove("hidden") 
        }

        if (not_found) {
            if(not_found.classList.contains("hidden")) {
                not_found.classList.remove("hidden") 
                return 
            }
            not_found.classList.add("hidden")
        }
    }

    reloadPathState(){
        window.history.pushState({ path: "/" }, '', "/");
    }

    initPath(){
        const changepath = window.location.protocol + "//" + window.location.host + window.location.pathname + '?search=' + this.searchTarget.value;    
        window.history.pushState({ path: changepath }, '', changepath);
    }

    isbn10Validate(){
        const pattern = /^(?:\d[\ |-]?){9}[\d|X]$/i
        let isbn10 = this.searchTarget.value

        if(!pattern.test(isbn10)) return false

        isbn10 = Array.from(isbn10.replaceAll('-',''))
        let checkDigit = isbn10.pop()
        checkDigit = (checkDigit.toUpperCase() == 'X') ? 10 : Number(checkDigit)
        
        let sum = 0

        isbn10.forEach((value, index) => {
            sum += (index + 1) * Number(value)
        })
    
        return (sum % 11) == checkDigit
    }

    isbn13Validate(){
        const pattern = /^(?:\d[\ |-]?){9}[\d|X]$/i
        const pattern2 = /(978|979)/
        let isbn13 = this.searchTarget.value

        if (!pattern.test(isbn13) && !pattern2.test(isbn13.substring(0, 3)) ) return false

        isbn13 = Array.from(isbn13.replaceAll('-',''))

        let checkDigit = Number(isbn13.pop())

        let sum = 0

        isbn13.forEach((value, index) => {
            let multiplier = (index % 2 == 0) ? 1 : 3
            sum += multiplier * Number(value)
        })

        let result = (10 - (sum % 10))
        if (result == 10) result = 0 

        console.log(result, checkDigit)
        return result == checkDigit
    }
}