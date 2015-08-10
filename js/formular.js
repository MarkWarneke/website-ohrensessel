$(document).ready(function() {
  $('#file-upload').change(function(e) {
      if (this.files !== 'undefined' && typeof FileReader !== 'undefined') {
          for (var f = 0; f < this.files.length; f++) {
              var file = this.files[f];
              var reader = new FileReader();

              if (!/image\/(jpeg|jpg|png|gif)/.test(file.type)) {
                  alert('Dateityp "' + file.type + '" wird nicht unterstützt.');
                  continue;
              }

              $(reader).load(previewImage);

              reader.readAsDataURL(file);
          }
      }
  });

  // Test for placeholder support
  $.support.placeholder = (function(){
      var p = document.createElement('input');
      return 'placeholder' in p;
  })();

  if($.support.placeholder) {
    $('.form-group').each(function(){
      $(this).addClass('js-hide-label');
    });  
  }

  $('.form-group').find('input, textarea').on('keyup blur focus', function(e){
     
    // Cache our selectors
    var $this = $(this),
        $parent = $this.parent();
 
    // Add or remove classes
    if (e.type == 'keyup') {
      if( $this.val() == '' ) {
          $parent.addClass('js-hide-label'); 
      } else {
          $parent.removeClass('js-hide-label');   
      }
    } 
    else if (e.type == 'blur') {
      if( $this.val() == '' ) {
        $parent.addClass('js-hide-label');
      } 
      else {
        $parent.removeClass('js-hide-label').addClass('js-unhighlight-label');
      }
    } 
    else if (e.type == 'focus') {
      if( $this.val() !== '' ) {
        $parent.removeClass('js-unhighlight-label');
      }
    }
  });

  $("form").submit(function(e) {
    $('p').remove();
    var ref = $(this).find("[required]");

    $(ref).each(function(){
        if ( $(this).val() == '' )
        {   
            var prevValue = $(this).val();
            $(this).addClass('js-validation-input');
            e.preventDefault();
            return false;
        }
    });  return true;
  });

  $("#myBtn").click(function(){
    $("#myModal").modal();
  });

});
     
//Erzeugt die Bildvorschau   
function previewImage(e)
{
    var img = $(document.createElement('img'));
    $('#preview img').remove();
    $(img).attr('src', e.target.result).width('450px').height('600px');
    $('#preview').append(img);
}
