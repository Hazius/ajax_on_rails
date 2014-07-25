gv_min = 10
gv_max = 20

$(document).ready ->
    
  $( ->
    $("#slider-range-min").slider({
      range: "min",
      value: gv_min,
      min: 1,
      max: gv_max,
      slide: ( event, ui ) -> $( "#amount" ).val( ui.value )      
    })
    $("#amount" ).val( $( "#slider-range-min" ).slider( "value" ))
    $("#slider_min_value" ).html( gv_min.toString() )
    $("#slider_max_value" ).html( gv_max.toString() )
  )

  $("#bt_make_the_order").click ->
    $(@).css("display", "none")
    $("#waiting").css("display", "block")
