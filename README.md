# Aggregate_Function_and_grouping

## 1. Member Borrowing Totals

- Objective: Show every member with the number of books they have borrowed.

- Method:

- Members are joined with borrow records using a left join.

- Grouping is done by member ID.

- A count of borrowed books per member is calculated.

- Outcome: Each member is listed along with their total number of borrowed books. Members with no borrows are still shown with a total of zero.

## 2. Publisher Catalog Sizes

- Objective: Show every publisher with the number of books they have published.

- Method:

-- Publishers are joined with books using a left join.

-- Grouping is applied by publisher ID.

- A count of books per publisher is calculated.

- Outcome: Each publisher is displayed along with their catalog size. Publishers with no books appear with a count of zero.

## 3. Average Books Borrowed per Member

- Objective: Find the average number of books borrowed per member (only for members who have borrowed).

- Method:

- A temporary summary is created by grouping borrow records per member and counting borrow totals.

- The average is taken across these per-member counts.

- Outcome: A single numeric value representing the average borrowing activity of members who have borrowed at least once.

## 4. Book Popularity (Times Borrowed)

- Objective: Show how many times each book has been borrowed.

- Method:

- Books are joined with borrow records using a left join.

- Grouping is done by book ID.

- A count of borrow records is calculated for each book.

- Outcome: Each book is listed along with the number of times it has been borrowed. Books with no borrow records appear with zero.

## 5. Frequent Borrowers (Members with 2 or More Borrows)

- Objective: Identify members who borrowed at least two books.

- Method:

- Members are joined with borrow records and grouped by member ID.

- A filter is applied on the grouped result to keep only members with a total borrowed count greater than or equal to two.

Outcome: A list of frequent borrowers with their names and total borrow counts.
