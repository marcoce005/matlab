P = [-28; 20; -2];

A1 = [-2, 6, 24;
       6, -11, -58];

b1 = [128; -272];

A2 = [-13, 60, 327;
      -112, 217, 1112];

b2 = [1498; 5252];

check_r1 = A1 * P == b1

check_r2 = A2 * P == b2
