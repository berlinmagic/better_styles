$ ->
  
  $("body").on "click", ".main-aside .aside_lnk.toggler, .main-aside .aside_lnk .toggler", (e) ->
    e.preventDefault()
    if $(@).hasClass("aside_lnk")
      $(@).toggleClass("on")
    else
      $(@).closest(".aside_lnk").toggleClass("on")
    false
