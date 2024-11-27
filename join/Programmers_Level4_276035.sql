-- 1. 비트로 사용할 수 있는 기술이 표시되어 있으므로 & 연산으로 join한다.
-- 2. 한 명의 개발자가 여러 기술을 사용할 수 있으므로 distinct를 걸어준다.

select distinct(ID), EMAIL, FIRST_NAME, LAST_NAME from DEVELOPERS as dev
join SKILLCODES as skill on dev.SKILL_CODE & skill.CODE != 0
where skill.CATEGORY = 'Front End'
order by ID
