-- Provide a query that includes the purchased track name AND artist name with each invoice line item.


SELECT tracks.name, tracks.composer, invoice_items.* FROM invoice_items INNER JOIN tracks ON invoice_items.trackid = tracks.trackid;

-- SELECT ii.invoicelineid, t.name, t.composer from invoice_items as ii, tracks as t WHERE ii.trackid = t.trackid;
-- Old approach without an explicit JOIN 