counter = 0

checkKey = (e) ->
    e = e or window.event
    if e.keyCode >= 65 and e.keyCode <= 90 or e.keyCode == 27
        #m
        if e.keyCode == 77
            if counter == 0
                counter += 1
        #i
        else if e.keyCode == 73
            if counter == 1
                counter += 1
            else if counter == 3
                $(".easteregg").fadeIn("slow")
                $(".overlaybutton").click ->
                    $(".easteregg").fadeOut("slow")
                    counter = 0
                $(".splat1").delay(800).fadeIn("300")
                $(".splat2").delay(900).fadeIn("300")
                setTimeout("$('audio').get(0).play()", 800)
                $(".splat3").delay(1000).fadeIn("300")
                $(".splat4").delay(1100).fadeIn("300")
                $(".splat5").delay(1200).fadeIn("300")
                $(".ball1").delay(1100).show 'bounce', { times: 5 }, 600
                $(".ball2").delay(1200).show 'bounce', { times: 5 }, 600
                $(".ball3").delay(1300).show 'bounce', { times: 5 }, 600
        #r
        else if e.keyCode == 82
            if counter == 2
                counter += 1
            
        else if e.keyCode == 27
            $(".easteregg").hide("slow")
            counter = 0
        else 
            counter = 0
        return
    return


$ ->
    document.onkeydown = checkKey




