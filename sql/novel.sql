SELECT
novel_id,
slug,
((n2.author_count / 24) + 0.2583) AS infoStat
FROM novel n,
(SELECT
author,
count( author ) AS author_count
FROM novel
GROUP BY author) AS n2
WHERE n.author = n2.author;
