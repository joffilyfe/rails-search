$(document).ready(function() {
  var xhr;
  new autoComplete({
    selector: 'input[name="core[query]"]',
    minChars: 1,
    cache: false,
    source: function(term, response){
      try { xhr.abort(); } catch(e){}
      xhr = $.post('search/autocomplete', { core: {query: term} }, function(data){ response(data); });
    }
  });
});
