SELECT
    (
        SELECT
            name
        FROM
            person
        WHERE
            person.id = visit_date.person_id
    ) AS person_name,
    (
        SELECT
            name
        FROM
            pizzeria
        WHERE
            pizzeria.id = visit_date.pizzeria_id
    ) AS pizzeria_name
FROM
    (
        SELECT
            *
        FROM
            person_visits
        WHERE
            visit_date = '2022-01-07'
            OR visit_date = '2022-01-08'
            OR visit_date = '2022-01-09'
    ) AS visit_date
ORDER BY
    person_name ASC,
    pizzeria_name DESC;