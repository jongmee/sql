-- 1. concat, substring, lower와 같은 메소드들을 활용한다.

select concat(NAME, '(', substring(OCCUPATION, 1, 1), ')')
from OCCUPATIONS
order by NAME;
select concat('There are a total of ', count(*), ' ', lower(OCCUPATION), 's.')
from OCCUPATIONS
group by OCCUPATION
order by count(*) asc, OCCUPATION asc;
