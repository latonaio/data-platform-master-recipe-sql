CREATE TABLE `data_platform_master_recipe_food_working_parameters_data`
(
    `ProductionPlantBusinessPartner` int(12) NOT NULL,
    `ProductionPlant`                varchar(4) NOT NULL,
    `MasterRecipeGroup`              int(8) NOT NULL,
    `MasterRecipe`                   int(4) NOT NULL,
    `MasterRecipeInternalVersion`    int(4) NOT NULL,
    `MasterRecipeSequence`           int(4) NOT NULL,
    `Operation`                      int(4) NOT NULL,
    `EnvironmentalTemperature`       float(10) DEFAULT NULL,
    `EnvironmentalTemperatureUnit`   varchar(3) DEFAULT NULL,
    `EnvironmentalHumidity`          float(10) DEFAULT NULL,
    `EnvironmentalHumidityUnit`      varchar(3) DEFAULT NULL,
    `TemperatureInPod`               float(10) DEFAULT NULL,
    `TemperatureInPodUnit`           varchar(3) DEFAULT NULL,
    `HumidityInPod`                  float(10) DEFAULT NULL,
    `HumidityInPodUnit`              varchar(3) DEFAULT NULL,
    `PressureInPod`                  float(10) DEFAULT NULL,
    `PressureInPodUnit`              varchar(3) DEFAULT NULL,
    `Temperature`                    float(10) DEFAULT NULL,
    `TemperatureUnit`                varchar(3) DEFAULT NULL,
    `Dampness`                       float(10) DEFAULT NULL,
    `DampnessUnit`                   varchar(3) DEFAULT NULL,
    `Pressure`                       float(10) DEFAULT NULL,
    `PressureUnit`                   varchar(3) DEFAULT NULL,
    `Color`                          varchar(8) DEFAULT NULL,
    `Transparency`                   float(10) DEFAULT NULL,
    `TransparencyUnit`               varchar(3) DEFAULT NULL,
    `RecipeWeight`                   float(10) DEFAULT NULL,
    `RecipeWeightUnit`               varchar(3) DEFAULT NULL,
    `WaterLevel`                     float(10) DEFAULT NULL,
    `WaterLevelUnit`                 varchar(3) DEFAULT NULL,
    `RecipeWidth`                    float(10) DEFAULT NULL,
    `RecipeHeight`                   float(10) DEFAULT NULL,
    `RecipeDepth`                    float(10) DEFAULT NULL,
    `RecipeSizeUnit`                 varchar(3) DEFAULT NULL,
    `Shape`                          varchar(40) DEFAULT NULL,
    `ThermalPower`                   float(10) DEFAULT NULL,
    `ThermalPowerUnit`               varchar(3) DEFAULT NULL,
    `ElectricPower`                  float(10) DEFAULT NULL,
    `ElectricPowerUnit`              varchar(3) DEFAULT NULL,
    `PowerOfSlice`                   float(10) DEFAULT NULL,
    `PowerOfSliceUnit`               varchar(3) DEFAULT NULL,
    `SlicingTilt`                    float(10) DEFAULT NULL,
    `SlicingTiltUnit`                varchar(3) DEFAULT NULL,
    `Hardness`                       float(10) DEFAULT NULL,
    `HardnessUnit`                   varchar(3) DEFAULT NULL,
    `Sourness`                       float(10) DEFAULT NULL,
    `SournessUnit`                   varchar(3) DEFAULT NULL,
    `SugarContent`                   float(10) DEFAULT NULL,
    `SugarContentUnit`               varchar(3) DEFAULT NULL,
    `Bitterness`                     float(10) DEFAULT NULL,
    `BitternessUnit`                 varchar(3) DEFAULT NULL,
    `Sweetness`                      float(10) DEFAULT NULL,
    `SweetnessUnit`                  varchar(3) DEFAULT NULL,
    `Saltness`                       float(10) DEFAULT NULL,
    `SaltnessUnit`                   varchar(3) DEFAULT NULL,
    `Taste`                          float(10) DEFAULT NULL,
    `TasteUnit`                      varchar(3) DEFAULT NULL,
    `PowerOfHydrogen`                float(10) DEFAULT NULL,
    `PowerOfHydrogenUnit`            varchar(3) DEFAULT NULL,
    `AmountOfBacterias`              float(10) DEFAULT NULL,
    `AmountOfBacteriasUnit`          varchar(3) DEFAULT NULL,
    `LowerProccesingTimeLimit`       float(10) DEFAULT NULL,
    `StandardProccesingTime`         float(10) DEFAULT NULL,
    `UpperProccesingTimeLimit`       float(10) DEFAULT NULL,
    `ProcessingTimeUnit`             varchar(3) DEFAULT NULL,   

    PRIMARY KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`, `MasterRecipeSequence`, `Operation`),

    CONSTRAINT `DataPlatformMasterRecipeFoodWorkingParametersData_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`) REFERENCES `data_platform_master_recipe_header_data` (`ProductionPlantBusinessPartner`, `ProductionPlant`, `MasterRecipeGroup`, `MasterRecipe`, `MasterRecipeInternalVersion`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;