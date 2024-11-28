-- 1. 재귀 CTE를 활용한다.
-- 2. with는 CTE(Common Table Expression)을 정의할 때 사용하는 키워드다.
-- 3. union은 두 개 이상의 select 결과 결합할 때 사용한다. all은 중복된 값을 포함한다.

with recursive start_numbser as (
    select 20 as num
    union all
    select num - 1
    from start_numbser
    where num > 1
)

select repeat('* ', num)
from start_numbser
