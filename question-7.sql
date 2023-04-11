-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).

SELECT * from tracks WHERE NOT EXISTS(SELECT 1 FROM invoice_items WHERE tracks.trackid = invoice_items.trackid) ORDER BY trackid;