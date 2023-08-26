CREATE TABLE `data_platform_product_master_storage_location_data`
(
	`Product`                        varchar(40) NOT NULL,
	`BusinessPartner`                int(12) NOT NULL,
	`Plant`                          varchar(4) NOT NULL,
	`StorageLocation`                varchar(4) NOT NULL,
	`BlockStatus`                    tinyint(1) DEFAULT NULL,
	`CreationDate`                   date NOT NULL,
	`LastChangeDate`                 date NOT NULL,
	`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`),

    CONSTRAINT `DPFMProductMasterStorageLocationData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMProductMasterStorageLocationDataStorageLocation_fk` FOREIGN KEY (`BusinessPartner`, `Plant`, `StorageLocation`) REFERENCES `data_platform_plant_storage_location_data` (`BusinessPartner`, `Plant`, `StorageLocation`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
