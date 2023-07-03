import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["comment", "add", "show"]

    addComment(){
        let content=this.commentTarget.value;
        this.addTarget.insertAdjacentHTML('beforebegin', "<li>" + content + "</li>");
    }

    showAll(){
        this.showTarget.style.visibility = "visible";
    }

    upvote(){
        let comment=event.target.closest(".comment");
        comment.insertadjacentHTML('beforeend', '<i class="fa fa-check-circle"></i>');
    }

    remove(){
        let comment=event.target.closest(".comment");
        comment.style.visibility = "hidden";
    }



}