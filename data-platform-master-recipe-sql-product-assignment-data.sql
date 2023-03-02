CREATE TABLE `data_platform_master_recipe_product_assignment_data`
(
    `ProductionPlantBusinessPartner`        int(12) NOT NULL,
    `ProductionPlant`                       varchar(4) NOT NULL,
    `MasterRecipeGroup`                     int(8) NOT NULL,
    `MasterRecipe`                          int(4) NOT NULL,
    `MasterRecipeInternalVersion`           int(4) NOT NULL,  
    `BillOfMaterial`                        int(16) NOT NULL,
    `BillOfMaterialItem`                    int(6) NOT NULL,
    `ValidityStartDate`                     date DEFAULT NULL,
    `ValidityEndDate`                       date DEFAULT NULL,
    `RecipeProduct`                         varchar(40) NOT NULL,
    `RecipeProductIsMarkedForBackflush`     tinyint(1) DEFAULT NULL,
    `CreationDate`                          date DEFAULT NULL,
    `CreationTime`                          time DEFAULT NULL,
    `LastChangedDate`                       date DEFAULT NULL,
    `LastChangedTime`                       time DEFAULT NULL,
    `IsMarkedForDeletion`                   tinyint(1) DEFAULT NULL,     

    PRIMARY KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`, `BillOfMaterial`, `BillOfMaterialItem`),

    CONSTRAINT `DPFMMasterRecipeProductAssignmentData_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`) REFERENCES `data_platform_master_recipe_header_data` (`ProductionPlantBusinessPartner`, `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`),
    CONSTRAINT `DPFMMasterRecipeProductAssignmentDataBillOfMaterialItem_fk` FOREIGN KEY (`BillOfMaterial`, `BillOfMaterialItem`) REFERENCES `data_platform_bill_of_material_item_data` (`BillOfMaterial`, `BillOfMaterialItem`),    
    CONSTRAINT `DPFMMasterRecipeProductAssignmentDataRecipeProduct_fk` FOREIGN KEY (`RecipeProduct`) REFERENCES `data_platform_product_master_general_data` (`Product`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
