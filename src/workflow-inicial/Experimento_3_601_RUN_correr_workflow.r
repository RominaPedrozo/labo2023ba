# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/Experimento_3_611_CA_reparar_dataset_01.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_3_621_DR_corregir_drifting.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_3_631_FE_historia.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_3_641_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/Experimento_3_651_HT_lightgbm.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_3_661_ZZ_final.r")
