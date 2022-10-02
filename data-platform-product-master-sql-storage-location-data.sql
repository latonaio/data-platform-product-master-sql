CREATE TABLE `data_platform_product_master_storage_location_data`
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                varchar(10) NOT NULL,		--新規追加
	`Plant`                          varchar(4) NOT NULL,
	`StorageLocation`                varchar(4) NOT NULL,
	`CreationDate`                   varchar(80) DEFAULT NULL,
	`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,
	`InventoryBlockStockInd`         varchar(3) DEFAULT NULL,
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformProductMasterStorageLocationData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
