define "storage", [], ->
  create = (type) ->
    backend = window["#{type}Storage"]
    if not backend?
      backend = {}
    else
      try
        backend.setItem "foo", "bar"
        backend.removeItem "foo"
      catch error
        backend = {}
    return {
      set: (key, value) ->
        backend[key] = value
      get: (key) ->
        backend[key]
    }

  return {
    session: create "session"
    local: create "local"
  }