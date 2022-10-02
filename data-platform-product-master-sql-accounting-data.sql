CREATE TABLE `data_platform_product_master_accounting_data` --名称変更
(
    `Product`               varchar(40) NOT NULL,
    `BusinessPartner`       varchar(10) NOT NULL,    --新規追加
    `ValuationArea`         varchar(4) NOT NULL,
    `ValuationClass`        varchar(4) DEFAULT NULL,
    `CostingPolicy`         varchar(1) DEFAULT NULL, --新規追加
    `PriceUnitQty`          varchar(5) DEFAULT NULL,
    `StandardPrice`         varchar(11) DEFAULT NULL,
    `MovingAveragePrice`    varchar(11) DEFAULT NULL,
    `PriceLastChangeDate`   varchar(80) DEFAULT NULL,
    `IsMarkedForDeletion`   tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`Product`, `BusinessPartner`, `ValuationArea`),
    CONSTRAINT `DataPlatformProductMasterAccountingData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
