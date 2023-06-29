CREATE TABLE `data_platform_product_master_quality_data`
(
    `Product`                        varchar(40) NOT NULL,
    `BusinessPartner`                int(12) NOT NULL,
    `Plant`                          varchar(4) NOT NULL,
    `MaximumStoragePeriod`           varchar(6) DEFAULT NULL,
    `QualityMgmtCtrlKey`             varchar(8) DEFAULT NULL,
    `MatlQualityAuthorizationGroup`  varchar(6) DEFAULT NULL,
    `HasPostToInspectionStock`       tinyint(1) DEFAULT NULL,
    `InspLotDocumentationIsRequired` tinyint(1) DEFAULT NULL,
    `SuplrQualityManagementSystem`   varchar(4) DEFAULT NULL,
    `RecrrgInspIntervalTimeInDays`   int(3) DEFAULT NULL,
    `ProductQualityCertificateType`  varchar(4) DEFAULT NULL,
    `CreationDate`                   date NOT NULL,
    `LastChangeDate`                 date NOT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Product`, `BusinessPartner`, `Plant`),

    CONSTRAINT `DPFMProductMasterQualityData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;