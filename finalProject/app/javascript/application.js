// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

function removeAdminView() {
    var elem = document.getElementById('removeAdmin');
    elem.removeChild(elem);
   }

function presentationSearch(title) {
    title = title.toLowerCase();
    for (let i = 0; i < presentationSearch.length; i++){
        if (presentations[i].title.toLowerCase() == title){
            return presentations[i];
        }
    }
    return null; //If no presentation has that name
}


