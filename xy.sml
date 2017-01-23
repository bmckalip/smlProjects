(* I pledge my Honor that I have not cheated, and will not cheat, on this assignment. Brian McKalip *) 

val poly = [[1], [0, ~2, 0, 0, 3], [], [], [], [], [~5, 0, 7]]

fun printxy nil = print("0\n") |
	printxy poly = 
	let
		fun atoi i = if i < 0 then "-" Int.ToString(~i) else Int.toString (i)
		val result = ""
		val yIndex = 0
		fun processYs nil = 0 |
			processYs 0   = yDegree := yDegree + 1 |
			processYs y::ys = 
			let
				val result = ""
				val xDegree = 0
				fun processXs nil = 0 |
					processXs 0   = xDegree := xDegree + 1 |
					processXs x::xs = 
						(* TODO: add edge case checking for terms *)
						result := result ^ atoi(x) ^ "x^" ^ atoi(xDegree) ^ "y^" ^ atoi(yDegree) ^ " + "
						xDegree := xDegree + 1 
						result := result
						processXs(xs)
			in
				yDegree := yDegree + 1
				processYs(ys)
			end;
	in
		print(process(poly))
	end;