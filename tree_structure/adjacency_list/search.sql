SELECT
  *
FROM
  adjacency_list as al
LEFT OUTER JOIN
  adjacency_list as al2
ON
  al.parent_id = al2.id
LEFT OUTER JOIN
  adjacency_list as al3
ON
  al2.parent_id = al3.id
LEFT OUTER JOIN
  adjacency_list as al4
ON
  al3.parent_id = al4.id