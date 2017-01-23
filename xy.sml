(* I pledge my Honor that I have not cheated, and will not cheat, on this assignment. Brian McKalip *) 

val poly = [[1], [0, ~2, 0, 0, 3], [], [], [], [], [~5, 0, 7]]

fun printxy nil = print("0\n") |
	printxy poly = 
	let
		val result = ""
		val yIndex = 0
		fun processYs nil   = 0 |
			processYs y::ys = 
				let
					val xIndex = 0
					fun processXs nil   = 0 |
						processXs x::xs = 
							xIndex := xIndex + 1
							
				in
					
				end;
	in
		print(process(poly))
	end;