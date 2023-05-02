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
                if(!event.target.value){
                    const main = document.getElementById("main")
                    main.classList.remove("hidden")
                    main.classList.add("block")
                    this.reloadPathState()
                    document.getElementById("book")?.remove()
                    return
                }
                this.initPath()
                this.validate()
            }
        });
    }

    search(){
        this.linkTarget.setAttribute('href', "/search/" + this.searchTarget.value)
    
        const main = document.getElementById("main")
        if (main.classList.contains("block")){
            main.classList.remove("block")
            main.classList.add("hidden")
        }
        this.linkTarget.click() 
    }

    validate(){
        if(this.isbn10Validate() || this.isbn13Validate()){
            this.search() 
        }else{
            alert("invalid isbn")
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

        for(let i = 0; i < isbn13.length; i++){
            sum = (i + 1) * Number(isbn13[i])
        }

        let result = (10 - (sum % 10))
        if (result == 10)result = 0 

        return result == checkDigit
    }
}