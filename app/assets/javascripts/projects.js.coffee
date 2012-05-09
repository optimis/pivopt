# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
$ ->
  $("tr.story_row").addClass("ShowType").addClass("ShowState")
  renderColor()

  $("#sel_type").change( ->
    tr_row = $("tr.story_row")
    tr_row.removeClass("ShowType")
    switch $(this).val()
      when "all" then tr_row.addClass("ShowType")
      when "feature" then tr_row.filter(".feature").addClass("ShowType")
      when "bug" then tr_row.filter(".bug").addClass("ShowType")
      when "chore" then tr_row.filter(".chore").addClass("ShowType")
    renderColor()
  )

  $("#sel_state").change( ->
    tr_row = $("tr.story_row")
    tr_row.removeClass("ShowState")
    switch $(this).val()
      when "all" then tr_row.addClass('ShowState')
      when "finish" then tr_row.filter('.finish').addClass("ShowState")
      when "delivered" then tr_row.filter(".delivered").addClass("ShowState")
      when "accepted" then tr_row.filter(".accepted").addClass("ShowState")
    renderColor()
  )

renderColor = ->
  $("tr.story_row").removeClass("even")
  $("tr.story_row:visible:even").addClass("even")


