function bytes_to_size(bytes){
	var sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
	if (bytes == 0) return '0 Bytes';
	var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
	return Math.round(bytes / Math.pow(1024, i), 2) + ' ' + sizes[i];
}

function OnProgress(event, position, total, percentComplete)
{
    $('.progressbox').fadeIn(300);
    $('.statustxt').html(percentComplete + '%'); 
    if(percentComplete>50)
        {
            $('.statustxt').css('color','#000');
        }
}