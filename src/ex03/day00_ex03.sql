SELECT
    DISTINCT person_id
FROM
    person_visits
WHERE
    (
        visit_date BETWEEN '2022-01-06'
        AND '2022-01-09'
    )
    OR pizzeria_id = '2'
ORDER BY
    person_id DESC;

/* (скобки в строке 3 для приоритета выполнения условия) 
 * в данном случае никакой разницы в выводе не будет, но в дальнейшем 2 может примениться ко всем данным
 */