(function() {

  require(["storage"], function(storage) {
    console.log(sessionStorage["hallo"]);
    console.log(localStorage["hallo"]);
    storage.session.set("hallo", "Session Welt");
    storage.local.set("hallo", "Local Welt");
    return console.log(storage.session.get("hallo"), storage.local.get("hallo"));
  });

}).call(this);
