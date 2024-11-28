-- 1. 올림은 ceil 메소드를 사용한다.
-- 2. 숫자에서 0을 없애고 평균을 계산하는 것은 문자열로 변환하고 0을 빈 문자로 replace한 후 다시 정수로 바꿔 평균을 계산한다.
-- 3. 이때 문자열을 정수로 변환할 때 unsigned 혹은 signed로 명확히 지정해줘야 한다.

select ceil(avg(Salary) - avg(convert(replace(convert(Salary, char), '0', ''), unsigned)))
from EMPLOYEES
