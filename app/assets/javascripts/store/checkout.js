(function($){
  $(document).ready(function(){
    if($('#checkout_form_address').is('*')){

     
			$("#checkout_form_address").validate({
				errorElement:'div',
				rules: {
					"order[bill_address_attributes][firstname]":{
								                  required: true
						},

					"order[bill_address_attributes][lastname]":{
									required:true
					},
					"order[bill_address_attributes][email]":{
									required:true,
									email:true
					},
					
					"order[bill_address_attributes][city]":{
									required:true
					},
					
					"order[bill_address_attributes][state_id]":{
									required:true
					},
					
					"order[bill_address_attributes][zipcode]":{
									required:true
					},
					"order[bill_address_attributes][phone]":{
									required:true
					}
					
					},
				messages: {
					"order[bill_address_attributes][firstname]":{
						required: "Please enter first name"
						},

					
					"order[bill_address_attributes][lastname]":{
									            required: "Please enter last name"
					},
					"order[bill_address_attributes][email]":{
									            required: "Please enter email",
									            email: "Please enter valid email id"

					},
					"order[bill_address_attributes][city]":{
									required: "Please enter city"
					},
					"order[bill_address_attributes][state_id]":{
									required: "Please enter state"
					},
					"order[bill_address_attributes][zipcode]":{
													required: "Please enter zip"
					},
					"order[bill_address_attributes][phone]":{
													required: "Please enter phone"
					}
					
					}
				});
			

      var get_states = function(region){
        country = $('p#' + region + 'country' + ' span#' + region + 'country :only-child').val();
        return state_mapper[country];
      }

      var update_state = function(region) {
        states = get_states(region);

        state_select = $('p#' + region + 'state select');
        state_input = $('p#' + region + 'state input');

        if(states) {
          selected = state_select.val();
          state_select.html('');
          states_with_blank = [["",""]].concat(states);
          $.each(states_with_blank, function(pos,id_nm) {
            var opt = $(document.createElement('option'))
                      .attr('value', id_nm[0])
                      .html(id_nm[1]);
            if(selected==id_nm[0]){
              opt.prop("selected", true);
            }
            state_select.append(opt);
          });
          state_select.prop("disabled", false).show();
          state_input.hide().prop("disabled", true);

        } else {
          state_input.prop("disabled", false).show();
          state_select.hide().prop("disabled", true);
        }

      };

      $('p#bcountry select').change(function() { update_state('b'); });
      $('p#scountry select').change(function() { update_state('s'); });
      update_state('b');
      update_state('s');

      $('input#order_use_billing').click(function() {
        if($(this).is(':checked')) {
          $('#shipping .inner').hide();
          $('#shipping .inner input, #shipping .inner select').prop("disabled", true);
        } else {
          $('#shipping .inner').show();
          $('#shipping .inner input, #shipping .inner select').prop("disabled", false);
          //only want to enable relevant field
          if(get_states('s')){
            $('span#sstate input').hide().prop("disabled", true);
          }else{
            $('span#sstate select').hide().prop("disabled", true);
          }

        }
      }).triggerHandler('click');

      $('form.edit_order').submit(function() {
        $(this).find(':submit, :image').attr('disabled', true).removeClass('primary').addClass('disabled');
      });

    }

    if($('#checkout_form_payment').is('*')){
      // Show fields for the selected payment method
      $("input[type='radio'][name='order[payments_attributes][][payment_method_id]']").click(function(){
        $('#payment-methods li').hide();
        if(this.checked){ $('#payment_method_'+this.value).show(); }
      }).triggerHandler('click');
    }
  });
})(jQuery);
