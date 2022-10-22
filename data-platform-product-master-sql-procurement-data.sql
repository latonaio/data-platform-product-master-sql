CREATE TABLE `data_platform_product_master_procurement_data`
(
    `Product`                     varchar(40) NOT NULL,
    `BusinessPartner`             int(10) NOT NULL,          -- 新規追加
    `Plant`                       varchar(4) NOT NULL,
    `PurchaseUnit`                varchar(3) DEFAULT NULL,   -- 新規追加
    `IsAutoPurOrdCreationAllowed` tinyint(1) DEFAULT NULL,
    `IsSourceListRequired`        tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`         tinyint(1) DEFAULT NULL,   -- 新規追加

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DataPlatformProductMasterProcurementData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterProcurementDataPurchaseUnit_fk` FOREIGN KEY (`PurchaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
