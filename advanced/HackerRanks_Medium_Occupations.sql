-- 1. 직업별로 파티셔닝하고 그 안에서 row_number로 순번을 매긴다. (같은 직업 안에서는 이름으로 정렬 됨)
-- 2. row_number로 grouping한다.
-- 3. 정해진 순서로 컬럼을 지정해야 하는데 if문을 쓰며 group by 때문에 어쩔 수 없이 집계 함수 max를 사용한다. ⭐️

select
    max(if(Occupation = 'Doctor', NAME, null)) as 'Doctor',
    max(if(Occupation = 'Professor', NAME, null)) as 'Professor',
    max(if(Occupation = 'Singer', NAME, null)) as 'Singer',
    max(if(Occupation = 'Actor', NAME, null)) as 'Actor'
from (select *, row_number() over(partition by Occupation order by Name) as num from OCCUPATIONS) as rn
group by rn.num
