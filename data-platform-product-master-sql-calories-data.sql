CREATE TABLE `data_platform_product_master_calories_data`
(
    `Product`                 varchar(40) NOT NULL,
    `BusinessPartner`         int(12) NOT NULL,
    `Calories`                float(15) NOT NULL,
    `CaloryUnit`              varchar(3) NOT NULL,
    `CaloryUnitQuantitiy`     int(4) NOT NULL,
    `CreationDate`            date NOT NULL,
    `LastChangeDate`          date NOT NULL,
    `IsMarkedForDeletion`     tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`),

    CONSTRAINT `DPFMProductMasterCaloriesData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),
    CONSTRAINT `DPFMProductMasterCaloriesDataCaloryUnit_fk` FOREIGN KEY (`CaloryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
