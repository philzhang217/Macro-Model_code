function [residual, g1, g2, g3] = soe1_dynamic(y, x)
% 
% Status : Computes dynamic model for Dynare
% 
% Warning : this file is generated automatically by Dynare
%   from model file (.mod)

global M_ it_
if M_.param_nbr > 0
  params =  M_.params;
end

	% 
	% Model equations
	% 

residual = zeros(24, 1);
lhs =y(31);
rhs =params(3)*y(15)+params(4)*y(35)+x(it_, 2);
residual(1)= lhs-rhs;
lhs =y(31);
rhs =y(32)-y(30);
residual(2)= lhs-rhs;
lhs =y(32);
rhs =y(16)+y(44)+x(it_, 3);
residual(3)= lhs-rhs;
lhs =y(44);
rhs =(1-params(16))*y(25)+x(it_, 9);
residual(4)= lhs-rhs;
lhs =y(36);
rhs =y(35)+y(37);
residual(5)= lhs-rhs;
lhs =y(39);
rhs =params(5)*params(6)+(1-params(5))*y(23)+x(it_, 5);
residual(6)= lhs-rhs;
lhs =y(37);
rhs =y(21)+y(39)/4+x(it_, 7);
residual(7)= lhs-rhs;
lhs =y(35);
rhs =params(7)*y(19)+params(8)*y(53)-params(9)*(y(13)-y(14))-params(18)*(0.04*(y(27)+y(1))+0.08*(y(12)+y(2))+0.12*(y(10)+y(3))+0.16*(y(8)+y(4))+0.2*y(5))+x(it_, 6);
residual(8)= lhs-rhs;
lhs =y(50);
rhs =x(it_, 10);
residual(9)= lhs-rhs;
lhs =y(48);
rhs =x(it_, 10)+y(49)-params(17)*y(56);
residual(10)= lhs-rhs;
lhs =y(49);
rhs =y(26)+x(it_, 11);
residual(11)= lhs-rhs;
lhs =y(45);
rhs =4*(y(36)-y(20));
residual(12)= lhs-rhs;
lhs =y(46);
rhs =y(36)-y(6);
residual(13)= lhs-rhs;
lhs =y(47);
rhs =y(37)-y(7);
residual(14)= lhs-rhs;
lhs =y(33);
rhs =params(10)*y(55)+(1-params(10))*y(18)+y(19)*params(11)-x(it_, 8);
residual(15)= lhs-rhs;
lhs =y(38);
rhs =params(12)*y(22)+(1-params(12))*(y(29)+y(54)+params(13)*(y(54)-params(15))+y(35)*params(14))+x(it_, 4);
residual(16)= lhs-rhs;
lhs =y(28);
rhs =y(38)-y(52);
residual(17)= lhs-rhs;
lhs =y(40);
rhs =y(24)+y(33)/4;
residual(18)= lhs-rhs;
lhs =y(29);
rhs =params(1)*params(2)+y(14)*(1-params(1))+x(it_, 1);
residual(19)= lhs-rhs;
lhs =y(34);
rhs =(y(33)+y(17)+y(11)+y(9))/4;
residual(20)= lhs-rhs;
lhs =y(41);
rhs =y(55);
residual(21)= lhs-rhs;
lhs =y(43);
rhs =y(52);
residual(22)= lhs-rhs;
lhs =y(42);
rhs =y(53);
residual(23)= lhs-rhs;
lhs =y(51);
rhs =params(18)*(0.04*(y(27)+y(1))+0.08*(y(12)+y(2))+0.12*(y(10)+y(3))+0.16*(y(8)+y(4))+0.2*y(5));
residual(24)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(24, 67);

	% 
	% Jacobian matrix
	% 

  g1(1, 31)=  g1(1, 31)+1;
  g1(1, 15)=  g1(1, 15)+(-params(3));
  g1(1, 35)=  g1(1, 35)+(-params(4));
  g1(1, 58)=  g1(1, 58)+(-1);
  g1(2, 31)=  g1(2, 31)+1;
  g1(2, 32)=  g1(2, 32)+(-1);
  g1(2, 30)=  g1(2, 30)+1;
  g1(3, 32)=  g1(3, 32)+1;
  g1(3, 16)=  g1(3, 16)+(-1);
  g1(3, 44)=  g1(3, 44)+(-1);
  g1(3, 59)=  g1(3, 59)+(-1);
  g1(4, 44)=  g1(4, 44)+1;
  g1(4, 25)=  g1(4, 25)+(-(1-params(16)));
  g1(4, 65)=  g1(4, 65)+(-1);
  g1(5, 35)=  g1(5, 35)+(-1);
  g1(5, 36)=  g1(5, 36)+1;
  g1(5, 37)=  g1(5, 37)+(-1);
  g1(6, 39)=  g1(6, 39)+1;
  g1(6, 23)=  g1(6, 23)+(-(1-params(5)));
  g1(6, 61)=  g1(6, 61)+(-1);
  g1(7, 37)=  g1(7, 37)+1;
  g1(7, 39)=  g1(7, 39)+(-0.25);
  g1(7, 21)=  g1(7, 21)+(-1);
  g1(7, 63)=  g1(7, 63)+(-1);
  g1(8, 35)=  g1(8, 35)+1;
  g1(8, 19)=  g1(8, 19)+(-params(7));
  g1(8, 53)=  g1(8, 53)+(-params(8));
  g1(8, 13)=  g1(8, 13)+params(9);
  g1(8, 14)=  g1(8, 14)+(-params(9));
  g1(8, 27)=  g1(8, 27)+params(18)*0.04;
  g1(8, 1)=  g1(8, 1)+params(18)*0.04;
  g1(8, 12)=  g1(8, 12)+params(18)*0.08;
  g1(8, 2)=  g1(8, 2)+params(18)*0.08;
  g1(8, 10)=  g1(8, 10)+params(18)*0.12;
  g1(8, 3)=  g1(8, 3)+params(18)*0.12;
  g1(8, 8)=  g1(8, 8)+params(18)*0.16;
  g1(8, 4)=  g1(8, 4)+params(18)*0.16;
  g1(8, 5)=  g1(8, 5)+params(18)*0.2;
  g1(8, 62)=  g1(8, 62)+(-1);
  g1(9, 50)=  g1(9, 50)+1;
  g1(9, 66)=  g1(9, 66)+(-1);
  g1(10, 66)=  g1(10, 66)+(-1);
  g1(10, 48)=  g1(10, 48)+1;
  g1(10, 49)=  g1(10, 49)+(-1);
  g1(10, 56)=  g1(10, 56)+params(17);
  g1(11, 49)=  g1(11, 49)+1;
  g1(11, 26)=  g1(11, 26)+(-1);
  g1(11, 67)=  g1(11, 67)+(-1);
  g1(12, 36)=  g1(12, 36)+(-4);
  g1(12, 45)=  g1(12, 45)+1;
  g1(12, 20)=  g1(12, 20)+4;
  g1(13, 36)=  g1(13, 36)+(-1);
  g1(13, 46)=  g1(13, 46)+1;
  g1(13, 6)=  g1(13, 6)+1;
  g1(14, 37)=  g1(14, 37)+(-1);
  g1(14, 47)=  g1(14, 47)+1;
  g1(14, 7)=  g1(14, 7)+1;
  g1(15, 19)=  g1(15, 19)+(-params(11));
  g1(15, 33)=  g1(15, 33)+1;
  g1(15, 55)=  g1(15, 55)+(-params(10));
  g1(15, 18)=  g1(15, 18)+(-(1-params(10)));
  g1(15, 64)=  g1(15, 64)+1;
  g1(16, 35)=  g1(16, 35)+(-((1-params(12))*params(14)));
  g1(16, 38)=  g1(16, 38)+1;
  g1(16, 22)=  g1(16, 22)+(-params(12));
  g1(16, 29)=  g1(16, 29)+(-(1-params(12)));
  g1(16, 54)=  g1(16, 54)+(-((1-params(12))*(1+params(13))));
  g1(16, 60)=  g1(16, 60)+(-1);
  g1(17, 38)=  g1(17, 38)+(-1);
  g1(17, 28)=  g1(17, 28)+1;
  g1(17, 52)=  g1(17, 52)+1;
  g1(18, 33)=  g1(18, 33)+(-0.25);
  g1(18, 40)=  g1(18, 40)+1;
  g1(18, 24)=  g1(18, 24)+(-1);
  g1(19, 14)=  g1(19, 14)+(-(1-params(1)));
  g1(19, 29)=  g1(19, 29)+1;
  g1(19, 57)=  g1(19, 57)+(-1);
  g1(20, 33)=  g1(20, 33)+(-0.25);
  g1(20, 34)=  g1(20, 34)+1;
  g1(20, 17)=  g1(20, 17)+(-0.25);
  g1(20, 11)=  g1(20, 11)+(-0.25);
  g1(20, 9)=  g1(20, 9)+(-0.25);
  g1(21, 55)=  g1(21, 55)+(-1);
  g1(21, 41)=  g1(21, 41)+1;
  g1(22, 52)=  g1(22, 52)+(-1);
  g1(22, 43)=  g1(22, 43)+1;
  g1(23, 53)=  g1(23, 53)+(-1);
  g1(23, 42)=  g1(23, 42)+1;
  g1(24, 27)=  g1(24, 27)+(-(params(18)*0.04));
  g1(24, 1)=  g1(24, 1)+(-(params(18)*0.04));
  g1(24, 12)=  g1(24, 12)+(-(params(18)*0.08));
  g1(24, 2)=  g1(24, 2)+(-(params(18)*0.08));
  g1(24, 10)=  g1(24, 10)+(-(params(18)*0.12));
  g1(24, 3)=  g1(24, 3)+(-(params(18)*0.12));
  g1(24, 8)=  g1(24, 8)+(-(params(18)*0.16));
  g1(24, 4)=  g1(24, 4)+(-(params(18)*0.16));
  g1(24, 5)=  g1(24, 5)+(-(params(18)*0.2));
  g1(24, 51)=  g1(24, 51)+1;
end