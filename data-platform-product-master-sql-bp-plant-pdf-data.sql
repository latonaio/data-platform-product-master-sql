CREATE TABLE `data_platform_product_master_bp_plant_pdf_data` -- 新規追加
(
  `Product`                        varchar(40) NOT NULL,      -- 新規追加
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `Plant`                          varchar(4) NOT NULL,       -- 新規追加
  `DocType`                        varchar(20) NOT NULL,      -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `DocID`                          varchar(100) NOT NULL,     -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
  
    PRIMARY KEY (`Product`, `BusinessPartner`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformProductMasterBpPlantPDFData_fk` FOREIGN KEY (`Product`, `BusinessPartner`, `Plant`) REFERENCES `data_platform_product_master_bp_plant_data` (`Product`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformProductMasterBpPlantPDFDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
