counter = 0

checkKey = (e) ->
	e = e or window.event
	if e.keyCode >= 65 and e.keyCode <= 90 or e.keyCode == 27
		#t
		if e.keyCode == 84
			if counter == 0 or counter == 2
				counter += 1
		#e
		else if e.keyCode == 69
			if counter == 1
				counter += 1
		#r
		else if e.keyCode == 82
			if counter == 3
				counter += 1
		#i
		else if e.keyCode == 73
			if counter == 4
				counter += 1
		#s
		else if e.keyCode == 83
			if counter == 5
				$(".easteregg").fadeIn("slow")
				$(".overlaybutton").click ->
					$(".easteregg").fadeOut("slow")
					counter = 0
				$(".splat1").delay(800).fadeIn("300")
				$(".splat2").delay(1000).fadeIn("300")
				$(".splat3").delay(1300).fadeIn("300")
				$(".splat4").delay(1500).fadeIn("300")
				$(".splat5").delay(2000).fadeIn("300")
				$(".ball1").delay(2300).show 'bounce', { times: 5 }, 600
				$(".ball2").delay(2400).show 'bounce', { times: 5 }, 600
				$(".ball3").delay(2500).show 'bounce', { times: 5 }, 600
				
		else if e.keyCode == 27
			$(".easteregg").hide("slow")
			counter = 0
		else 
			counter = 0
		return
	return


$ ->
	document.onkeydown = checkKey




