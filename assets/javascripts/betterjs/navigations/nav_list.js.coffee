$ -> 
  
  
  $(document).on "click", ".lst_lnk", ->
    # nav = $(@).closest(".nav")
    nav = $(@).closest(".nav_list")
    ul  = $(@).closest("ul")
    li  = $(@).closest("li")
    nav.find("li.active" ).removeClass("active")
    nav.find("li.current").removeClass("current")
    until ul.hasClass("nav_list")
      ul.closest("li").addClass("active")
      ul = ul.closest("li").closest("ul")
    li.addClass("current")
    li.addClass("active")
    $(@).blur()
    return false if $(@).attr("href") == "#"
  
  