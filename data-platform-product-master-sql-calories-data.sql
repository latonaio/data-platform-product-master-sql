CREATE TABLE `data_platform_product_master_calories_data`
(
    `Product`                 varchar(40) NOT NULL,
    `BusinessPartner`         int(12) NOT NULL,
    `CaloryUnitQuantitiy`     int(4) NOT NULL,
    `Calories`                int(4) DEFAULT NULL,
    `CaloryUnit`              varchar(3) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `CaloryUnitQuantitiy`),

    CONSTRAINT `DataPlatformProductMasterCaloriesData_fk` FOREIGN KEY (`Product`, `BusinessPartner`) REFERENCES `data_platform_product_master_business_partner_data` (`Product`, `BusinessPartner`),
    CONSTRAINT `DataPlatformProductMasterCaloriesDataNutrientCaloryUnit_fk` FOREIGN KEY (`CaloryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
