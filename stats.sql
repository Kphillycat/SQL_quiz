SELECT u.name, (sum(correct) / count(correct) * 100) as grade
FROM users u
JOIN answers a on u.id = a.user_id
Join choices c on a.choice_id = c.id
GROUP BY u.name
ORDER BY sum(correct)