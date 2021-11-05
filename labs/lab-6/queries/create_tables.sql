CREATE TABLE IF NOT EXISTS lab6.retaildata(
    InvoiceNo INT64,
    StockCode INT64,
    Description STRING,
    Quantity INT64,
    InvoiceDate STRING,
    UnitPrice Float64,
    CustomerID INT64,
    Country STRING,
);

CREATE TABLE IF NOT EXISTS lab6.wordcounts(
    word STRING,
    count INT64,
);

INSERT lab6.retaildata (
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CustomerID,
    Country
) VALUES
  (536365, 85123, 'WHITE HANGING HEART T-LIGHT HOLDER', 6, '12/1/2010 8:26', 2.55, 17850, 'United Kingdom'),
  (536365, 71053, 'WHITE METAL LANTERN', 6, '12/1/2010 8:26', 3.39, 17850, 'United Kingdom'),
  (536370, 21791, 'VINTAGE HEADS AND TAILS CARD GAME', 24, '12/1/2010 8:45', 1.25, 12583, 'France'),
  (536370, 21035, 'SET/2 RED RETROSPOT TEA TOWELS', 18, '12/1/2010 8:45', 2.95, 12583, 'France'),
  (536370, 22326,  'ROUND SNACK BOXES SET OF4 WOODLAND', 24, '12/1/2010 8:45', 2.95, 12583, 'France'),
  (536370, 22631, 'CIRCUS PARADE LUNCH BOX', 24, '12/1/2010 8:45', 1.95, 12583, 'France'),
  (536369, 21756, 'BATH BUILDING BLOCK WORD', 3, '12/1/2010 8:35', 5.95, 13047, 'United Kingdom');
