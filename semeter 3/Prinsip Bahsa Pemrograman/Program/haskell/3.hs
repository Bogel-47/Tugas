checkEvenOdd x = if even x && x>0 
					then "Genap Positif"
                 else if even x && x<0
                 	then "Genap Negatif"
                 	else if odd x && x>0
                 		then "Ganjil Positif"
                 		else "Ganjil Negatif"
