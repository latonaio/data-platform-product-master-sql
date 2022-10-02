CREATE TABLE `data_platform_product_master_sales_tax_data`
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                varchar(10) NOT NULL,    --新規追加
    `Country`                        varchar(3) NOT NULL,
    `TaxCategory`                    varchar(4) NOT NULL,
    `TaxClassification`              varchar(1) DEFAULT NULL,
    PRIMARY KEY (`Product`, `BusinessPartner`, `Country`, `TaxCategory`),
    CONSTRAINT `DataPlatformProductMasterSalesTaxData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
