/* Question 1 */
SELECT 
    a.Email, a.Username, a.Fullname, d.DepartmentID
FROM
    `account` a
        INNER JOIN
    department d ON a.DepartmentID = d.DepartmentID;

/* Question 2 */
SELECT 
    *
FROM
    `account`
WHERE
    CreatedDate > '2020-12-20';
    
/* Question 3 */
SELECT a.Email, a.Fullname, p.PositionName
FROM `account` a
INNER JOIN position p ON a.PositionID = p.PositionID
WHERE p.PositionName = 'Dev1';

/* Question 4 */
SELECT d.DepartmentName, count(a.departmentID) AS SO_NHAN_VIEN
FROM `account` a
INNER JOIN department d ON a.DepartmentID = d.DepartmentID
GROUP BY a.DepartmentID
HAVING count(a.departmentID) > 2;

/* Question 5 */
SELECT e.QuestionID, q.Content
FROM question q
INNER JOIN examquestion e ON q.QuestionID = e.QuestionID
GROUP BY e.QuestionID
HAVING count(e.QuestionID) = (SELECT MAX(count(e.QuestionID)) FROM examquestion);


