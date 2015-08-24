# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

previewImage = (e) ->
  img = $(document.createElement("img"))
  $(img).attr "src", e.target.result
  $("#preview").append img
$ ->
  $("#file-upload").change (e) ->
    if @files isnt "undefined" and typeof FileReader isnt "undefined"
      f = 0

      while f < @files.length
        file = @files[f]
        reader = new FileReader()
        unless /image\/(jpeg|jpg|png|gif)/.test(file.type)
          alert "Dateityp \"" + file.type + "\" wird nicht unterstützt."
          continue
        $(reader).load previewImage
        reader.readAsDataURL file
        f++


$(document).ready ->
  $(".owl-carousel").owlCarousel()
