// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener('DOMContentLoaded', function() {
  var filterInput = document.getElementById('presentationFilter');
  var presentationsContainer = document.getElementById('presentations');

  filterInput.addEventListener('input', function() {
    var filterValue = filterInput.value.toLowerCase();

    presentationsContainer.querySelectorAll('.presentation-table').forEach(function(presentationTable) {
      var presentationDateElement = presentationTable.querySelector('.presentation-date');
      var presentationLink = presentationTable.nextElementSibling; // Assuming the link is a sibling element

      if (presentationDateElement) {
        var presentationDate = presentationDateElement.nextElementSibling.textContent.toLowerCase();

        // Show or hide the presentation based on the filter
        var displayStyle = presentationDate.includes(filterValue) ? 'table' : 'none';
        presentationTable.style.display = displayStyle;
        presentationLink.style.display = displayStyle === 'none' ? 'none' : 'block';
      }
    });
  });
});

