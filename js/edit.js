$(document).ready(function(){
  $("#nusubmit").on('click', function() {
    if (confirm("Click Cancel to Edit Values Before Submitting and Click Ok to Submit !!.  Note You Won't Be able to Edit It Afterwards") == true){
      $("#nu_form").submit();
    }
  });
})
