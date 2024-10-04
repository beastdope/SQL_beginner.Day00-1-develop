SELECT
    CONCAT(
        name,
        ' ',
        '(',
        'age:',
        age,
        ',gender:',
        CHR(39),
        gender,
        CHR(39),
        ',address:',
        CHR(39),
        address,
        CHR(39),
        ')'
    ) AS person_information
FROM
    person
ORDER BY
    person_identification ASC;