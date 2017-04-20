@to_currency = ( number, delimiter = ",", seperator = "." ) ->
  unless isNaN number
    nmbr = (Math.round( parseFloat( number ) * 100 ) / 100).toFixed(2)
  else
    nmbr = (0).toFixed(2)
  if nmbr >= 1000.0
    end = "#{nmbr}".split(".")[1]
    "#{ (parseInt(nmbr) / 1000).toFixed(3).replace(/\./, seperator) }#{delimiter}#{end}"
  else
    "#{nmbr}".replace(/\./, delimiter)

@to_euro = (number) ->
  "#{to_currency(number)} €"

@to_dollar = (number) ->
  "$ #{to_currency( number, ".", "," )}"


@getInt = (number = 0) ->
  parseInt( "#{number}".replace(/^[^\d\.]*/, "") ) || 0

@getFloat = (number = 0.0) ->
  parseFloat( "#{number}".replace(',','.').replace(/^[^\d\.]*/, "") ) || 0.0


@btricon = (icn, cls = "" ) ->
  "<i class='bettericon-#{ icn }#{ if cls != "" then " #{cls}" else "" }'></i>"

@olicon = (icn, cls = "" ) ->
  "<i class='olicons-#{ icn }#{ if cls != "" then " #{cls}" else "" }'></i>"


##
## Usage:
##   $(".bla").text().chunk(4).join(" ")
##   1234 5678 9012 ...
## 
String::chunk = (n = 3) ->
  space = []
  i = 0
  len = @length
  while i < len
    space.push @substr(i, n)
    i += n
  space

String::chunked = ( n = 3, spc = " ") ->
  @chunk(n).join(spc)


# little string helper
# http://www.oct4th.com/2013/03/15/titleize-for-javascript/
String::titleize = ->
  words = @split(' ')
  array = []
  i = 0
  while i < words.length
    array.push words[i].charAt(0).toUpperCase() + words[i].toLowerCase().slice(1)
    ++i
  array.join ' '


if typeof String::trim == 'undefined'
  String::trim = ->
    String(this).replace /^\s+|\s+$/g, ''



$ ->
  
  # replace komma with dot (german uses komma instead of dot)
  $("body").on "keyup", "input.number_field", ->
    if jQuery(@).val().indexOf(",") isnt -1
      jQuery(@).val( jQuery(@).val().replace(',','.')  )