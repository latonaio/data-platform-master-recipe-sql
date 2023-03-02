CREATE TABLE `data_platform_master_recipe_operation_data`
(
    `ProductionPlantBusinessPartner` int(12) NOT NULL,
    `ProductionPlant`                varchar(4) NOT NULL,
    `MasterRecipeGroup`              int(8) NOT NULL,
    `MasterRecipe`                   int(4) NOT NULL,
    `MasterRecipeInternalVersion`    int(4) NOT NULL,
    `MasterRecipeSequence`           int(4) NOT NULL,
    `Operation`                      int(4) NOT NULL,
    `OperationText`                  varchar(200) DEFAULT NULL,
    `RecipeProduct`                  varchar(40) DEFAULT NULL,
    `WorkCenterType`                 varchar(2) DEFAULT NULL,
    `WorkCenter`                     varchar(8) DEFAULT NULL,
    `OperationUnit`                  varchar(3) DEFAULT NULL,
    `ValidityStartDate`              date DEFAULT NULL,
    `ValidityEndDate`                date DEFAULT NULL,
    `OpIsExtlyProcdWithSubcontrg`    tinyint(1) DEFAULT NULL,
    `Seller`                         int(12) DEFAULT NULL,
    `PlannedDeliveryDuration`        int(3) DEFAULT NULL,
    `OperationScrapPercent`          float(6) DEFAULT NULL,
    `ConditionRecord`                int(12) DEFAULT NULL,
    `CostElement`                    varchar(10) DEFAULT NULL,
    `PlainLongText`                  varchar(1000) DEFAULT NULL,
    `CreationDate`                   date DEFAULT NULL,
    `CreationTime`                   time DEFAULT NULL,
    `LastChangedDate`                date DEFAULT NULL,
    `LastChangedTime`                time DEFAULT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`ProductionPlantBusinessPartner`、 `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`, `MasterRecipeSequence`, `Operation`),

    CONSTRAINT `DPFMMasterRecipeOperationData_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`) REFERENCES `data_platform_master_recipe_header_data` (`ProductionPlantBusinessPartner`, `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`),
    CONSTRAINT `DPFMMasterRecipeOperationDataRecipeProduct_fk` FOREIGN KEY (`RecipeProduct`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DPFMMasterRecipeOperationDataWorkCenter_fk` FOREIGN KEY (`WorkCenter`) REFERENCES `data_platform_work_center_header_data` (`WorkCenter`),
    CONSTRAINT `DPFMMasterRecipeOperationDataOperationUnit_fk` FOREIGN KEY (`OperationUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DPFMMasterRecipeOperationDataSeller_fk` FOREIGN KEY (`Seller`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
