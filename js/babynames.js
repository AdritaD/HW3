
function loadData()
{

    $.ajax
    ({
        url: 'babynames.php',
        type: 'POST',
        data: {
            year: $('#year').val(),
            gender: $('#gender').val(),
        },
        success:function(response){
           alert("ok");
           $('#result').html(response);
        },
        error: function(){alert("Error loading file");}

    });
   
}; 