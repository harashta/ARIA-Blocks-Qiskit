︠05a4c8c4-b80a-415b-a439-deb32d66f6ces︠
sage: import numpy as np
sage: M = MatrixSpace(GF(2), 8, 8)
sage: A = M([1,0,0,0,1,0,1,0, 0,0,0,0,1,0,1,1, 0,1,0,0,0,1,0,0, 0,0,0,0,1,1,1,1, 0,0,1,0,1,0,0,1, 0,0,0,0,0,1,1,0, 0,0,0,1,0,1,0,0, 0,0,0,0,0,0,1,1])

sage: print '\n', '// Original Matrix A //', '\n'
sage: print A.str()

sage: P, L, U = A.LU(pivot='nonzero')

sage: print '\n', '// Permutation Matrix P //', '\n'
sage: print P.str()

sage: print '\n', '// Lower Triangular Matrix L //', '\n'
sage: print L.str()
sage: L1 = np.array(L)
sage: LCNOT = sum(L1 == 1)
sage: print '\n', 'Number of L-CNOT gates = Number of ones = ', LCNOT

sage: print '\n', '// Upper Trinagular Matrix U //', '\n'
sage: print U.str()
sage: L2 = np.array(U)
sage: UCNOT = sum(L2 == 1)
sage: print '\n', 'Number of U-CNOT gates = Number of ones = ', UCNOT

sage: TCNOT = sum(LCNOT + UCNOT - 16)
sage: print '\n', 'Total number of CNOT gates =', TCNOT

︡e2c2dbb8-99e9-4add-9218-9c5fffffc8f1︡{"stdout":"\n// Original Matrix A // \n\n"}︡{"stdout":"[1 0 0 0 1 0 1 0]\n[0 0 0 0 1 0 1 1]\n[0 1 0 0 0 1 0 0]\n[0 0 0 0 1 1 1 1]\n[0 0 1 0 1 0 0 1]\n[0 0 0 0 0 1 1 0]\n[0 0 0 1 0 1 0 0]\n[0 0 0 0 0 0 1 1]\n"}︡{"stdout":"\n// Permutation Matrix P // \n\n"}︡{"stdout":"[1 0 0 0 0 0 0 0]\n[0 0 0 0 1 0 0 0]\n[0 1 0 0 0 0 0 0]\n[0 0 0 0 0 0 1 0]\n[0 0 1 0 0 0 0 0]\n[0 0 0 0 0 1 0 0]\n[0 0 0 1 0 0 0 0]\n[0 0 0 0 0 0 0 1]\n"}︡{"stdout":"\n// Lower Triangular Matrix L // \n\n"}︡{"stdout":"[1 0 0 0 0 0 0 0]\n[0 1 0 0 0 0 0 0]\n[0 0 1 0 0 0 0 0]\n[0 0 0 1 0 0 0 0]\n[0 0 0 0 1 0 0 0]\n[0 0 0 0 0 1 0 0]\n[0 0 0 0 1 1 1 0]\n[0 0 0 0 0 0 1 1]\n"}︡{"stdout":"\nNumber of L-CNOT gates = Number of ones =  11\n"}︡{"stdout":"\n// Upper Trinagular Matrix U // \n\n"}︡{"stdout":"[1 0 0 0 1 0 1 0]\n[0 1 0 0 0 1 0 0]\n[0 0 1 0 1 0 0 1]\n[0 0 0 1 0 1 0 0]\n[0 0 0 0 1 0 1 1]\n[0 0 0 0 0 1 1 0]\n[0 0 0 0 0 0 1 0]\n[0 0 0 0 0 0 0 1]\n"}︡{"stdout":"\nNumber of U-CNOT gates = Number of ones =  17\n"}︡{"stdout":"\nTotal number of CNOT gates = 12\n"}︡{"done":true}
︠f9d8e1c7-e3d7-4ce2-9cd1-d491b84ff9e4︠

︡1ec66ff6-e422-4d96-819d-013d074477e8︡{"done":true}








