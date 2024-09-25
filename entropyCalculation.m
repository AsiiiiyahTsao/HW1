function [H_X, H_Y, H_XY, H_X_Y, H_Y_X, I_XY] = entropyCalculation(a)

    a = a / sum(a(:));

    px = sum(a, 2);
    py = sum(a, 1);

    px = px(px > 0);
    py = py(py > 0);
    a_no0 = a(a > 0);

    H_X = -sum(px .* log2(px));
    H_Y = -sum(py .* log2(py));
    H_XY = -sum(a_no0 .* log2(a_no0));
    H_X_Y = H_XY - H_Y;
    H_Y_X = H_XY - H_X;
    I_XY = H_X + H_Y - H_XY;

end