-- Which sales agent made the most in sales in 2010?


SELECT SUM(i.total), e.firstname, e.lastname, e.employeeid FROM invoices as i, employees as e, customers as c WHERE i.customerid = c.customerid AND c.supportrepid = e.employeeid AND i.invoicedate LIKE '2010%' GROUP BY e.employeeid ORDER BY COUNT(e.employeeid) DESC;
-- Jane Peacock made a sum total of $221.92 in sales in 2010, the most out all the employees 

--SELECT COUNT(i.invoiceid), e.firstname, e.lastname, e.employeeid FROM invoices as i, employees as e, customers as c WHERE i.customerid = c.customerid AND c.supportrepid = e.employeeid AND i.invoicedate LIKE '2010%' GROUP BY e.employeeid ORDER BY COUNT(e.employeeid) DESC;
-- Jane Peacock made 34 individual sales in 2010, the most out of any other employee


