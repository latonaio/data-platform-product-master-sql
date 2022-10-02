CREATE TABLE `data_platform_product_master_sales_delivery_data`  --名称変更
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                varchar(10) NOT NULL,       --新規追加
    `ProductSalesOrg`                varchar(4) NOT NULL,
    `ProductDistributionChnl`        varchar(2) NOT NULL,
    `AccountDetnProductGroup`        varchar(2) DEFAULT NULL,    --新規追加
    `ItemCategoryGroup`              varchar(4) DEFAULT NULL,
    `SalesDeliveryUnit`              varchar(80) DEFAULT NULL,   --名称変更
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`Product`, `BusinessPartner`, `ProductSalesOrg`, `ProductDistributionChnl`),
    CONSTRAINT `DataPlatformProductMasterSalesDeliveryData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
