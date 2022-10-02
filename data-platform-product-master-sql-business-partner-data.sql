CREATE TABLE `data_platform_product_master_business_partner_data`  --新規追加
(
    `Product`                 varchar(40) NOT NULL,      --新規追加
    `BusinessPartner`         varchar(10) NOT NULL,      --新規追加
    `ValidityEndDate`         varchar(80) NOT NULL,      --新規追加
    `ValidityStartDate`       varchar(80) DEFAULT NULL,  --新規追加
    PRIMARY KEY (`Product`, `BusinessPartner`, `ValidityEndDate`),
    CONSTRAINT `DataPlatformProductMasterBusinessPartnerData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
