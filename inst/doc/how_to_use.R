## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----metapred1----------------------------------------------------------------
library(driveR)
path2annovar_csv <- system.file("extdata/example.hg19_multianno.csv",
                                 package = "driveR")

## ----metaapred2---------------------------------------------------------------
metaprediction_df <- predict_coding_impact(annovar_csv_path = path2annovar_csv)
head(metaprediction_df)

## ----metaapred3, eval=FALSE---------------------------------------------------
#  metaprediction_df <- predict_coding_impact(annovar_csv_path = path2annovar_csv,
#                                             keep_highest_score = FALSE)

## ----metaapred4s, eval=FALSE--------------------------------------------------
#  metaprediction_df <- predict_coding_impact(annovar_csv_path = path2annovar_csv,
#                                             keep_single_symbol = FALSE)

## ----setup, eval=FALSE--------------------------------------------------------
#  library(driveR)

## ----example_av_csv-----------------------------------------------------------
path2annovar_csv <- system.file("extdata/example.hg19_multianno.csv",
                                 package = "driveR")

## ----example_scna-------------------------------------------------------------
head(example_scna_table)

## ----phenolyzer_input,eval=FALSE----------------------------------------------
#  phenolyzer_genes <- create_features_df(annovar_csv_path = path2annovar_csv,
#                                         scna_df = example_scna_table,
#                                         prep_phenolyzer_input = TRUE)

## ----save_phenolyzer_input, eval=FALSE----------------------------------------
#  write.table(x = data.frame(gene = phenolyzer_genes),
#              file = "input_genes.txt",
#              row.names = FALSE, col.names = FALSE, quote = FALSE)

## ----example_phenoylzer-------------------------------------------------------
path2phenolyzer_out <- system.file("extdata/example.annotated_gene_list",
                                    package = "driveR")

## ----features_df, eval=FALSE--------------------------------------------------
#  features_df <- create_features_df(annovar_csv_path = path2annovar_csv,
#                                    scna_df = example_scna_table,
#                                    phenolyzer_annotated_gene_list_path = path2phenolyzer_out)

## ----features_df_load, echo=FALSE---------------------------------------------
features_df <- example_features_table

## ----cancer_types-------------------------------------------------------------
knitr::kable(MTL_submodel_descriptions)

## ----driver_prob--------------------------------------------------------------
driver_prob_df <- prioritize_driver_genes(features_df = features_df,
                                          cancer_type = "LUAD")
head(driver_prob_df, 10)

## ----setup2, eval = FALSE-----------------------------------------------------
#  library(driveR)

## ----example_av_csv2----------------------------------------------------------
path2annovar_csv <- system.file("extdata/example_cohort.hg19_multianno.csv",
                                 package = "driveR")

## ----example_scna2------------------------------------------------------------
head(example_cohort_scna_table)

## ----phenolyzer_input2, eval=FALSE--------------------------------------------
#  phenolyzer_genes <- create_features_df(annovar_csv_path = path2annovar_csv,
#                                         scna_df = example_cohort_scna_table,
#                                         prep_phenolyzer_input = TRUE,
#                                         batch_analysis = TRUE)

## ----save_phenolyzer_input2, eval=FALSE---------------------------------------
#  write.table(x = data.frame(gene = phenolyzer_genes),
#              file = "input_genes.txt",
#              row.names = FALSE, col.names = FALSE, quote = FALSE)

## ----example_phenoylzer2------------------------------------------------------
path2phenolyzer_out <- system.file("extdata/example_cohort.annotated_gene_list",
                                    package = "driveR")

## ----features_df2, eval=FALSE-------------------------------------------------
#  features_df <- create_features_df(annovar_csv_path = path2annovar_csv,
#                                    scna_df = example_cohort_scna_table,
#                                    phenolyzer_annotated_gene_list_path = path2phenolyzer_out,
#                                    batch_analysis = TRUE)

## ----features_df_load2, echo=FALSE--------------------------------------------
features_df <- example_cohort_features_table

## ----driver_prob2-------------------------------------------------------------
driver_prob_df <- prioritize_driver_genes(features_df = features_df,
                                          cancer_type = "LAML")
head(driver_prob_df, 10)

