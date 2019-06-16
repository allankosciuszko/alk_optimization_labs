


costs = c(1.1, 5.1, 3.0, 5.9, 8.8	)

A_elements = c(1,1,0,0,0)
B_elements = c(1,1,0,0,0)
C_elements = c(0,4,2,5,8)

simplex(a = costs,
        A1 = rbind(A_elements, B_elements),
        b1 = c(800, 1000),
        A2 = rbind(C_elements),
        b2 = c(800),
        maxi = FALSE
)

