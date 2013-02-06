require ["storage"], (storage) ->
  console.log "reading directly from local/sessionStorage"
  console.log sessionStorage["hallo"]
  console.log localStorage["hallo"]

  storage.session.set("hallo", "Session Welt")
  storage.local.set("hallo", "Local Welt")

  console.log "reading through the abstraction"
  console.log storage.session.get("hallo")
  console.log storage.local.get("hallo")