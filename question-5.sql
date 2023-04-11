-- What was the most purchased track of 2013?

SELECT COUNT(DISTINCT invoices.invoiceid), tracks.name, tracks.composer, invoices.invoiceid FROM tracks, invoices, invoice_items WHERE invoice_items.trackid = tracks.trackid AND invoice_items.invoiceid = invoices.invoiceid AND invoices.invoicedate LIKE '2013%' GROUP BY tracks.name ORDER BY COUNT(*) DESC LIMIT 10;

-- Trick question, multiple songs shared the top number of purchases. The max was 2 purchases, and 8 different songs had 2 purchases in 2013.
/*
	- Where Eagles Dare
	- The Trooper
	- Sweetest Thing
	- Since I've Been Loving You
	- Sign of the Cross
	- Sanctuary
	- Release 
	- Paint it Black
*/
