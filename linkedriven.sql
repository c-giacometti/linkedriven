/* QUESTÃO 1 */
SELECT users.id, users.name, cities.name AS city
FROM users
JOIN cities ON users."cityId" = cities.id;

/*QUESTÃO 2 */
SELECT testimonials.id, 
tw.name AS writer, 
tr.name AS recipient, 
testimonials.message 
FROM testimonials 
JOIN users tw ON tw.id = testimonials."writerId" 
JOIN users tr ON tr.id = testimonials."recipientId"
ORDER BY id ASC;

/*QUESTÃO 3*/
SELECT educations."userId" AS id, 
users.name AS name, 
courses.name AS course, 
schools.name AS school, 
educations."endDate" AS endDate 
FROM educations 
JOIN users ON users.id = educations."userId" 
JOIN courses ON courses.id = educations."courseId" 
JOIN schools ON schools.id = educations."schoolId" 
WHERE educations."userId" = 30 
AND educations.status = 'finished';

/*QUESTÃO 4 */
SELECT experiences."userId" AS id, 
users.name AS name, 
roles.name AS role, 
companies.name AS company, 
experiences."startDate" 
FROM experiences 
JOIN users ON users.id = experiences."userId" 
JOIN roles ON roles.id = experiences."roleId" 
JOIN companies ON companies.id = experiences."companyId" 
WHERE experiences."userId" = 50 
AND experiences."endDate" IS NULL;
