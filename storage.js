
define("storage", [], function() {
  var create;
  create = function(type) {
    var backend;
    backend = window["" + type + "Storage"];
    if (!(backend != null)) {
      backend = {};
    } else {
      try {
        backend.setItem("foo", "bar");
        backend.removeItem("foo");
      } catch (error) {
        backend = {};
      }
    }
    return {
      set: function(key, value) {
        return backend[key] = value;
      },
      get: function(key) {
        return backend[key];
      }
    };
  };
  return {
    session: create("session"),
    local: create("local")
  };
});
