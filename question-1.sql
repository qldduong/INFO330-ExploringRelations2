-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.

SELECT customers.firstname, customers.lastname, invoices.invoiceid, invoices.invoicedate, invoices.billingcountry from customers, invoices where customers.country = 'Brazil';
