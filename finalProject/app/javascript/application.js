// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

function removeAdminView() {
    var elem = document.getElementById('removeAdmin');
    elem.parentNode.removeChild(elem);
   }
