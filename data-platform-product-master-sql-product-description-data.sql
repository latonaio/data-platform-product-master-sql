CREATE TABLE `data_platform_product_master_product_description_data`
(
    `Product`               varchar(40) NOT NULL,
    `Language`              varchar(2) NOT NULL,
    `ProductDescription`    varchar(40) DEFAULT NULL,
    PRIMARY KEY (`Product`, `Language`),
    CONSTRAINT `DataPlatformProductMasterProductDescriptionData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
