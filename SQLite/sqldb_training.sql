


--------------------------------------------------------
--SELECT first_name AS FirstName, UPPER(last_name) AS Surname
--FROM people

--SELECT *
--FROM people
--WHERE state_code = (SELECT state_abbrev FROM states WHERE state_name='Kansas');

--SELECT first_name, COUNT(*), SUM(quiz_points), AVG(quiz_points)
--FROM people
--GROUP BY first_name
--ORDER BY COUNT(*) DESC;
--------------------------------------------------------
--SELECT state_code, quiz_points, COUNT(quiz_points)
--FROM people
--GROUP BY state_code, quiz_points;

--------------------------------------------------------
--Outer Join Example
--right
--SELECT DISTINCT(people.state_code), states.state_abbrev
--FROM states --left table
--RIGHT JOIN people ON people.state_code IS states.state_abbrev --right join will keep all the results (even with no match) from the right table (people on this case)
--ORDER BY people.state_code;
--left
--full join will keep the results with/without match from both tables

--(Inner) Join Example
--SELECT ppl.first_name, ppl.state_code, st.division
--FROM people ppl, states st
--JOIN states ON ppl.state_code=st.state_abbrev;     
--------------------------------------------------------
--SELECT COUNT(*)
--FROM people
--WHERE first_name LIKE 'ryan'
--LENGTH()
--DISTINCT()
--Obs: função select count vai determinar em qual coluna os dados serão procurados, com o * é possível procurar por todo bd 

--SELECT state_code, first_name
--FROM people
--ORDER BY state_code DESC;

--SELECT *
--FROM people
--WHERE first_name LIKE 'c%'
--LIMIT 4
--OFFSET 48;
--Obs: O offset será aplicado na lista filtrada e não na lista completa


--SELECT *
--FROM people
--WHERE first_name LIKE 'Cl%';

--SELECT shirt_or_hat, state_code, first_name, last_name
--FROM people
--WHERE (state_code IS 'CA' OR state_code != 'NY') AND shirt_or_hat='hat';
----------------------------------------------
--SELECT * FROM people WHERE state_code = 'CA';

--SELECT * FROM people;
--SELECT first_name FROM people;
--SELECT city, last_name FROM people;