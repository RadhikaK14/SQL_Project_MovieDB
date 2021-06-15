USE project_moviedb;

-- JOINS: List of companies that has produced film of highest revenue/profit?
CREATE VIEW company_profit AS
(SELECT p.company_name,
		m.movie_name, 
		(m.revenue_in_millions - m.budget_in_millions) as Profit
FROM movies m
JOIN production_house ph
	ON ph.movie_id = m.movie_id
JOIN production p
	ON p.production_id = ph.prod_id
ORDER BY Profit DESC);