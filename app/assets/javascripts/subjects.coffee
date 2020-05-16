# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#subject_postcode").jpostal({
    postcode : [ "#subject_postcode" ],
    address  : {
                  "#subject_prefecture_name" : "%3",
                  "#subject_address_city"    : "%4",
                  "#subject_address_other"   : "%5 %6 %7"
                }
  })
