-- Configuration table to store dynamic ingestion metadata

CREATE TABLE IngestionMetadata (
    id INT IDENTITY(1,1) PRIMARY KEY,
    source_table NVARCHAR(100),
    target_container NVARCHAR(100),
    target_path NVARCHAR(200),
    is_active BIT DEFAULT 1
);

-- Sample insert
INSERT INTO IngestionMetadata (source_table, target_container, target_path)
VALUES ('SalesOrders', 'raw', 'salesorders');
