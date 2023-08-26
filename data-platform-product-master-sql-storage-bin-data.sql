CREATE TABLE `data_platform_product_master_storage_bin_data`
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                int(12) NOT NULL,
	`Plant`                          varchar(4) NOT NULL,
	`StorageLocation`                varchar(4) NOT NULL,
	`StorageBin`                     varchar(10) NOT NULL,
	`BlockStatus`                    tinyint(1) DEFAULT NULL,
    `CreationDate`                   date NOT NULL,
    `LastChangeDate`                 date NOT NULL,
	`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`),

    CONSTRAINT `DPFMProductMasterStorageBinData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`) REFERENCES `data_platform_product_master_storage_location_data` (`Product`, `BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DPFMProductMasterStorageBinDataStorageBin_fk` FOREIGN KEY (`BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`) REFERENCES `data_platform_storage_bin_general_data` (`BusinessPartner`, `Plant`, `StorageLocation`, `StorageBin`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
