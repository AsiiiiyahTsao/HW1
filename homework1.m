a1 = xlsread('D:\学习\专业课\信息论\data1.xls');
a2 = xlsread('D:\学习\专业课\信息论\data2.xls'); 

[H_X1, H_Y1, H_XY1, H_X_Y1, H_Y_X1, I_XY1] = entropyCalculation(a1);
[H_X2, H_Y2, H_XY2, H_X_Y2, H_Y_X2, I_XY2] = entropyCalculation(a2);

fprintf('data1:\n');
fprintf('H(X) = %.4f\n', H_X1);
fprintf('H(Y) = %.4f\n', H_Y1);
fprintf('H(X,Y) = %.4f\n', H_XY1);
fprintf('H(X|Y) = %.4f\n', H_X_Y1);
fprintf('H(Y|X) = %.4f\n', H_Y_X1);
fprintf('I(X,Y) = %.4f\n', I_XY1);

fprintf('\ndata2:\n');
fprintf('H(X) = %.4f\n', H_X2);
fprintf('H(Y) = %.4f\n', H_Y2);
fprintf('H(X,Y) = %.4f\n', H_XY2);
fprintf('H(X|Y) = %.4f\n', H_X_Y2);
fprintf('H(Y|X) = %.4f\n', H_Y_X2);
fprintf('I(X,Y) = %.4f\n', I_XY2);