CREATE TABLE `data_platform_product_master_storage_location_data`
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                int(12) NOT NULL,
	`Plant`                          varchar(4) NOT NULL,
	`StorageLocation`                varchar(4) NOT NULL,
	`CreationDate`                   date DEFAULT NULL,
	`InventoryBlockStatus`           tinyint(1) DEFAULT NULL,
	`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`),

    CONSTRAINT `DataPlatformProductMasterStorageLocationData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterStorageLocationDataStorageLocation_fk` FOREIGN KEY (`StorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`StorageLocation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
