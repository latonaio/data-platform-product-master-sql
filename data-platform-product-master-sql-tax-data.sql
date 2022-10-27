CREATE TABLE `data_platform_product_master_tax_data`
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                int(10) NOT NULL,        -- 新規追加
    `Country`                        varchar(3) NOT NULL,
    `TaxCategory`                    varchar(4) NOT NULL,
    `ProductTaxClassification`       varchar(1) DEFAULT NULL, -- 名称変更

    PRIMARY KEY (`Product`, `BusinessPartner`, `Country`, `TaxCategory`),

    CONSTRAINT `DataPlatformProductMasterTaxData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),
    CONSTRAINT `DataPlatformProductMasterTaxDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
