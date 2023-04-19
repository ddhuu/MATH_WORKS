function [a_Ep , r_Ep] =  error_calc(y,vars,vals,a_vals)
%y : Hàm số
%vars : Danh sách các biến 
%val: giá trị của các biến tương ứng
%a_vals: sai số tuyệt đối 


% Tính giá trị gần đúng y_t

y_t = subs(y,vars,vals);

% Tính đạo hàm riêng theo từng biến 

for i= 1: length(vars)
  d_y = diff(y, vars(i));
  % Tính giá trị gần đúng của các đạo hàm 
  d_y(i) = subs(d_y,vars,a_vals);

end

% Tính sai số tuyệt đối 

a_Ep = sum(abs(d_y).*a_vals)

% Tính sai số tương đối 
 r_Ep = a_Ep / abs(y_t)


end 

