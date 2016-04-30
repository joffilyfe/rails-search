$(document).ready(function() {
  var xhr;
  new autoComplete({
    selector: 'input[name="core[query]"]',
    source: function(term, response){
      try { xhr.abort(); } catch(e){}
      xhr = $.post('search/autocomplete', { core: {query: term} }, function(data){ response(data); });
    }
  });
});
