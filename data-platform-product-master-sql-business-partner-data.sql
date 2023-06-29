CREATE TABLE `data_platform_product_master_business_partner_data`
(
    `Product`                 varchar(40) NOT NULL,
    `BusinessPartner`         int(12) NOT NULL,
    `ValidityStartDate`       date NOT NULL,
    `ValidityEndDate`         date NOT NULL,
    `BusinessPartnerProduct`  varchar(40) DEFAULT NULL,
    `CreationDate`            date NOT NULL,
    `LastChangeDate`          date NOT NULL,
    `IsMarkedForDeletion`     tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `ValidityStartDate`, `ValidityEndDate`),

    CONSTRAINT `DataPlatformProductMasterBusinessPartnerData_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformProductMasterBusinessPartnerDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
