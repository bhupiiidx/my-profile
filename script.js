    $.getJSON("https://api.ipify.org?format=json",
                    function(data) {
      $("#getip").html(data.ip);
    })