currentPath = null

navigate = ->
  path = window.location.hash.replace(/#/, "")
  if path != currentPath
    if path != ""
      $("#app_content").html( $(renderView( path )) )
    else
      $("#app_content").html( $(renderView( "app/start" )) )
    if path.match(/icons\/.*/)
      console?.log? "navigate to: icon-path =>", path
      clip = new ZeroClipboard($(".icon_sample .sample_name"))
      clip.on "copy", (event) ->
        event.clipboardData.setData( "text/plain", $(event.target).text() )
  lnk = $(".app_lnk[data-target='#{path}']").closest("li")
  nav = lnk.closest(".nav_list")
  nul = lnk.closest("ul")
  nav.find("li.active").removeClass("active")
  nav.find("li.current").removeClass("current")
  if nav == nul
    lnk.addClass("active")
  else
    nul.closest("li").addClass("active")
  lnk.addClass("current")
  $("body").removeClass("aside-on")
  $("#current-view-name").text( lnk.text() )
  currentPath = path
  console?.log? "navigate to:", path

$ ->

  navigate()
  
  $("body").on "click", ".app_lnk", ->
    path = $(@).attr("data-target")
    path = "" if path == undefined
    # $("#app_content").html( $(renderView( path )) )
    window.location.hash = path
  
  $(window).on 'popstate', ->
    console.log "Popstate", window.location.pathname
    navigate()
  
