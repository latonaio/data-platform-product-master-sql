CREATE TABLE `data_platform_product_master_procurement_data`
(
    `Product`                     varchar(40) NOT NULL,
    `BusinessPartner`             varchar(10) NOT NULL,      --新規追加
    `Plant`                       varchar(4) NOT NULL,
    `PurchaseUnit`                varchar(3) DEFAULT NULL,   --新規追加
    `IsAutoPurOrdCreationAllowed` tinyint(1) DEFAULT NULL,
    `IsSourceListRequired`        tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,   --新規追加
    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterProcurementData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
