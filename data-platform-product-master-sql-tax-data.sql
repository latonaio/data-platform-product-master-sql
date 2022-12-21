CREATE TABLE `data_platform_product_master_tax_data`
(
    `Product`                        varchar(40) NOT NULL,
--  `BusinessPartner`                int(12) NOT NULL,      -- 項目削除
    `Country`                        varchar(3) NOT NULL,
    `ProductTaxCategory`             varchar(4) NOT NULL,
    `ProductTaxClassification`       varchar(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `Country`, `ProductTaxCategory`),

    CONSTRAINT `DataPlatformProductMasterTaxData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductMasterTaxDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
