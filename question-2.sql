-- Show the sales agent's full name and invoices associated with each sales agent.


SELECT e.firstname, e.lastname, i.* from customers as c, invoices as i, employees as e where i.customerid = c.customerid AND c.supportrepid = e.employeeid;

/* 
 SELECT e.firstname, e.lastname, i.invoiceid, i.customerid, i.invoicedate, i.billingaddress, i.billingcity, i.billingstate, i.billingcountry, 
 i.billingpostalcode from customers as c, invoices as i, employees as e where i.customerid = c.customerid AND c.supportrepid = e.employeeid;
*/

