/* Question 2 */
SELECT 
    *
FROM
    department;
    
/* Question 3*/
SELECT 
    DepartmentID
FROM
    department
WHERE
    DepartmentName = 'Phong Sale';

/* Question 4 */
SELECT *
FROM `account`
WHERE length(FullName) = (SELECT MAX(LENGTH(FullName)) FROM `account`)
ORDER BY FullName DESC;

/* Question 5 */
SELECT *
FROM `account`
WHERE length(FullName) = (SELECT MAX(LENGTH(FullName)) FROM `account`) AND DepartmentID = 3
ORDER BY FullName DESC;

/* Question 6 */
SELECT 
    GroupName
FROM
    `group`
WHERE
    CreatedDate < '2019-12-20';

/* Question 8 */
SELECT Code
FROM exam
WHERE Duration >=60 AND CreatedDate <'2019-12-20';

/* Question 9 */
SELECT *
FROM `group`
GROUP BY CreatedDate
LIMIT 5;

/* Question 10 */
SELECT count(AccountID)
FROM `account`
WHERE DepartmentID = 2;

/* Question 11*/
SELECT Fullname
FROM `account`
WHERE (substring_index(Fullname, ' ', -1)) LIKE 'D%o';

/* Question 12*/
DELETE FROM exam
WHERE CreatedDate<'2020-12-20';

/*Question 13*/
DELETE
FROM question
WHERE (substring_index(Content, ' ', 2))='Câu hỏi';

/* Question 14*/
UPDATE `account`
SET Fullname = 'Nguyễn Bá Lộc',
    Email = 'loc.nguyenba@vti.com.vn'
WHERE AccountID = 5

/* Question 15*/
UPDATE `groupaccount`
SET AccountID = 5
WHERE GroupID = 4;
