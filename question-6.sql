-- Find tracks (id, name and composer) that are part of a line in an invoice.

SELECT t.trackid, t.name, t.composer, ii.invoicelineid FROM tracks as t, invoice_items as ii WHERE ii.trackid = t.trackid ORDER BY t.trackid;