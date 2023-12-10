
// filtering on presentations page to 
document.addEventListener('DOMContentLoaded', function() {
    var filterInput = document.getElementById('presentationFilter');
    var presentationsContainer = document.getElementById('presentations');
  
    filterInput.addEventListener('input', function() {
      var filterValue = filterInput.value.toLowerCase();
  
      presentationsContainer.querySelectorAll('.presentation-table').forEach(function(presentationTable) {
        var presentationDateElement = presentationTable.querySelector('.presentation-date');
        var presentationLink = presentationTable.nextElementSibling;
  
        if (presentationDateElement) {
          var presentationDate = presentationDateElement.nextElementSibling.textContent.toLowerCase();
  
          // shows or hides presentations depending on date
          var displayStyle = presentationDate.includes(filterValue) ? 'table' : 'none';
          presentationTable.style.display = displayStyle;
          presentationLink.style.display = displayStyle === 'none' ? 'none' : 'block';
        }
      });
    });
  });