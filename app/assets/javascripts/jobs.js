// Limits cocoon js to only one nested field
  $(document).on('ready page:load turbolinks:load',function(){

    // match-height plugin
    $('#job-overview.row.match-height').each(function() {
     $(this).find('.card').not('.card .card').matchHeight(); // Not .card .card prevents collapsible cards from taking height
    });


    // Cocoon plugin for limiting Add nested attribs for company to 1
    $('#items a.add_fields').
      data("association-insertion-method", 'append').
      data("association-insertion-node", '#items');
   	$("#items")
        .on('cocoon:before-insert', function () {
            check_to_hide_or_show_add_link();
        })
        .on('cocoon:after-insert', function () {
            check_to_hide_or_show_add_link();
        })
        .on("cocoon:before-remove", function () {
            check_to_hide_or_show_add_link();
        })
        .on("cocoon:after-remove", function () {
            check_to_hide_or_show_add_link();
        });

    check_to_hide_or_show_add_link();

  	function check_to_hide_or_show_add_link() {
  		if ($('.nested-fields').length == 1) {
  			$("a.add_fields").hide();
  		} else {
  			$("a.add_fields").show();
  		}
  	} 
    
  });