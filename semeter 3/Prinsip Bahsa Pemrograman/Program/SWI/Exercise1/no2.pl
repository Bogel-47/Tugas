subdir(documents,private).
subdir(documents,work).
subdir(private,images).
subdir(private,videos).
subdir(work,research).
subdir(work,teaching).

descendant(X,Y) :- subdir(X,Y).
descendant(X,Y) :- subdir(X,Z), subdir(Z,Y).
