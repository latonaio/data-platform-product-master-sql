CREATE TABLE `data_platform_product_master_procurement_data`
(
    `Product`                     varchar(40) NOT NULL,
    `BusinessPartner`             int(12) NOT NULL,
    `Plant`                       varchar(4) NOT NULL,
    `Buyable`                     tinyint(1) DEFAULT NULL,
    `IsAutoPurOrdCreationAllowed` tinyint(1) DEFAULT NULL,
    `IsSourceListRequired`        tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformProductMasterProcurementData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
