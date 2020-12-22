/* selects the user name age and pledge amount for all pledges alphabetized by name */

SELECT users.name, users.age, SUM(pledges.amount)
FROM users JOIN pledges ON users.id = pledges.user_id 
GROUP BY users.name;


/* selects the titles and amount over goal of all projects that have met their funding goal */

SELECT projects.title, (sum(pledges.amount) – projects.funding_goal) AS amount_left FROM projects JOIN pledges on projects.id = pledges.project_id GROUP BY projects.title HAVING amount_left >= 0;



/* selects user names and amounts of all pledges grouped by name then orders them by the summed amount */

SELECT users.name, SUM(pledges.amount)
FROM users JOIN pledges ON users.id = pledges.user_id
Group by users.name ORDER BY sum(pledges.amount);



/* selects the category names and pledge amounts of all pledges in the music category */

SELECT projects.category, pledges.amount
FROM projects JOIN pledges ON projects.id = pledges.project_id
WHERE projects.category=’music’;



/* selects the category name and the sum total of the all its pledges for the books category */

SELECT projects.category, sum(pledges.amount)
FROM projects JOIN pledges ON projects.id = pledges.project_id
GROUP BY projects.category;
