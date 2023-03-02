CREATE TABLE `data_platform_master_recipe_header_data`
(
    `ProductionPlantBusinessPartner` int(12) NOT NULL,
    `ProductionPlant`                varchar(4) NOT NULL,
    `MasterRecipeGroup`              int(8) NOT NULL,
    `MasterRecipe`                   int(4) NOT NULL,
    `MasterRecipeInternalVersion`    int(4) NOT NULL,
    `ValidityStartDate`              date DEFAULT NULL,
    `ValidityEndDate`                date DEFAULT NULL,
    `MasterRecipeDesc`               varchar(200) DEFAULT NULL,
    `MasterRecipeUsage`              varchar(3) DEFAULT NULL,
    `MinimumLotSizeQuantity`         float(15) DEFAULT NULL,
    `StandardLotSizeQuantity`        float(15) DEFAULT NULL,
    `LotSizeRoundingQuantity`        float(15) DEFAULT NULL,
    `MaximumLotSizeQuantity`         float(15) DEFAULT NULL,
    `LotSizeIsFixed`                 tinyint(1) DEFAULT NULL,
    `MasterRecipeUnit`               varchar(3) DEFAULT NULL,
    `PlainLongText`                  varchar(1000) DEFAULT NULL,
    `RecipeProductAssignment`        varchar(80) DEFAULT NULL,
    `CreationDate`                   date DEFAULT NULL,
    `LastChangeDate`                 date DEFAULT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`)
    
    CONSTRAINT `DPFMMasterRecipeHeaderData_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMMasterRecipeHeaderDataMasterRecipeUnit_fk` FOREIGN KEY (`MasterRecipeUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
