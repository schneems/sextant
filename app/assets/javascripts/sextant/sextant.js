function each(elems, func) {
  if (!elems instanceof Array) { elems = [elems]; }
  for (var i = elems.length; i--; ) {
    func(elems[i]);
  }
}

function setValOn(elems, val) {
  each(elems, function(elem) {
    elem.innerHTML = val;
  });
}

function onClick(elems, func) {
  each(elems, function(elem) {
    elem.onclick = func;
  });
}

// Enables functionality to toggle between `_path` and `_url` helper suffixes
function setupRouteToggleHelperLinks() {
  var toggleLinks = document.querySelectorAll('#route_table [data-route-helper]');
  onClick(toggleLinks, function(){
    var helperTxt   = this.getAttribute("data-route-helper");
    var helperElems = document.querySelectorAll('[data-route-name] span.helper');
    setValOn(helperElems, helperTxt);
  });
}