-- 1. Root Node는 Parent가 null이다.
-- 2. Leaf Node는 본인을 Parent로 갖는 Node가 없다.
-- 3. 본인을 Parent로 갖는 Node는 여럿 있을 수 있기 때문에 distinct를 사용한다.

select
    distinct(A.N),
    case
        when A.P is null then 'Root'
        when B.P is null then 'Leaf'
        else 'Inner'
    end as 'TYPE'
from BST as A left outer join BST as B on A.N = B.P
order by A.N;
