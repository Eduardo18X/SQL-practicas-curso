-- Pregunta 1: Actor o actriz con más series
SELECT a.nombre, COUNT(act.serie_id) AS total_series
FROM actuaciones act
JOIN actores a ON act.actor_id = a.id_actor
GROUP BY a.nombre
ORDER BY total_series DESC
LIMIT 1;

-- Pregunta 2: Serie con mejor rating promedio
SELECT s.titulo, ROUND(AVG(e.rating_imdb), 2) AS rating_promedio
FROM episodios e
JOIN series s ON e.serie_id = s.serie_id
GROUP BY s.titulo
ORDER BY rating_promedio DESC
LIMIT 1;

-- Pregunta 3: Episodio más largo
SELECT titulo, duracion
FROM episodios
ORDER BY duracion DESC
LIMIT 1;
