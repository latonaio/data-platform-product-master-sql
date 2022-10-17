CREATE TABLE `data_platform_product_master_storage_location_data`
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                int(10) NOT NULL,			-- 新規追加
	`Plant`                          varchar(4) NOT NULL,
	`StorageLocation`                varchar(4) NOT NULL,
	`CreationDate`                   varchar(80) DEFAULT NULL,
	`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,
	`InventoryBlockStockInd`         tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformProductMasterStorageLocationData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
