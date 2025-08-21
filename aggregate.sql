SELECT 
    m.Name AS Member,
    COUNT(bo.BookID) AS TotalBorrowed
FROM Member m
LEFT JOIN Borrow bo ON m.MemberID = bo.MemberID
GROUP BY m.MemberID;

SELECT 
    p.Name AS Publisher,
    COUNT(b.BookID) AS BookCount
FROM Publisher p
LEFT JOIN Book b ON p.PublisherID = b.PublisherID
GROUP BY p.PublisherID;

SELECT 
    AVG(BookCount) AS AvgBooksBorrowed
FROM (
    SELECT COUNT(bo.BookID) AS BookCount
    FROM Borrow bo
    GROUP BY bo.MemberID
) AS BorrowSummary;

SELECT 
    b.Title AS Book,
    COUNT(bo.BorrowID) AS TimesBorrowed
FROM Book b
LEFT JOIN Borrow bo ON b.BookID = bo.BookID
GROUP BY b.BookID;

SELECT 
    m.Name AS Member,
    COUNT(bo.BookID) AS TotalBorrowed
FROM Member m
LEFT JOIN Borrow bo ON m.MemberID = bo.MemberID
GROUP BY m.MemberID
HAVING COUNT(bo.BookID) >= 2;
