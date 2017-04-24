$ -> 
  
  $("body").on "click", ".app-logo .toggl", (e) ->
    e.preventDefault()
    $("body").toggleClass("with_open_aside")
    false
  
  $("body").on "click", ".into-aside-toggl", (e) ->
    e.preventDefault()
    $(@).toggleClass("btn-warning")
    $("body").toggleClass("with_info_aside")
    false
