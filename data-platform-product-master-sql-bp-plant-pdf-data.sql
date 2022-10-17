CREATE TABLE `data_platform_product_master_bp_plant_pdf_data` -- 新規追加
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `Product`                        int(40) NOT NULL,          -- 新規追加
  `Plant`                          varchar(4) NOT NULL,       -- 新規追加
  `DocType`                        varchar(4) NOT NULL,       -- 新規追加
  `DocID`                          int(20) NOT NULL,          -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `Product`, `Plant`, `DocType`, `DocID`, `DocVersionID`),
    CONSTRAINT `DataPlatformProductMasterBpPlantPDFData_fk` FOREIGN KEY (`BusinessPartner`, `Product`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`BusinessPartner`, `Product`, `Plant`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
