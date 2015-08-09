$(function() {
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
});

function previewImage(e)
{
    var img = $(document.createElement('img'));

    $(img).attr('src', e.target.result);
    $('#preview').append(img);
}
