var gv_min = 10;
var gv_max = 20;

$(document).ready(function() {
    $(function() {
        $("#slider-range-min").slider({
            range: "min",
            value: gv_min,
            min: 1,
            max: gv_max,
            slide: function( event, ui ) {
                $( "#amount" ).val( ui.value );
            }
        });
        $( "#amount" ).val( $( "#slider-range-min" ).slider( "value" ) );
        $( "#slider_min_value" ).html( gv_min.toString() );
        $( "#slider_max_value" ).html( gv_max.toString() );
    });
});

$(document).ready(function() {
    $("#bt_make_the_order").click(function () {
      $("#waiting").css("display", "block");
    });
});