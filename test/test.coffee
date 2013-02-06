require ["storage"], (storage) ->
  console.log sessionStorage["hallo"]
  console.log localStorage["hallo"]

  storage.session.set("hallo", "Session Welt")
  storage.local.set("hallo", "Local Welt")

  console.log storage.session.get("hallo"), storage.local.get("hallo")