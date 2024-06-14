document.addEventListener('DOMContentLoaded', function() {
    const clearSearchButton = document.getElementById('clear-search');
    
    if (clearSearchButton) {
      clearSearchButton.addEventListener('click', function(event) {
        event.preventDefault();
        document.getElementById('query').value = ''; // Arama kutusunu temizle
        document.getElementById('search-form').submit(); // Aramayı yenile
      });
    }
  
    const clearSearchInput = document.getElementById('clear-search-input');
    
    if (clearSearchInput) {
      clearSearchInput.addEventListener('click', function(event) {
        event.preventDefault();
        document.getElementById('query').value = ''; // Arama kutusunu temizle
        document.getElementById('search-form').submit(); // Aramayı yenile
      });
    }
  });
  