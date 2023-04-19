clear all
clc
close all
%main func

%----------------------Bai 10---------------------------
%a
fprintf(['Input của hàm là p_t (giá trị gần đúng), a_EP: sai số tuyệt đối, p_star : Giá trị chính xác.\n' ...
    'Output : là một biến Boolean ứng với trường hợp phù hợp/không phù hợp.\n']);

%b
p_t = 2;
a_Ep = 0.5 ;
p_star = 3;

is_valid = check_p_star (p_t,a_Ep, p_star)

%c
p_t = 425;
a_EP =15;
p_star = 438;

is_valid = check_p_star(p_star , a_Ep, p_star)


%--------------Bai 11----------------

%a 
fprintf([ 'Input của function này sẽ bao gồm p_t (giá trị gần đúng), r_Ep (sai số tương đối) và p_star (giá trị chính xác cần kiểm tra).\n'...
   'Output sẽ là một biến boolean, với giá trị True nếu giá trị chính xác nằm trong khoảng [p_L, p_R] và False nếu không.']);
  
%b
check_p_star_r(200,0.05,218)
check_p_star_r(5.897,0.02,6.035)
check_p_star_r(2300,0.1,2545)
check_p_star_r(35.89,0.03,37.54)
%c
check_p_star_r(135,0.03,138)
%d
check_p_star_r(42.5,0.05,43.789)

%-----------------BAI 12 ----------------------
syms x1 x2 x3 
f_1= x1 + x2*x3;
vars=[x1,x2,x3];
vals = [5,3,7];
a_vals = [0.03,0.06,0.04];

[a_Ep,r_Ep] = error_calc(f_1,vars,vals,a_vals);




%%%%%%%%%%%%%%%%%%%%%INSERT INTO TABLE%%%%%%%%%%%%%%%%%%%%%%%%
%d 
syms x1 x2 x3
f_1 = x1 + x2*x3;
f_2 = x1^2 + x2^2 + x3^2;

vars = [x1, x2, x3];

vals_f1 = [5, 3, 7];
a_vals_f1 = [0.03, 0.06, 0.04];

vals_f2 = [1, 2, 3];
a_vals_f2 = [0.01, 0.02, 0.03];



% Tạo bảng kết quả với số hàng là số hàm số cần tính sai số và số cột là 3
m = 5; % số hàng
n = 3; % số cột
table = zeros(m, n); % tạo bảng với giá trị ban đầu bằng 0

% Danh sách tên hàm số
functions = cellstr(['f1'; 'f2'; 'f3'; 'f4'; 'f5']);

% Lặp qua từng hàm số và tính sai số tuyệt đối và tương đối
k = 1;
for f = [f_1, f_2, f_3, f_4, f_5]
    if k == 1
        vals = vals_f1;
        a_vals = a_vals_f1;
    elseif k == 2
        vals = vals_f2;
        a_vals = a_vals_f2;
    
    [a_Ep, r_Ep] = error_calc(f, vars, vals, a_vals);
    table(k, 1) = a_Ep;
    table(k, 2) = r_Ep;
    k = k + 1;
end

% Thêm thông tin về hàm số vào bảng
table = [functions, num2cell(table)];

% Hiển thị bảng kết quả
disp('Hàm số | Sai số tuyệt đối | Sai số tương đối');
disp(table);

