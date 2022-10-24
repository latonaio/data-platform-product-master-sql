CREATE TABLE `data_platform_product_master_business_partner_data`  -- 新規追加
(
    `Product`                 varchar(40) NOT NULL,      -- 新規追加
    `BusinessPartner`         int(12) NOT NULL,          -- 新規追加
    `ValidityEndDate`         date NOT NULL,             -- 新規追加
    `ValidityStartDate`       date DEFAULT NULL,         -- 新規追加
    `BusinessPartnerProduct`  varchar(40) DEFAULT NULL,  -- 新規追加
    `IsMarkedForDeletion`     tinyint(1) DEFAULT NULL,   -- 新規追加

    PRIMARY KEY (`Product`, `BusinessPartner`, `ValidityEndDate`),

    CONSTRAINT `DataPlatformProductMasterBusinessPartnerData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductMasterBusinessPartnerDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
