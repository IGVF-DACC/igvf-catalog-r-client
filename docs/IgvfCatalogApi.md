# IgvfCatalogApi

All URIs are relative to *https://catalog-api-dev.demo.igvf.org/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AllCodingVariantsFromGenes**](IgvfCatalogApi.md#AllCodingVariantsFromGenes) | **GET** /genes/coding-variants/all-scores | 
[**AnnotationsFromGoTerms**](IgvfCatalogApi.md#AnnotationsFromGoTerms) | **GET** /go-terms/gene-products | 
[**BiosamplesFromGenomicElements**](IgvfCatalogApi.md#BiosamplesFromGenomicElements) | **GET** /genomic-elements/biosamples | 
[**BiosamplesFromVariants**](IgvfCatalogApi.md#BiosamplesFromVariants) | **GET** /variants/biosamples | 
[**CodingVariants**](IgvfCatalogApi.md#CodingVariants) | **GET** /coding-variants | 
[**CodingVariantsCountFromGene**](IgvfCatalogApi.md#CodingVariantsCountFromGene) | **GET** /coding-variants/phenotypes-count | 
[**CodingVariantsFromGenes**](IgvfCatalogApi.md#CodingVariantsFromGenes) | **GET** /genes/coding-variants/scores | 
[**CodingVariantsFromPhenotypes**](IgvfCatalogApi.md#CodingVariantsFromPhenotypes) | **GET** /phenotypes/coding-variants | 
[**CodingVariantsFromVariants**](IgvfCatalogApi.md#CodingVariantsFromVariants) | **GET** /variants/coding-variants | 
[**CodingVariantsSummary**](IgvfCatalogApi.md#CodingVariantsSummary) | **GET** /coding-variants/phenotypes/score-summary | 
[**Complexes**](IgvfCatalogApi.md#Complexes) | **GET** /complexes | 
[**ComplexesFromProteins**](IgvfCatalogApi.md#ComplexesFromProteins) | **GET** /proteins/complexes | 
[**DeprecatedCodingVariantsSummary**](IgvfCatalogApi.md#DeprecatedCodingVariantsSummary) | **GET** /variants/phenotypes/score-summary | 
[**DeprecatedNearestGenes**](IgvfCatalogApi.md#DeprecatedNearestGenes) | **GET** /variants/nearest-genes | 
[**DiseaseFromVariants**](IgvfCatalogApi.md#DiseaseFromVariants) | **GET** /variants/diseases | 
[**DiseasesFromGenes**](IgvfCatalogApi.md#DiseasesFromGenes) | **GET** /genes/diseases | 
[**Drugs**](IgvfCatalogApi.md#Drugs) | **GET** /drugs | 
[**DrugsFromVariants**](IgvfCatalogApi.md#DrugsFromVariants) | **GET** /variants/drugs | 
[**EnhancerGenePredictions**](IgvfCatalogApi.md#EnhancerGenePredictions) | **GET** /enhancer-gene-predictions | 
[**FilesFilesets**](IgvfCatalogApi.md#FilesFilesets) | **GET** /files-filesets | 
[**Genes**](IgvfCatalogApi.md#Genes) | **GET** /genes | 
[**GenesFromDiseases**](IgvfCatalogApi.md#GenesFromDiseases) | **GET** /diseases/genes | 
[**GenesFromGenomicElements**](IgvfCatalogApi.md#GenesFromGenomicElements) | **GET** /genomic-elements/genes | 
[**GenesFromPathways**](IgvfCatalogApi.md#GenesFromPathways) | **GET** /pathways/genes | 
[**GenesFromProteins**](IgvfCatalogApi.md#GenesFromProteins) | **GET** /proteins/genes | 
[**GenesFromTranscripts**](IgvfCatalogApi.md#GenesFromTranscripts) | **GET** /transcripts/genes | 
[**GenesFromVariants**](IgvfCatalogApi.md#GenesFromVariants) | **GET** /variants/genes | 
[**GenesGenes**](IgvfCatalogApi.md#GenesGenes) | **GET** /genes/genes | 
[**GenesGenomicElementsScoreSummary**](IgvfCatalogApi.md#GenesGenomicElementsScoreSummary) | **GET** /genes/genomic-elements/score-summary | 
[**GenesProteinsFromVariants**](IgvfCatalogApi.md#GenesProteinsFromVariants) | **GET** /variants/genes-proteins | 
[**GenesProteinsGenesProteins**](IgvfCatalogApi.md#GenesProteinsGenesProteins) | **GET** /genes-proteins/genes-proteins | 
[**GenesStructure**](IgvfCatalogApi.md#GenesStructure) | **GET** /genes-structure | 
[**GenesTranscriptsGenes**](IgvfCatalogApi.md#GenesTranscriptsGenes) | **GET** /genes/transcripts/genes | 
[**GenesTranscriptsGenomicElements**](IgvfCatalogApi.md#GenesTranscriptsGenomicElements) | **GET** /genes/transcripts/genomic-elements | 
[**GenesVariantsScoreSummary**](IgvfCatalogApi.md#GenesVariantsScoreSummary) | **GET** /genes/variants/score-summary | 
[**GenomicElements**](IgvfCatalogApi.md#GenomicElements) | **GET** /genomic-elements | 
[**GenomicElementsFromBiosamples**](IgvfCatalogApi.md#GenomicElementsFromBiosamples) | **GET** /biosamples/genomic-elements | 
[**GenomicElementsFromGenes**](IgvfCatalogApi.md#GenomicElementsFromGenes) | **GET** /genes/genomic-elements | 
[**GenomicElementsFromGenomicElements**](IgvfCatalogApi.md#GenomicElementsFromGenomicElements) | **GET** /genomic-elements/genomic-elements | 
[**GenomicElementsFromPhenotypes**](IgvfCatalogApi.md#GenomicElementsFromPhenotypes) | **GET** /phenotypes/genomic-elements | 
[**GenomicElementsFromVariants**](IgvfCatalogApi.md#GenomicElementsFromVariants) | **GET** /variants/genomic-elements | 
[**GenomicElementsFromVariantsCount**](IgvfCatalogApi.md#GenomicElementsFromVariantsCount) | **GET** /variants/predictions-count | 
[**GenomicElementsPredictionsFromVariant**](IgvfCatalogApi.md#GenomicElementsPredictionsFromVariant) | **GET** /variants/genomic-elements/cell-gene-predictions | 
[**GoTermsFromAnnotations**](IgvfCatalogApi.md#GoTermsFromAnnotations) | **GET** /gene-products/go-terms | 
[**Grn**](IgvfCatalogApi.md#Grn) | **GET** /gene-regulatory-network | 
[**LlmQuery**](IgvfCatalogApi.md#LlmQuery) | **POST** /llm-query | 
[**Motifs**](IgvfCatalogApi.md#Motifs) | **GET** /motifs | 
[**MotifsFromProteins**](IgvfCatalogApi.md#MotifsFromProteins) | **GET** /proteins/motifs | 
[**NearestGenes**](IgvfCatalogApi.md#NearestGenes) | **GET** /nearest-genes | 
[**OntologyTerm**](IgvfCatalogApi.md#OntologyTerm) | **GET** /ontology-terms | 
[**OntologyTermChildren**](IgvfCatalogApi.md#OntologyTermChildren) | **GET** /ontology-terms/{ontology_term_id}/children | 
[**OntologyTermParents**](IgvfCatalogApi.md#OntologyTermParents) | **GET** /ontology-terms/{ontology_term_id}/parents | 
[**OntologyTermTransitiveClosure**](IgvfCatalogApi.md#OntologyTermTransitiveClosure) | **GET** /ontology-terms/{ontology_term_id_start}/transitive-closure/{ontology_term_id_end} | 
[**Pathways**](IgvfCatalogApi.md#Pathways) | **GET** /pathways | 
[**PathwaysFromGenes**](IgvfCatalogApi.md#PathwaysFromGenes) | **GET** /genes/pathways | 
[**PathwaysFromPathways**](IgvfCatalogApi.md#PathwaysFromPathways) | **GET** /pathways/pathways | 
[**PhenotypesFromCodingVariants**](IgvfCatalogApi.md#PhenotypesFromCodingVariants) | **GET** /coding-variants/phenotypes | 
[**PhenotypesFromGenomicElements**](IgvfCatalogApi.md#PhenotypesFromGenomicElements) | **GET** /genomic-elements/phenotypes | 
[**PhenotypesFromVariants**](IgvfCatalogApi.md#PhenotypesFromVariants) | **GET** /variants/phenotypes | 
[**PredictionsFromVariants**](IgvfCatalogApi.md#PredictionsFromVariants) | **GET** /variants/predictions | 
[**Proteins**](IgvfCatalogApi.md#Proteins) | **GET** /proteins | 
[**ProteinsFromComplexes**](IgvfCatalogApi.md#ProteinsFromComplexes) | **GET** /complexes/proteins | 
[**ProteinsFromGenes**](IgvfCatalogApi.md#ProteinsFromGenes) | **GET** /genes/proteins | 
[**ProteinsFromMotifs**](IgvfCatalogApi.md#ProteinsFromMotifs) | **GET** /motifs/proteins | 
[**ProteinsFromTranscripts**](IgvfCatalogApi.md#ProteinsFromTranscripts) | **GET** /transcripts/proteins | 
[**ProteinsFromVariants**](IgvfCatalogApi.md#ProteinsFromVariants) | **GET** /variants/proteins | 
[**ProteinsProteins**](IgvfCatalogApi.md#ProteinsProteins) | **GET** /proteins/proteins | 
[**QtlSummaryEndpoint**](IgvfCatalogApi.md#QtlSummaryEndpoint) | **GET** /variants/genes/summary | 
[**Qtls**](IgvfCatalogApi.md#Qtls) | **GET** /qtls | 
[**Studies**](IgvfCatalogApi.md#Studies) | **GET** /studies | 
[**Transcripts**](IgvfCatalogApi.md#Transcripts) | **GET** /transcripts | 
[**TranscriptsFromGenes**](IgvfCatalogApi.md#TranscriptsFromGenes) | **GET** /genes/transcripts | 
[**TranscriptsFromProteins**](IgvfCatalogApi.md#TranscriptsFromProteins) | **GET** /proteins/transcripts | 
[**VariantByFrequencySource**](IgvfCatalogApi.md#VariantByFrequencySource) | **GET** /variants/freq | 
[**VariantSummary**](IgvfCatalogApi.md#VariantSummary) | **GET** /variants/summary | 
[**Variants**](IgvfCatalogApi.md#Variants) | **GET** /variants | 
[**VariantsAlleles**](IgvfCatalogApi.md#VariantsAlleles) | **GET** /variants/gnomad-alleles | 
[**VariantsFromBiosamples**](IgvfCatalogApi.md#VariantsFromBiosamples) | **GET** /biosamples/variants | 
[**VariantsFromCodingVariants**](IgvfCatalogApi.md#VariantsFromCodingVariants) | **GET** /coding-variants/variants | 
[**VariantsFromDiseases**](IgvfCatalogApi.md#VariantsFromDiseases) | **GET** /diseases/variants | 
[**VariantsFromDrugs**](IgvfCatalogApi.md#VariantsFromDrugs) | **GET** /drugs/variants | 
[**VariantsFromGeneProteins**](IgvfCatalogApi.md#VariantsFromGeneProteins) | **GET** /genes-proteins/variants | 
[**VariantsFromGenes**](IgvfCatalogApi.md#VariantsFromGenes) | **GET** /genes/variants | 
[**VariantsFromGenomicElements**](IgvfCatalogApi.md#VariantsFromGenomicElements) | **GET** /genomic-elements/variants | 
[**VariantsFromPhenotypes**](IgvfCatalogApi.md#VariantsFromPhenotypes) | **GET** /phenotypes/variants | 
[**VariantsFromProteins**](IgvfCatalogApi.md#VariantsFromProteins) | **GET** /proteins/variants | 
[**VariantsFromVariantID**](IgvfCatalogApi.md#VariantsFromVariantID) | **GET** /variants/variant-ld | 
[**VariantsFromVariantIDSummary**](IgvfCatalogApi.md#VariantsFromVariantIDSummary) | **GET** /variants/variant-ld/summary | 
[**VariantsGenomicElementsGenes**](IgvfCatalogApi.md#VariantsGenomicElementsGenes) | **GET** /variants/genomic-elements/genes | 
[**VariantsRegionSummary**](IgvfCatalogApi.md#VariantsRegionSummary) | **GET** /variants/region-summary | 


# **AllCodingVariantsFromGenes**
> array[numeric] AllCodingVariantsFromGenes(gene_id, dataset, page = 0, limit = var.limit)



Retrieve a list of all numeric scores of associated coding variants for a gene and a dataset.<br>   Example: gene_id = ENSG00000165841, <br>   dataset = VAMP-seq

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character | 
var_dataset <- "dataset_example" # character | 
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AllCodingVariantsFromGenes(var_gene_id, var_dataset, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$AllCodingVariantsFromGenes(var_gene_id, var_dataset, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | 
 **dataset** | Enum [DUAL-IPA, ESM-1v, MutPred2, SGE, VAMP-seq, Variant painting via fluorescence] |  | 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

**array[numeric]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **AnnotationsFromGoTerms**
> array[AnnotationsFromGoTerms] AnnotationsFromGoTerms(go_term_id, name = var.name, page = 0, limit = var.limit)



Retrieve annotations associated with a GO term. <br>   Example: go_term_id = GO_1990590, <br>   name = has component<br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_go_term_id <- "go_term_id_example" # character | 
var_name <- "name_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AnnotationsFromGoTerms(var_go_term_id, name = var_name, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$AnnotationsFromGoTerms(var_go_term_id, name = var_name, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **go_term_id** | **character**|  | 
 **name** | Enum [contains, has component, is a function of] |  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[AnnotationsFromGoTerms]**](AnnotationsFromGoTerms.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **BiosamplesFromGenomicElements**
> array[BiosamplesFromGenomicElements] BiosamplesFromGenomicElements(region = var.region, region_type = var.region_type, source = var.source, method = var.method, files_fileset = var.files_fileset, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve MPRA experiments by querying positions of genomic elements. Set organism = Mus musculus for mouse MPRA sequences (GRCm39); the default is Homo sapiens (GRCh38). <br>   Set verbose = true to retrieve full info on the cell ontology terms. <br>   Human MPRA example: organism = Homo sapiens, <br>   region_type = tested elements, <br>   region = chr10:100038743-100038963. <br>   files_fileset = ENCFF475FKV,<br>   method = MPRA,<br>   source = IGVF. <br>   Mouse MPRA example: organism = Mus musculus, <br>   region = chr11:55319627-55319927, <br>   files_fileset = IGVFFI0975AQKF, <br>   method = MPRA, verbose = true. <br>   The limit parameter controls the page size and can not exceed 50. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_region <- "region_example" # character |  (Optional)
var_region_type <- "region_type_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$BiosamplesFromGenomicElements(region = var_region, region_type = var_region_type, source = var_source, method = var_method, files_fileset = var_files_fileset, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$BiosamplesFromGenomicElements(region = var_region, region_type = var_region_type, source = var_source, method = var_method, files_fileset = var_files_fileset, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **character**|  | [optional] 
 **region_type** | Enum [accessible dna elements, candidate cis regulatory element, tested elements] |  | [optional] 
 **source** | Enum [ENCODE, IGVF] |  | [optional] 
 **method** | Enum [MPRA] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[BiosamplesFromGenomicElements]**](BiosamplesFromGenomicElements.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **BiosamplesFromVariants**
> array[BiosamplesFromVariants] BiosamplesFromVariants(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region, files_fileset = var.files_fileset, method = var.method, element_id = var.element_id, significant = var.significant, gene_id = var.gene_id, gene_name = var.gene_name, phenotype_id = var.phenotype_id, phenotype_name = var.phenotype_name, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve data from STARR-seq, BlueSTARR, MPRA, and ColocBoost for a given variant. Set organism = Mus musculus for mouse MPRA sequences (GRCm39); the default is Homo sapiens (GRCh38).<br>     At least one of these fields is required: variant_id, spdi, hgvs, rsid, ca_id, region, method, or files_fileset. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"mpra\">MPRA</button> <button class=\"method-example-tab\" data-method-example-tab=\"starr-seq\">STARR-seq</button> <button class=\"method-example-tab\" data-method-example-tab=\"bluestarr\">BlueSTARR</button> <button class=\"method-example-tab\" data-method-example-tab=\"colocboost\">ColocBoost</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"mpra\"> <strong>MPRA:</strong> <div class=\"method-query-example\"> <strong>human MPRA by variant identifier</strong>  <ul> <li>organism = Homo sapiens</li> <li>spdi = NC_000001.11:1000161:C:A</li> <li>method = MPRA</li> </ul> </div> <div class=\"method-query-example\"> <strong>human MPRA by region</strong>  <ul> <li>organism = Homo sapiens</li> <li>region = chr1:1000160-1000163 (maximum length: 10kb)</li> <li>method = MPRA</li> </ul> </div> <div class=\"method-query-example\"> <strong>mouse MPRA by variant identifier</strong>  <ul> <li>organism = Mus musculus</li> <li>spdi = NC_000077.7:55319687:T:C</li> <li>files_fileset = IGVFFI5939ZOZQ</li> <li>method = MPRA</li> <li>verbose = true</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"starr-seq\"> <strong>STARR-seq:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000001.11:14772:C:T</li> <li>method = STARR-seq</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr1:14771-14775 (maximum length: 10kb)</li> <li>method = STARR-seq</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"bluestarr\"> <strong>BlueSTARR:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000001.11:100003415:C:A</li> <li>method = BlueSTARR</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr1:100003414-100003418 (maximum length: 10kb)</li> <li>method = BlueSTARR</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"colocboost\"> <strong>ColocBoost:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000001.11:155904168:A:G</li> <li>method = ColocBoost</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by variant identifier and gene (gene_name also accepted, e.g. gene_name = RIT1)</strong>  <ul> <li>spdi = NC_000001.11:155904168:A:G</li> <li>method = ColocBoost</li> <li>gene_id = ENSG00000143622</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by variant identifier and phenotype (phenotype_name also accepted, e.g. phenotype_name = type 2 diabetes nephropathy)</strong>  <ul> <li>spdi = NC_000001.11:155904168:A:G</li> <li>method = ColocBoost</li> <li>phenotype_id = EFO_0004997</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_element_id <- "element_id_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_phenotype_id <- "phenotype_id_example" # character |  (Optional)
var_phenotype_name <- "phenotype_name_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$BiosamplesFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, files_fileset = var_files_fileset, method = var_method, element_id = var_element_id, significant = var_significant, gene_id = var_gene_id, gene_name = var_gene_name, phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$BiosamplesFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, files_fileset = var_files_fileset, method = var_method, element_id = var_element_id, significant = var_significant, gene_id = var_gene_id, gene_name = var_gene_name, phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **method** | Enum [BlueSTARR, ColocBoost, MPRA, STARR-seq] |  | [optional] 
 **element_id** | **character**|  | [optional] 
 **significant** | Enum [true, false] |  | [optional] 
 **gene_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **phenotype_id** | **character**|  | [optional] 
 **phenotype_name** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[BiosamplesFromVariants]**](BiosamplesFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **CodingVariants**
> array[CodingVariants] CodingVariants(id = var.id, name = var.name, hgvsp = var.hgvsp, protein_id = var.protein_id, uniprot_name = var.uniprot_name, gene_name = var.gene_name, amino_acid_position = var.amino_acid_position, alt_amino_acid = var.alt_amino_acid, transcript_id = var.transcript_id, page = 0, limit = var.limit)



Retrieve coding variants annotations. <br>   At least one of these fields is required: id, name, hgvsp, protein_id, uniprot_name, gene_name, transcript_id. <br>   alt_amino_acid filters by the alternate amino acid at the given position (single-letter code, use * for stop codon). <br>   Example: name = SAMD7_ENST00000335556_p.Gly253Asp_c.758_759delinsAC <br>   id = SAMD7_ENST00000335556_p.Gly253Asp_c.758_759delinsAC, <br>   hgvsp = p.Gly253Asp, <br>   gene_name = SAMD7, <br>   protein_id = ENSP00000334668, <br>   uniprot_name = SAMD7_HUMAN, <br>   amino_acid_position = 253 (range values are also available, e.g: range:0-2), <br>   alt_amino_acid = D, <br>   transcript_id = ENST00000335556.<br>   The limit parameter controls the page size and can not exceed 25. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_id <- "id_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_hgvsp <- "hgvsp_example" # character |  (Optional)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_amino_acid_position <- "amino_acid_position_example" # character |  (Optional)
var_alt_amino_acid <- "alt_amino_acid_example" # character |  (Optional)
var_transcript_id <- "transcript_id_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CodingVariants(id = var_id, name = var_name, hgvsp = var_hgvsp, protein_id = var_protein_id, uniprot_name = var_uniprot_name, gene_name = var_gene_name, amino_acid_position = var_amino_acid_position, alt_amino_acid = var_alt_amino_acid, transcript_id = var_transcript_id, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$CodingVariants(id = var_id, name = var_name, hgvsp = var_hgvsp, protein_id = var_protein_id, uniprot_name = var_uniprot_name, gene_name = var_gene_name, amino_acid_position = var_amino_acid_position, alt_amino_acid = var_alt_amino_acid, transcript_id = var_transcript_id, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **hgvsp** | **character**|  | [optional] 
 **protein_id** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **amino_acid_position** | **character**|  | [optional] 
 **alt_amino_acid** | Enum [A, C, D, E, F, G, H, I, K, L, M, N, P, Q, R, S, T, V, W, Y, *] |  | [optional] 
 **transcript_id** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[CodingVariants]**](CodingVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **CodingVariantsCountFromGene**
> array[MethodCount] CodingVariantsCountFromGene(gene_id, files_fileset = var.files_fileset)



Retrieve counts of coding variants associated with phenotypes.<br>     Example: gene_id = ENSG00000165841, <br>     files_fileset = IGVFFI6893ZOAA.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character | 
var_files_fileset <- "files_fileset_example" # character |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CodingVariantsCountFromGene(var_gene_id, files_fileset = var_files_filesetdata_file = "result.txt")
result <- api_instance$CodingVariantsCountFromGene(var_gene_id, files_fileset = var_files_fileset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | 
 **files_fileset** | **character**|  | [optional] 

### Return type

[**array[MethodCount]**](MethodCount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **CodingVariantsFromGenes**
> array[CodingVariantsFromGenes] CodingVariantsFromGenes(gene_id = var.gene_id, hgnc_id = var.hgnc_id, gene_name = var.gene_name, synonym = var.synonym, region = var.region, method = var.method, files_fileset = var.files_fileset, page = 0, limit = var.limit)



Retrieve scores and predictions of associated coding variants for one specific gene.<br>     At least one of these fields is required: gene_id, hgnc_id, gene_name, synonym. <br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"dual-ipa\">DUAL-IPA</button> <button class=\"method-example-tab\" data-method-example-tab=\"esm-1v\">ESM-1v</button> <button class=\"method-example-tab\" data-method-example-tab=\"mutpred2\">MutPred2</button> <button class=\"method-example-tab\" data-method-example-tab=\"sge\">SGE</button> <button class=\"method-example-tab\" data-method-example-tab=\"vamp-seq\">VAMP-seq</button> <button class=\"method-example-tab\" data-method-example-tab=\"painting\">Variant painting with fluorescence</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"dual-ipa\"> <strong>DUAL-IPA:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_name = ACSF3</li> <li>method = DUAL-IPA</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"esm-1v\"> <strong>ESM-1v:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000121410</li> <li>method = ESM-1v</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"mutpred2\"> <strong>MutPred2:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000196584</li> <li>method = MutPred2</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sge\"> <strong>SGE:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000139618</li> <li>method = SGE</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"vamp-seq\"> <strong>VAMP-seq:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000165841</li> <li>method = VAMP-seq</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"painting\"> <strong>Variant painting with fluorescence:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000133703</li> <li>method = Variant painting with fluorescence</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CodingVariantsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$CodingVariantsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **method** | Enum [DUAL-IPA, ESM-1v, MutPred2, SGE, VAMP-seq, Variant painting via fluorescence] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[CodingVariantsFromGenes]**](CodingVariantsFromGenes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **CodingVariantsFromPhenotypes**
> array[CodingVariantsFromPhenotypes] CodingVariantsFromPhenotypes(phenotype_id = var.phenotype_id, phenotype_name = var.phenotype_name, method = var.method, files_fileset = var.files_fileset, page = 0, limit = var.limit)



Retrieve coding variants associated with the query phenotype.<br>     For MutPred2 results, the molecular mechanisms it predicts the substitution to disrupt are returned in property_scores. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"dual-ipa\">DUAL-IPA</button> <button class=\"method-example-tab\" data-method-example-tab=\"esm-1v\">ESM-1v</button> <button class=\"method-example-tab\" data-method-example-tab=\"mutpred2\">MutPred2</button> <button class=\"method-example-tab\" data-method-example-tab=\"sge\">SGE</button> <button class=\"method-example-tab\" data-method-example-tab=\"vamp-seq\">VAMP-seq</button> <button class=\"method-example-tab\" data-method-example-tab=\"variant-painting\">Variant painting via fluorescence</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"dual-ipa\"> <strong>DUAL-IPA:</strong> <div class=\"method-query-example\"> <strong>query by phenotype identifier</strong>  <ul> <li>phenotype_id = BAO_0040014</li> <li>method = DUAL-IPA</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI6224HZMG</li> <li>method = DUAL-IPA</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"esm-1v\"> <strong>ESM-1v:</strong> <div class=\"method-query-example\"> <strong>query by phenotype identifier</strong>  <ul> <li>phenotype_id = GO_0003674</li> <li>method = ESM-1v</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI8105TNNO</li> <li>method = ESM-1v</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"mutpred2\"> <strong>MutPred2:</strong> <div class=\"method-query-example\"> <strong>query by phenotype identifier</strong>  <ul> <li>phenotype_id = GO_0003674</li> <li>method = MutPred2</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI6893ZOAA</li> <li>method = MutPred2</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sge\"> <strong>SGE:</strong> <div class=\"method-query-example\"> <strong>query by phenotype identifier</strong>  <ul> <li>phenotype_id = NCIT_C16407</li> <li>method = SGE</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI2810SLAX</li> <li>method = SGE</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"vamp-seq\"> <strong>VAMP-seq:</strong> <div class=\"method-query-example\"> <strong>query by phenotype identifier</strong>  <ul> <li>phenotype_id = OBA_0000128</li> <li>method = VAMP-seq</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI0629IIQU</li> <li>method = VAMP-seq</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"variant-painting\"> <strong>Variant painting via fluorescence:</strong> <div class=\"method-query-example\"> <strong>query by phenotype identifier</strong>  <ul> <li>phenotype_id = GO_0008104</li> <li>method = Variant painting via fluorescence</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI9499PJFU</li> <li>method = Variant painting via fluorescence</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_phenotype_id <- "phenotype_id_example" # character |  (Optional)
var_phenotype_name <- "phenotype_name_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CodingVariantsFromPhenotypes(phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$CodingVariantsFromPhenotypes(phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phenotype_id** | **character**|  | [optional] 
 **phenotype_name** | **character**|  | [optional] 
 **method** | Enum [DUAL-IPA, ESM-1v, MutPred2, SGE, VAMP-seq, Variant painting via fluorescence] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[CodingVariantsFromPhenotypes]**](CodingVariantsFromPhenotypes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **CodingVariantsFromVariants**
> array[CodingVariants] CodingVariantsFromVariants(spdi = var.spdi, hgvs = var.hgvs, ca_id = var.ca_id, variant_id = var.variant_id, page = 0, limit = var.limit)



Retrieve coding variants from dbSNFP associated with a variant.<br>     Example: variant_id = NC_000001.11:65564:A:T, <br>     spdi = NC_000001.11:65564:A:T, <br>     hgvs = NC_000001.11:g.65565A>T, <br>     ca_id = CA337806511, <br>     The limit parameter controls the page size and can not exceed 500.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CodingVariantsFromVariants(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$CodingVariantsFromVariants(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[CodingVariants]**](CodingVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **CodingVariantsSummary**
> array[CodingVariantsSummary] CodingVariantsSummary(variant_id = var.variant_id, coding_variant_id = var.coding_variant_id, files_fileset = var.files_fileset)



Retrieve scores of variants or coding_variants associated with phenotypes. Via coding variants edges.<br>     Either variant_id or coding_variant_name are required. <br>     Example: variant_id = NC_000018.10:31546002:CA:GT, <br>     coding_variant_name = DSG2_ENST00000261590_p.Gln873Val_c.2617_2618delinsGT, <br>     files_fileset = IGVFFI6893ZOAA.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_coding_variant_id <- "coding_variant_id_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CodingVariantsSummary(variant_id = var_variant_id, coding_variant_id = var_coding_variant_id, files_fileset = var_files_filesetdata_file = "result.txt")
result <- api_instance$CodingVariantsSummary(variant_id = var_variant_id, coding_variant_id = var_coding_variant_id, files_fileset = var_files_fileset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant_id** | **character**|  | [optional] 
 **coding_variant_id** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 

### Return type

[**array[CodingVariantsSummary]**](CodingVariantsSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Complexes**
> array[Complex] Complexes(complex_id = var.complex_id, name = var.name, description = var.description, page = 0)



Retrieve complexes.<br>   Example: complex_id = CPX-11, <br>   name = SMAD2, <br>   description = phosphorylation. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_complex_id <- "complex_id_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_description <- "description_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Complexes(complex_id = var_complex_id, name = var_name, description = var_description, page = var_pagedata_file = "result.txt")
result <- api_instance$Complexes(complex_id = var_complex_id, name = var_name, description = var_description, page = var_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **complex_id** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **description** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]

### Return type

[**array[Complex]**](Complex.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **ComplexesFromProteins**
> array[ComplexesFromProteins] ComplexesFromProteins(protein_id = var.protein_id, protein_name = var.protein_name, uniprot_name = var.uniprot_name, uniprot_full_name = var.uniprot_full_name, dbxrefs = var.dbxrefs, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve complexes by querying from protein participants. Each record includes protein and complex.<br>   Set verbose = true to retrieve full info on the complexes.<br>   Protein IDs support the following formats: ENSP00000411322.1 or ENSP00000411322 (Ensembl IDs) or P67870 (Uniprot ids)<br>   Example: protein_id = ENSP00000411322.1, <br>   protein_name = CSNK2B, <br>   uniprot_name = CSK2B_HUMAN, <br>   uniprot_full_name = Casein kinase II subunit beta, <br>   dbxrefs = P67870. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_protein_name <- "protein_name_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_uniprot_full_name <- "uniprot_full_name_example" # character |  (Optional)
var_dbxrefs <- "dbxrefs_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ComplexesFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$ComplexesFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein_id** | **character**|  | [optional] 
 **protein_name** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **uniprot_full_name** | **character**|  | [optional] 
 **dbxrefs** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[ComplexesFromProteins]**](ComplexesFromProteins.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **DeprecatedCodingVariantsSummary**
> array[CodingVariantsSummary] DeprecatedCodingVariantsSummary(variant_id = var.variant_id, coding_variant_id = var.coding_variant_id, files_fileset = var.files_fileset)



DEPRECATED. Please use coding-variants/phenotypes/summary.<br>     Retrieve scores of variants associated with phenotypes. Via coding variants edges.<br>     Either variant_id or coding_variant_name are required. <br>     Example: variant_id = NC_000018.10:31546002:CA:GT, <br>     coding_variant_name = DSG2_ENST00000261590_p.Gln873Val_c.2617_2618delinsGT, <br>     files_fileset = IGVFFI6893ZOAA.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_coding_variant_id <- "coding_variant_id_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeprecatedCodingVariantsSummary(variant_id = var_variant_id, coding_variant_id = var_coding_variant_id, files_fileset = var_files_filesetdata_file = "result.txt")
result <- api_instance$DeprecatedCodingVariantsSummary(variant_id = var_variant_id, coding_variant_id = var_coding_variant_id, files_fileset = var_files_fileset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant_id** | **character**|  | [optional] 
 **coding_variant_id** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 

### Return type

[**array[CodingVariantsSummary]**](CodingVariantsSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **DeprecatedNearestGenes**
> array[Gene] DeprecatedNearestGenes(region)



DEPRECATED. Please use /nearest-genes. <br>   Retrieve a list of human genes if region is in a coding variant. Otherwise, it returns the single nearest human gene. <br>   Example: region = chr1:1157520-1158189 (maximum length: 10kb).

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_region <- "region_example" # character | 

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeprecatedNearestGenes(var_regiondata_file = "result.txt")
result <- api_instance$DeprecatedNearestGenes(var_region)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **character**|  | 

### Return type

[**array[Gene]**](Gene.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **DiseaseFromVariants**
> array[DiseaseFromVariants] DiseaseFromVariants(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region, assertion = var.assertion, pmid = var.pmid, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve diseases and genes associated with the query variant from ClinGen. <br>   At least one of these fields is required: variant_id, spdi, hgvs, rsid, ca_id, or region. <br>   Example: variant_id = NC_000012.12:102917129:T:C <br>   spdi = NC_000012.12:102917129:T:C, <br>   hgvs = NC_000012.12:g.102917130T>C, <br>   rsid = rs62514891, <br>   ca_id = CA114360, <br>   chr = chr12, <br>   region = chr12:102866500-102866700 (maximum length: 10kb), <br>   assertion = Pathogenic, <br>   pmid = 2574002. <br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_assertion <- "assertion_example" # character |  (Optional)
var_pmid <- "pmid_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DiseaseFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, assertion = var_assertion, pmid = var_pmid, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$DiseaseFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, assertion = var_assertion, pmid = var_pmid, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **assertion** | Enum [Benign, Likely Benign, Likely Pathogenic, Pathogenic, Uncertain Significance] |  | [optional] 
 **pmid** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[DiseaseFromVariants]**](DiseaseFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **DiseasesFromGenes**
> array[DiseasesFromGenes] DiseasesFromGenes(gene_id = var.gene_id, hgnc_id = var.hgnc_id, gene_name = var.gene_name, synonym = var.synonym, region = var.region, source = var.source, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve disease-gene pairs from Orphanet, GenCC and ClinGen by genes.<br>     Set verbose = true to retrieve full info on the disease terms, and the variants associated with the disease from ClinGen. <br>     At least one of these fields is required: gene_id, hgnc_id, gene_name, synonym. <br>     Example: gene_id = ENSG00000171759, <br>     gene_name = PAH, <br>     synonym = PKU1, <br>     source = ClinGen, <br>     hgnc_id = HGNC:8582. <br>     The limit parameter controls the page size and can not exceed 25. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DiseasesFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, source = var_source, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$DiseasesFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, source = var_source, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **source** | Enum [GenCC, Orphanet, ClinGen] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[DiseasesFromGenes]**](DiseasesFromGenes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Drugs**
> array[Drug] Drugs(drug_id = var.drug_id, name = var.name, page = 0, limit = var.limit)



Retrieve drugs (chemicals). <br>   Example: drug_id = PA448497 (chemical ids from pharmGKB), <br>   name = aspirin.<br>   The limit parameter controls the page size and can not exceed 1000. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_drug_id <- "drug_id_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Drugs(drug_id = var_drug_id, name = var_name, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$Drugs(drug_id = var_drug_id, name = var_name, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **drug_id** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[Drug]**](Drug.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **DrugsFromVariants**
> array[DrugsFromVariants] DrugsFromVariants(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region, phenotype_categories = var.phenotype_categories, pmid = var.pmid, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve drugs associated with the query variants from pharmGKB.<br>   Set verbose = true to retrieve full info on the drugs.<br>   At least one of these fields is required: variant_id, spdi, hgvs, rsid, ca_id, or region. <br>   Example: variant_id = NC_000001.11:230714139:T:G, <br>   spdi = NC_000001.11:230714139:T:G, <br>   hgvs = NC_000001.11:g.230714140T>G, <br>   rsid = rs5050 (at least one of the variant fields needs to be specified), <br>   ca_id = CA10610220, <br>   region = chr3:186741137-186742238 (maximum length: 10kb), <br>   the following filters on variants-drugs association can be combined for query: <br>   pmid = 20824505, <br>   phenotype_categories = Toxicity. <br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_phenotype_categories <- "phenotype_categories_example" # character |  (Optional)
var_pmid <- "pmid_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DrugsFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, phenotype_categories = var_phenotype_categories, pmid = var_pmid, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$DrugsFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, phenotype_categories = var_phenotype_categories, pmid = var_pmid, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **phenotype_categories** | Enum [Dosage, Efficacy, Metabolism/PK, Other, PD, Toxicity] |  | [optional] 
 **pmid** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[DrugsFromVariants]**](DrugsFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **EnhancerGenePredictions**
> array[EnhancerGenePredictions] EnhancerGenePredictions(gene_id = var.gene_id, hgnc_id = var.hgnc_id, gene_name = var.gene_name, synonym = var.synonym, region = var.region, method = var.method, files_fileset = var.files_fileset, page = 0, limit = var.limit)



Retrieve genomic elements and gene pairs by querying genomic elements.<br>     Set verbose = true to retrieve full info on the genes, genomic element and biosamples.<br>     method can be either ENCODE-rE2G or scE2G; if not provided, both methods are searched. <br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based. <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"encode-re2g\">ENCODE-rE2G</button> <button class=\"method-example-tab\" data-method-example-tab=\"sce2g\">scE2G</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"encode-re2g\"> <strong>ENCODE-rE2G:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000055950</li> <li>method = ENCODE-rE2G</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sce2g\"> <strong>scE2G:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000055950</li> <li>method = scE2G</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$EnhancerGenePredictions(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$EnhancerGenePredictions(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **method** | Enum [ENCODE-rE2G, scE2G] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[EnhancerGenePredictions]**](EnhancerGenePredictions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **FilesFilesets**
> array[FilesFilesets] FilesFilesets(file_fileset_id = var.file_fileset_id, fileset_id = var.fileset_id, lab = var.lab, preferred_assay_title = var.preferred_assay_title, method = var.method, perturbation = var.perturbation, donor_id = var.donor_id, sample_term = var.sample_term, sample_summary = var.sample_summary, software = var.software, cell_annotation = var.cell_annotation, cell_annotation_term = var.cell_annotation_term, has_genome_browser_link = var.has_genome_browser_link, source = var.source, class = var.class, page = 0, limit = var.limit)



Retrieve data about a specific dataset.<br>   Example: file_fileset_id = ENCFF004PFU,<br>  fileset_id = ENCSR359DFW,<br>  lab = jesse-engreitz,<br>  preferred_assay_title = DNase-seq,<br>  method = MPRA,<br>  donor_id = ENCDO000AAK,<br>  sample_term = EFO_0002784,<br>  sample_summary = GM12878,<br>  software = Distal regulation ENCODE-rE2G,<br>  cell_annotation = mesodermal cell, <br>  cell_annotation_term = CL_0000352, <br>  class = prediction,<br>  source = ENCODE.<br>  The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_file_fileset_id <- "file_fileset_id_example" # character |  (Optional)
var_fileset_id <- "fileset_id_example" # character |  (Optional)
var_lab <- "lab_example" # character |  (Optional)
var_preferred_assay_title <- "preferred_assay_title_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_perturbation <- "perturbation_example" # character |  (Optional)
var_donor_id <- "donor_id_example" # character |  (Optional)
var_sample_term <- "sample_term_example" # character |  (Optional)
var_sample_summary <- "sample_summary_example" # character |  (Optional)
var_software <- "software_example" # character |  (Optional)
var_cell_annotation <- "cell_annotation_example" # character |  (Optional)
var_cell_annotation_term <- "cell_annotation_term_example" # character |  (Optional)
var_has_genome_browser_link <- "has_genome_browser_link_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_class <- "class_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FilesFilesets(file_fileset_id = var_file_fileset_id, fileset_id = var_fileset_id, lab = var_lab, preferred_assay_title = var_preferred_assay_title, method = var_method, perturbation = var_perturbation, donor_id = var_donor_id, sample_term = var_sample_term, sample_summary = var_sample_summary, software = var_software, cell_annotation = var_cell_annotation, cell_annotation_term = var_cell_annotation_term, has_genome_browser_link = var_has_genome_browser_link, source = var_source, class = var_class, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$FilesFilesets(file_fileset_id = var_file_fileset_id, fileset_id = var_fileset_id, lab = var_lab, preferred_assay_title = var_preferred_assay_title, method = var_method, perturbation = var_perturbation, donor_id = var_donor_id, sample_term = var_sample_term, sample_summary = var_sample_summary, software = var_software, cell_annotation = var_cell_annotation, cell_annotation_term = var_cell_annotation_term, has_genome_browser_link = var_has_genome_browser_link, source = var_source, class = var_class, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_fileset_id** | **character**|  | [optional] 
 **fileset_id** | **character**|  | [optional] 
 **lab** | Enum [alan-boyle, bill-majoros, charles-gersbach, community, danwei-huangfu, doug-fowler, encode, gary-hon, j-michael-cherry, jay-shendure, jesse-engreitz, karen-mohlke, kushal-dey, lea-starita, luca-pinello, marc-vidal, mark-craven, nadav-ahituv, predrag-radivojac, richard-sherwood, thomas-quertermous, tim-reddy, tom-norman, zhiping-weng] |  | [optional] 
 **preferred_assay_title** | Enum [ATAC-seq, CRISPR FACS screen, CRISPR FlowFISH screen, CRISPR MACS screen, DNase-seq, DUAL-IPA, MORF screen, MPRA, Migration CRISPR screen, Multiome Perturb-seq, Parse Perturb-seq, Perturb-seq, Proliferation CRISPR screen, SGE, STARR-seq, TAP-seq, VAMP-seq, VAMP-seq (MultiSTEP), Variant painting via fluorescence, Variant-EFFECTS, electroporated MPRA, in vivo Perturb-seq, lentiMPRA, scCRISPR screen, snATAC-seq] |  | [optional] 
 **method** | Enum [ADASTRA, ATAC-seq, BlueSTARR, COXPRESdb, CRISPR screen, ClinGen, ColocBoost, DUAL-IPA, DepMap, ENCODE-rE2G, ESM-1v, GVATdb, GWAS, GenCC, HOCOMOCO, Homology, MORF screen, MPRA, Multiome Perturb-seq, MutPred2, Orphanet, Perturb-seq, PharmGKB, SEMVAR, SEMpl, SGE, STARR-seq, TopLD, VAMP-seq, VAMP-seq (MultiSTEP), Variant painting via fluorescence, cV2F, caQTL, candidate Cis-Regulatory Elements, eQTL, elements, genes, guide RNAs, pQTL, scE2G, snATAC-seq, spliceQTL, training data for predictive models] |  | [optional] 
 **perturbation** | Enum [CRISPR activation, CRISPR base editing, CRISPR cutting, CRISPR interference, CRISPR knockout, CRISPR prime editing, ORF overexpression] |  | [optional] 
 **donor_id** | **character**|  | [optional] 
 **sample_term** | **character**|  | [optional] 
 **sample_summary** | **character**|  | [optional] 
 **software** | Enum [2024_multistep, BCalm, BEDTools, BIRD, BlueSTARR, CRISPR BEAN, CRISPR-Millipede, CRISPR-SURF, CRISPResso2, Cell Profiler, ColocBoost, Cooler, CountESS, DESeq2, DUAL-IPA analysis scripts, Distal regulation ENCODE-rE2G, DistalRegulationCRISPRdata, ESM-1v, FRACTEL, Irreproducible Discovery Rate, MAGeCK, MPRAflow tsv-to-bed, MutPred2, NumPy, Pysam, R, SEMVAR, SEMpl, SGE Pipeline, Samtools, Sceptre, SciPy, Seaborn, Seurat, Snakemake, Straw, Variant-EFFECTS, bigWigAverageOverBed, cV2F, cyp2c19_2c9, matplotlib, mpralm, pandas, pySpade, pybedtools, scATAC-seq processing, scE2G, snapATAC2, statsmodels] |  | [optional] 
 **cell_annotation** | **character**|  | [optional] 
 **cell_annotation_term** | **character**|  | [optional] 
 **has_genome_browser_link** | Enum [true, false] |  | [optional] 
 **source** | Enum [Community, ENCODE, IGVF] |  | [optional] 
 **class** | Enum [biological relationship, observed data, prediction] |  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[FilesFilesets]**](FilesFilesets.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Genes**
> array[Gene] Genes(gene_id = var.gene_id, hgnc_id = var.hgnc_id, entrez = var.entrez, name = var.name, region = var.region, synonym = var.synonym, collection = var.collection, study_set = var.study_set, gene_type = var.gene_type, organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve genes.<br>   Example: organism = Homo sapiens, <br>   name = SAMD1, <br>   region = chr1:212565300-212620800, <br>   synonym = CKLF, <br>   collection = ACMG73, <br>   study_set = MorPhiC, <br>   gene_id = ENSG00000187642 (Ensembl ids), <br>   gene_type = protein_coding, <br>   hgnc_id = HGNC:28208, <br>   entrez = ENTREZ:84808. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_entrez <- "entrez_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_collection <- "collection_example" # character |  (Optional)
var_study_set <- "study_set_example" # character |  (Optional)
var_gene_type <- "gene_type_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Genes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, entrez = var_entrez, name = var_name, region = var_region, synonym = var_synonym, collection = var_collection, study_set = var_study_set, gene_type = var_gene_type, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$Genes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, entrez = var_entrez, name = var_name, region = var_region, synonym = var_synonym, collection = var_collection, study_set = var_study_set, gene_type = var_gene_type, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **entrez** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **collection** | Enum [ACMG73, GREGoR, Morphic, StanfordFCC] |  | [optional] 
 **study_set** | Enum [16p11.2 Deletion - Shendure, Blood Master Regulators, Cardiac - Engreitz, Cardiac - Munshi, Cardiac - Quertermous, Cardiometabolic TFs, Cardiomyopathies-Steinmetz, CdLS-like phenotype, Coronary Artery Disease - Lettre, DiGeorge Syndrome - Park, DiGeorge Syndrome - Shendure, GREGoR Candidate - BCM, GREGoR Candidate - Broad, GREGoR Candidate - GSS, GREGoR Candidate - UW, IGVFFI6537JARB, IGVFFI7781XWZY, LDL-C uptake, MorPhiC, Pancreatic differentiation, Pulmonary arterial hypertension - Rabinovitch, SGE-Starita, Strong Selection - Sunyaev, VAMP-seq, Williams Syndrome - Park, Williams Syndrome - Shendure] |  | [optional] 
 **gene_type** | Enum [IG_C_gene, IG_C_pseudogene, IG_D_gene, IG_J_gene, IG_J_pseudogene, IG_V_gene, IG_V_pseudogene, IG_pseudogene, Mt_rRNA, Mt_tRNA, TEC, TR_C_gene, TR_D_gene, TR_J_gene, TR_J_pseudogene, TR_V_gene, TR_V_pseudogene, artifact, lncRNA, miRNA, misc_RNA, processed_pseudogene, protein_coding, pseudogene, rRNA, rRNA_pseudogene, ribozyme, sRNA, scRNA, scaRNA, snRNA, snoRNA, transcribed_processed_pseudogene, transcribed_unitary_pseudogene, transcribed_unprocessed_pseudogene, translated_processed_pseudogene, translated_unprocessed_pseudogene, unitary_pseudogene, unprocessed_pseudogene, vault_RNA] |  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[Gene]**](Gene.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesFromDiseases**
> array[DiseasesFromGenes] GenesFromDiseases(disease_id = var.disease_id, disease_name = var.disease_name, source = var.source, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve disease-gene pairs from Orphanet and GenCC by diseases.<br>     Set verbose = true to retrieve full info on the genes and diseases. <br>     Example: disease_name = fibrosis, <br>     disease_id = Orphanet_586, <br>     source = Orphanet. <br>     Either disease_name or disease_id are required. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_disease_id <- "disease_id_example" # character |  (Optional)
var_disease_name <- "disease_name_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesFromDiseases(disease_id = var_disease_id, disease_name = var_disease_name, source = var_source, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesFromDiseases(disease_id = var_disease_id, disease_name = var_disease_name, source = var_source, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disease_id** | **character**|  | [optional] 
 **disease_name** | **character**|  | [optional] 
 **source** | Enum [GenCC, Orphanet] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[DiseasesFromGenes]**](DiseasesFromGenes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesFromGenomicElements**
> array[GenesFromGenomicElements] GenesFromGenomicElements(region = var.region, source_annotation = var.source_annotation, region_type = var.region_type, method = var.method, files_fileset = var.files_fileset, biosample_term = var.biosample_term, biological_context = var.biological_context, cell_annotation = var.cell_annotation, cell_annotation_term = var.cell_annotation_term, source = var.source, score = var.score, effect_size = var.effect_size, log2_fc = var.log2_fc, neg_log10_pvalue = var.neg_log10_pvalue, neg_log10_pvalue_adj = var.neg_log10_pvalue_adj, z_score = var.z_score, idr = var.idr, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve genomic elements and gene pairs by querying genomic elements.<br>     Set organism = Mus musculus for mouse data; the default is Homo sapiens.<br>     At least one of these properties must be defined: region, files_fileset, or method. <br>     Set verbose = true to retrieve full info on the genes and genomic element.<br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"crispr-screen\">CRISPR screen</button> <button class=\"method-example-tab\" data-method-example-tab=\"encode-re2g\">ENCODE-rE2G</button> <button class=\"method-example-tab\" data-method-example-tab=\"perturb-seq\">Perturb-seq</button> <button class=\"method-example-tab\" data-method-example-tab=\"sce2g\">scE2G</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"crispr-screen\"> <strong>CRISPR screen:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>region = chr1:4126791-4126792 (maximum length: 10kb)</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>files_fileset = ENCFF968BZL</li> <li>method = CRISPR screen</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"encode-re2g\"> <strong>ENCODE-rE2G:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>region = chr1:920016-920017 (maximum length: 10kb)</li> <li>method = ENCODE-rE2G</li> <li>files_fileset = ENCFF666WIM</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>files_fileset = ENCFF666WIM</li> <li>method = ENCODE-rE2G</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"perturb-seq\"> <strong>Perturb-seq:</strong> <div class=\"method-query-example\"> <strong>Query by region</strong>  <ul> <li>region = chr1:212699339-212700840 (maximum length: 10kb)</li> <li>method = Perturb-seq</li> </ul> </div> <div class=\"method-query-example\"> <strong>Query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI3069QCRA</li> <li>method = Perturb-seq</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sce2g\"> <strong>scE2G:</strong> <div class=\"method-query-example\"> <strong>Query by region</strong>  <ul> <li>region = chr1:169893055-169894554 (maximum length: 10kb)</li> <li>method = scE2G</li> </ul> </div> <div class=\"method-query-example\"> <strong>Query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI4235YTNW</li> <li>method = scE2G</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_region <- "region_example" # character |  (Optional)
var_source_annotation <- "source_annotation_example" # character |  (Optional)
var_region_type <- "region_type_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_cell_annotation <- "cell_annotation_example" # character |  (Optional)
var_cell_annotation_term <- "cell_annotation_term_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_score <- "score_example" # character |  (Optional)
var_effect_size <- "effect_size_example" # character |  (Optional)
var_log2_fc <- "log2_fc_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_neg_log10_pvalue_adj <- "neg_log10_pvalue_adj_example" # character |  (Optional)
var_z_score <- "z_score_example" # character |  (Optional)
var_idr <- "idr_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesFromGenomicElements(region = var_region, source_annotation = var_source_annotation, region_type = var_region_type, method = var_method, files_fileset = var_files_fileset, biosample_term = var_biosample_term, biological_context = var_biological_context, cell_annotation = var_cell_annotation, cell_annotation_term = var_cell_annotation_term, source = var_source, score = var_score, effect_size = var_effect_size, log2_fc = var_log2_fc, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, z_score = var_z_score, idr = var_idr, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesFromGenomicElements(region = var_region, source_annotation = var_source_annotation, region_type = var_region_type, method = var_method, files_fileset = var_files_fileset, biosample_term = var_biosample_term, biological_context = var_biological_context, cell_annotation = var_cell_annotation, cell_annotation_term = var_cell_annotation_term, source = var_source, score = var_score, effect_size = var_effect_size, log2_fc = var_log2_fc, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, z_score = var_z_score, idr = var_idr, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **character**|  | [optional] 
 **source_annotation** | Enum [CA-CTCF: chromatin accessible + CTCF binding, CA-H3K4me3: chromatin accessible + H3K4me3 high signal, CA-TF: chromatin accessible + TF binding, CA: chromatin accessible, PLS: Promoter-like signal, TF: TF binding, candidate enhancer, dELS: distal Enhancer-like signal, distal element, enhancer, genic, intergenic, negative control, pELS: proximal Enhancer-like signal, promoter] |  | [optional] 
 **region_type** | Enum [accessible dna elements, candidate cis regulatory element, tested elements] |  | [optional] 
 **method** | Enum [CRISPR screen, ENCODE-rE2G, Perturb-seq, scE2G] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **cell_annotation** | **character**|  | [optional] 
 **cell_annotation_term** | **character**|  | [optional] 
 **source** | Enum [ENCODE, IGVF] |  | [optional] 
 **score** | **character**|  | [optional] 
 **effect_size** | **character**|  | [optional] 
 **log2_fc** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **neg_log10_pvalue_adj** | **character**|  | [optional] 
 **z_score** | **character**|  | [optional] 
 **idr** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromGenomicElements]**](GenesFromGenomicElements.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesFromPathways**
> array[GenesFromPathways] GenesFromPathways(pathway_id = var.pathway_id, pathway_name = var.pathway_name, name_aliases = var.name_aliases, disease_ontology_terms = var.disease_ontology_terms, biological_process = var.biological_process, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve genes from pathways.<br>   Set verbose = true to retrieve full info on the genes. <br>   At least one of these fields is required: pathway_id, pathway_name, or name_aliases <br>   Example: pathway_id = R-HSA-164843, <br>   pathway_name = 2-LTR circle formation, <br>   name_aliases = 2-LTR circle formation, <br>   disease_ontology_terms = DOID_526, <br>   biological_process = GO_0006015. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_pathway_id <- "pathway_id_example" # character |  (Optional)
var_pathway_name <- "pathway_name_example" # character |  (Optional)
var_name_aliases <- "name_aliases_example" # character |  (Optional)
var_disease_ontology_terms <- "disease_ontology_terms_example" # character |  (Optional)
var_biological_process <- "biological_process_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesFromPathways(pathway_id = var_pathway_id, pathway_name = var_pathway_name, name_aliases = var_name_aliases, disease_ontology_terms = var_disease_ontology_terms, biological_process = var_biological_process, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesFromPathways(pathway_id = var_pathway_id, pathway_name = var_pathway_name, name_aliases = var_name_aliases, disease_ontology_terms = var_disease_ontology_terms, biological_process = var_biological_process, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pathway_id** | **character**|  | [optional] 
 **pathway_name** | **character**|  | [optional] 
 **name_aliases** | **character**|  | [optional] 
 **disease_ontology_terms** | **character**|  | [optional] 
 **biological_process** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromPathways]**](GenesFromPathways.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesFromProteins**
> array[GenesFromProteins] GenesFromProteins(protein_id = var.protein_id, protein_name = var.protein_name, uniprot_name = var.uniprot_name, uniprot_full_name = var.uniprot_full_name, dbxrefs = var.dbxrefs, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve genes from proteins.<br>   Set verbose = true to retrieve full info on the genes.<br>   Protein IDs support the following formats: ENSP00000384707.1 or ENSP00000384707 (Ensembl IDs) or P49711-2 (Uniprot ids)<br>   Example: protein_id = ENSP00000384707, <br>   protein_name = CTCF, <br>   uniprot_name = CTCF_HUMAN, <br>   uniprot_full_name = Transcriptional repressor CTCF, <br>   dbxrefs = P49711, <br>   organism = Homo sapiens. <br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_protein_name <- "protein_name_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_uniprot_full_name <- "uniprot_full_name_example" # character |  (Optional)
var_dbxrefs <- "dbxrefs_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein_id** | **character**|  | [optional] 
 **protein_name** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **uniprot_full_name** | **character**|  | [optional] 
 **dbxrefs** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromProteins]**](GenesFromProteins.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesFromTranscripts**
> array[GenesFromTranscripts] GenesFromTranscripts(transcript_id = var.transcript_id, region = var.region, transcript_type = var.transcript_type, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve genes from transcripts.<br>     Set verbose = true to retrieve full info on the genes.<br>     At least one of these fields is required: transcript_id, region or transcript_type. <br>     Example: transcript_id = ENST00000440782, <br>     region = chr1:711800-740000, <br>     transcript_type = protein_coding,<br>     organism = Homo sapiens, <br>     transcript_id = ENST00000443707 (Ensembl ID). <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_transcript_id <- "transcript_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_transcript_type <- "transcript_type_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesFromTranscripts(transcript_id = var_transcript_id, region = var_region, transcript_type = var_transcript_type, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesFromTranscripts(transcript_id = var_transcript_id, region = var_region, transcript_type = var_transcript_type, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transcript_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **transcript_type** | Enum [IG_C_gene, IG_C_pseudogene, IG_D_gene, IG_J_gene, IG_J_pseudogene, IG_V_gene, IG_V_pseudogene, IG_pseudogene, Mt_rRNA, Mt_tRNA, TEC, TR_C_gene, TR_D_gene, TR_J_gene, TR_J_pseudogene, TR_V_gene, TR_V_pseudogene, artifact, lncRNA, miRNA, misc_RNA, non_stop_decay, nonsense_mediated_decay, processed_pseudogene, processed_transcript, protein_coding, protein_coding_CDS_not_defined, protein_coding_LoF, pseudogene, rRNA, rRNA_pseudogene, retained_intron, ribozyme, sRNA, scRNA, scaRNA, snRNA, snoRNA, transcribed_processed_pseudogene, transcribed_unitary_pseudogene, transcribed_unprocessed_pseudogene, translated_processed_pseudogene, translated_unprocessed_pseudogene, unitary_pseudogene, unprocessed_pseudogene, vault_RNA] |  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromTranscripts]**](GenesFromTranscripts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesFromVariants**
> array[GenesFromVariants] GenesFromVariants(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region, neg_log10_pvalue = var.neg_log10_pvalue, effect_size = var.effect_size, posterior_inclusion_probability = var.posterior_inclusion_probability, log2_fc = var.log2_fc, significant = var.significant, biosample_term = var.biosample_term, biological_context = var.biological_context, label = var.label, method = var.method, files_fileset = var.files_fileset, source = var.source, name = var.name, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve variant-gene pairs including eQTLs & splice QTLs from AFGR and eQTL Catalogue, and CRISPR screens from IGVF, by variants.<br>     The following parameters can be used to set thresholds on -log10 p_value: gt (>), gte (>=), lt (<), lte (<=).<br>     posterior_inclusion_probability and log2FC also accept plain numbers (exact match) or the same gt/gte/lt/lte range syntax. significant only accepts true (omit the parameter to not filter on it).<br>     Set verbose = true to retrieve full info on the corresponding variants and genes.<br>     At least one of these properties must be defined: spdi, hgvs, rsid, ca_id, variant_id, region, method, or files_filesets. <br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"eqtl\">eQTL</button> <button class=\"method-example-tab\" data-method-example-tab=\"spliceqtl\">spliceQTL</button> <button class=\"method-example-tab\" data-method-example-tab=\"variant-effects\">Variant-EFFECTS</button> <button class=\"method-example-tab\" data-method-example-tab=\"crispr-screen\">CRISPR screen</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"eqtl\"> <strong>eQTL:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>spdi = NC_000001.11:40241653:TGAA:TGAAATTGAA</li> <li>effect_size = gte:0.3</li> <li>method = eQTL</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>region = chr1:40241650-40241759 (maximum length: 10kb)</li> <li>method = eQTL</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"spliceqtl\"> <strong>spliceQTL:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>spdi = NC_000001.11:898757:AAAAAA:AAAAAAA</li> <li>effect_size = gte:0.3</li> <li>method = spliceQTL</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>region = chr1:898750-898759 (maximum length: 10kb)</li> <li>method = spliceQTL</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"variant-effects\"> <strong>Variant-EFFECTS:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>spdi = NC_000010.11:79347741:AGGT:TCAG</li> <li>effect_size = lt:-0.6</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>region = chr10:79347740-79347749 (maximum length: 10kb)</li> <li>method = CRISPR screen</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"crispr-screen\"> <strong>CRISPR screen:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000016.10:28930710:G:A</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr16:28930700-28930800 (maximum length: 10kb)</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by significance thresholds</strong>  <ul> <li>region = chr16:28930700-28930800 (maximum length: 10kb)</li> <li>posterior_inclusion_probability = gte:0.1</li> <li>log2FC = lt:-0.5</li> <li>significant = true</li> <li>method = CRISPR screen</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_effect_size <- "effect_size_example" # character |  (Optional)
var_posterior_inclusion_probability <- "posterior_inclusion_probability_example" # character |  (Optional)
var_log2_fc <- "log2_fc_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_label <- "label_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, neg_log10_pvalue = var_neg_log10_pvalue, effect_size = var_effect_size, posterior_inclusion_probability = var_posterior_inclusion_probability, log2_fc = var_log2_fc, significant = var_significant, biosample_term = var_biosample_term, biological_context = var_biological_context, label = var_label, method = var_method, files_fileset = var_files_fileset, source = var_source, name = var_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, neg_log10_pvalue = var_neg_log10_pvalue, effect_size = var_effect_size, posterior_inclusion_probability = var_posterior_inclusion_probability, log2_fc = var_log2_fc, significant = var_significant, biosample_term = var_biosample_term, biological_context = var_biological_context, label = var_label, method = var_method, files_fileset = var_files_fileset, source = var_source, name = var_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **effect_size** | **character**|  | [optional] 
 **posterior_inclusion_probability** | **character**|  | [optional] 
 **log2_fc** | **character**|  | [optional] 
 **significant** | Enum [true] |  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **label** | Enum [eQTL, spliceQTL, variant effect on gene expression] |  | [optional] 
 **method** | Enum [CRISPR screen, eQTL, spliceQTL] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **source** | Enum [AFGR, EBI, IGVF] |  | [optional] 
 **name** | Enum [modulates expression of, modulates splicing of] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromVariants]**](GenesFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesGenes**
> array[GenesGenes] GenesGenes(gene_id = var.gene_id, hgnc_id = var.hgnc_id, gene_name = var.gene_name, synonym = var.synonym, region = var.region, associated_gene_id = var.associated_gene_id, associated_hgnc_id = var.associated_hgnc_id, associated_gene_name = var.associated_gene_name, associated_synonym = var.associated_synonym, z_score = var.z_score, interaction_type = var.interaction_type, label = var.label, method = var.method, source = var.source, name = var.name, files_fileset = var.files_fileset, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve coexpressed gene pairs from CoXPresdb and genetic interactions from BioGRID. <br>     The following parameters can be used to set thresholds on z_score: gt (>), gte (>=), lt (<), lte (<=). z_score only exists on CoXPresdb edges; BioGRID edges do not have this field at all.<br>     At least one of these fields is required: gene_id, hgnc_id, gene_name, synonym. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by source</strong> <p class=\"method-example-description\">These examples are grouped by source; use the <code>source</code> filter to return data from a specific source.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"biogrid\">BioGRID</button> <button class=\"method-example-tab\" data-method-example-tab=\"coxpresdb\">COXPRESdb</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"biogrid\"> <strong>BioGRID:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>gene_id = ENSG00000112592</li> <li>associated_gene_id = ENSG00000163132</li> <li>source = BioGRID</li> <li>files_fileset = IGVFFI4317VDGK</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>gene_id = ENSG00000112592</li> <li>source = BioGRID</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"coxpresdb\"> <strong>COXPRESdb:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>gene_id = ENSG00000153048</li> <li>associated_gene_id = ENSG00000233369</li> <li>source = COXPRESdb</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>gene_id = ENSG00000153048</li> <li>source = COXPRESdb</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_associated_gene_id <- "associated_gene_id_example" # character |  (Optional)
var_associated_hgnc_id <- "associated_hgnc_id_example" # character |  (Optional)
var_associated_gene_name <- "associated_gene_name_example" # character |  (Optional)
var_associated_synonym <- "associated_synonym_example" # character |  (Optional)
var_z_score <- "z_score_example" # character |  (Optional)
var_interaction_type <- "interaction_type_example" # character |  (Optional)
var_label <- "label_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, associated_gene_id = var_associated_gene_id, associated_hgnc_id = var_associated_hgnc_id, associated_gene_name = var_associated_gene_name, associated_synonym = var_associated_synonym, z_score = var_z_score, interaction_type = var_interaction_type, label = var_label, method = var_method, source = var_source, name = var_name, files_fileset = var_files_fileset, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, associated_gene_id = var_associated_gene_id, associated_hgnc_id = var_associated_hgnc_id, associated_gene_name = var_associated_gene_name, associated_synonym = var_associated_synonym, z_score = var_z_score, interaction_type = var_interaction_type, label = var_label, method = var_method, source = var_source, name = var_name, files_fileset = var_files_fileset, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **associated_gene_id** | **character**|  | [optional] 
 **associated_hgnc_id** | **character**|  | [optional] 
 **associated_gene_name** | **character**|  | [optional] 
 **associated_synonym** | **character**|  | [optional] 
 **z_score** | **character**|  | [optional] 
 **interaction_type** | Enum [dosage growth defect (sensu BioGRID), dosage lethality (sensu BioGRID), dosage rescue (sensu BioGRID), negative genetic interaction (sensu BioGRID), phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), positive genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID), synthetic rescue (sensu BioGRID)] |  | [optional] 
 **label** | Enum [co-expression, genetic interference] |  | [optional] 
 **method** | Enum [COXPRESdb, dosage growth defect (sensu BioGRID), dosage lethality (sensu BioGRID), dosage lethality (sensu BioGRID), phenotypic enhancement (sensu BioGRID), dosage lethality (sensu BioGRID), synthetic lethality (sensu BioGRID), dosage rescue (sensu BioGRID), dosage rescue (sensu BioGRID), phenotypic enhancement (sensu BioGRID), dosage rescue (sensu BioGRID), synthetic growth defect (sensu BioGRID), dosage rescue (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID), negative genetic interaction (sensu BioGRID), negative genetic interaction (sensu BioGRID), phenotypic suppression (sensu BioGRID), negative genetic interaction (sensu BioGRID), positive genetic interaction (sensu BioGRID), negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID), negative genetic interaction (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID), negative genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID), phenotypic enhancement (sensu BioGRID), phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID), phenotypic enhancement (sensu BioGRID), phenotypic suppression (sensu BioGRID), synthetic lethality (sensu BioGRID), phenotypic enhancement (sensu BioGRID), positive genetic interaction (sensu BioGRID), phenotypic enhancement (sensu BioGRID), synthetic growth defect (sensu BioGRID), phenotypic enhancement (sensu BioGRID), synthetic lethality (sensu BioGRID), phenotypic suppression (sensu BioGRID), positive genetic interaction (sensu BioGRID), positive genetic interaction (sensu BioGRID), synthetic lethality (sensu BioGRID), positive genetic interaction (sensu BioGRID), synthetic rescue (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic growth defect (sensu BioGRID), synthetic lethality (sensu BioGRID), synthetic haploinsufficiency (sensu BioGRID), synthetic lethality (sensu BioGRID), synthetic rescue (sensu BioGRID)] |  | [optional] 
 **source** | Enum [BioGRID, COXPRESdb] |  | [optional] 
 **name** | Enum [coexpressed with, interacts with] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesGenes]**](GenesGenes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesGenomicElementsScoreSummary**
> GenesGenomicElementsScoreSummary GenesGenomicElementsScoreSummary(gene_id, score_field, method = var.method, files_fileset = var.files_fileset, source = var.source, biosample_term = var.biosample_term, biological_context = var.biological_context, cell_annotation = var.cell_annotation, cell_annotation_term = var.cell_annotation_term, page = 0, limit = var.limit)



Observed min/max and counts for a score field across every genomic-element-to-gene edge for one gene - without paginating through the edges themselves.<br>     Optional filters are combined with and matched exactly.<br>     Results are grouped by every distinct combination of those fields plus perturbation, so     measurements from incompatible sources are never pooled. Groups with no numeric scores are omitted, and total_edge_count     only counts edges with a numeric score.<br>     Default page size is 25, maximum 500; pagination is     0-based.<br><br><div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"crispr-screen\">CRISPR screen</button> <button class=\"method-example-tab\" data-method-example-tab=\"perturb-seq\">Perturb-seq</button> <button class=\"method-example-tab\" data-method-example-tab=\"encode-re2g\">ENCODE-rE2G</button> <button class=\"method-example-tab\" data-method-example-tab=\"sce2g\">scE2G</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"crispr-screen\"> <strong>CRISPR screen:</strong> <div class=\"method-query-example\"> <strong>Element effect sizes on a CRISPR screen target gene</strong>  <ul> <li>gene_id = ENSG00000102145</li> <li>score_field = effect_size</li> <li>method = CRISPR screen</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"perturb-seq\"> <strong>Perturb-seq:</strong> <div class=\"method-query-example\"> <strong>Perturb-seq significance distribution for a gene</strong>  <ul> <li>gene_id = ENSG00000108179</li> <li>score_field = neg_log10_pvalue</li> <li>method = Perturb-seq</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"encode-re2g\"> <strong>ENCODE-rE2G:</strong> <div class=\"method-query-example\"> <strong>ENCODE-rE2G prediction scores for a gene</strong>  <ul> <li>gene_id = ENSG00000108179</li> <li>score_field = score</li> <li>method = ENCODE-rE2G</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sce2g\"> <strong>scE2G:</strong> <div class=\"method-query-example\"> <strong>scE2G prediction scores for a gene</strong>  <ul> <li>gene_id = ENSG00000108179</li> <li>score_field = score</li> <li>method = scE2G</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character | 
var_score_field <- "score_field_example" # character | 
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_cell_annotation <- "cell_annotation_example" # character |  (Optional)
var_cell_annotation_term <- "cell_annotation_term_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesGenomicElementsScoreSummary(var_gene_id, var_score_field, method = var_method, files_fileset = var_files_fileset, source = var_source, biosample_term = var_biosample_term, biological_context = var_biological_context, cell_annotation = var_cell_annotation, cell_annotation_term = var_cell_annotation_term, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesGenomicElementsScoreSummary(var_gene_id, var_score_field, method = var_method, files_fileset = var_files_fileset, source = var_source, biosample_term = var_biosample_term, biological_context = var_biological_context, cell_annotation = var_cell_annotation, cell_annotation_term = var_cell_annotation_term, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | 
 **score_field** | Enum [score, log2FC, effect_size, z_score, t_score, idr, neg_log10_pvalue, neg_log10_pvalue_adj] |  | 
 **method** | Enum [CRISPR screen, ENCODE-rE2G, Perturb-seq, scE2G] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **source** | Enum [ENCODE, IGVF] |  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **cell_annotation** | **character**|  | [optional] 
 **cell_annotation_term** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**GenesGenomicElementsScoreSummary**](GenesGenomicElementsScoreSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesProteinsFromVariants**
> array[GenesProteinsFromVariants] GenesProteinsFromVariants(variant_id, page = 0, limit = var.limit)



Retrieve genes and proteins associated with a variant matched by ID. <br>   Example: variant_id = NC_000001.11:630556:T:C<br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_variant_id <- "variant_id_example" # character | 
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesProteinsFromVariants(var_variant_id, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesProteinsFromVariants(var_variant_id, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variant_id** | **character**|  | 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesProteinsFromVariants]**](GenesProteinsFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesProteinsGenesProteins**
> array[GenesProteinsGenesProteins] GenesProteinsGenesProteins(query, page = 0, limit = var.limit)



Retrieve genes or proteins associated with either genes or proteins that match a query. <br>   Example: query = ATF1.<br>   The limit parameter controls the page size of related items and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_query <- "query_example" # character | 
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesProteinsGenesProteins(var_query, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesProteinsGenesProteins(var_query, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**|  | 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesProteinsGenesProteins]**](GenesProteinsGenesProteins.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesStructure**
> array[GenesStructure] GenesStructure(gene_id = var.gene_id, gene_name = var.gene_name, transcript_id = var.transcript_id, transcript_name = var.transcript_name, protein_id = var.protein_id, protein_name = var.protein_name, region = var.region, type = var.type, organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve genes structure.<br>   you can filter by one of the four categories: gene, transcript, protein or region. <br>   Example: organism = Homo sapiens, <br>   region = chr1:212565300-212620800, <br>   gene_id = ENSG00000187642 (Ensembl ids), <br>   gene_name = ATF3, <br>   transcript_id = ENST00000443707 (Ensembl ids), <br>   type = exon, <br>   protein_id = ENSP00000305769, <br>   protein_name = SMAD1. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_transcript_id <- "transcript_id_example" # character |  (Optional)
var_transcript_name <- "transcript_name_example" # character |  (Optional)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_protein_name <- "protein_name_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_type <- "type_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesStructure(gene_id = var_gene_id, gene_name = var_gene_name, transcript_id = var_transcript_id, transcript_name = var_transcript_name, protein_id = var_protein_id, protein_name = var_protein_name, region = var_region, type = var_type, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesStructure(gene_id = var_gene_id, gene_name = var_gene_name, transcript_id = var_transcript_id, transcript_name = var_transcript_name, protein_id = var_protein_id, protein_name = var_protein_name, region = var_region, type = var_type, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **transcript_id** | **character**|  | [optional] 
 **transcript_name** | **character**|  | [optional] 
 **protein_id** | **character**|  | [optional] 
 **protein_name** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **type** | Enum [CDS, UTR, exon, intron, start_codon, stop_codon] |  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesStructure]**](GenesStructure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesTranscriptsGenes**
> array[GenesTranscriptsGenes] GenesTranscriptsGenes(gene_id = var.gene_id, gene_name = var.gene_name, transcript_id = var.transcript_id, readout_gene_id = var.readout_gene_id, readout_gene_name = var.readout_gene_name, morf_id = var.morf_id, files_fileset = var.files_fileset, method = var.method, perturbation = var.perturbation, significant = var.significant, biological_context = var.biological_context, biosample_term = var.biosample_term, log2_fc = var.log2_fc, p_value = var.p_value, p_value_adj = var.p_value_adj, neg_log10_pvalue = var.neg_log10_pvalue, neg_log10_pvalue_adj = var.neg_log10_pvalue_adj, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve MORF gene overexpression effects through the source gene–transcript relationship.<br> Source gene_id and transcript_id identify the overexpressed construct; readout_gene_id identifies the readout gene. Filter by a source gene, transcript, readout gene, morf_id, files_fileset, or method. Set verbose=true to expand gene and transcript nodes. Pagination is 0-based; maximum page size is 500.<br><br><div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"morf-screen\">MORF screen</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"morf-screen\"> <strong>MORF screen:</strong> <div class=\"method-query-example\"> <strong>AATF transcript overexpression effect on TOX</strong>  <ul> <li>gene_id = ENSG00000275700</li> <li>transcript_id = ENST00000619387</li> <li>readout_gene_id = ENSG00000198846</li> <li>files_fileset = IGVFFI6734IWRB</li> </ul> </div> <div class=\"method-query-example\"> <strong>All MORF effects on TOX</strong>  <ul> <li>readout_gene_id = ENSG00000198846</li> <li>method = MORF screen</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_transcript_id <- "transcript_id_example" # character |  (Optional)
var_readout_gene_id <- "readout_gene_id_example" # character |  (Optional)
var_readout_gene_name <- "readout_gene_name_example" # character |  (Optional)
var_morf_id <- "morf_id_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_perturbation <- "perturbation_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_log2_fc <- "log2_fc_example" # character |  (Optional)
var_p_value <- "p_value_example" # character |  (Optional)
var_p_value_adj <- "p_value_adj_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_neg_log10_pvalue_adj <- "neg_log10_pvalue_adj_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesTranscriptsGenes(gene_id = var_gene_id, gene_name = var_gene_name, transcript_id = var_transcript_id, readout_gene_id = var_readout_gene_id, readout_gene_name = var_readout_gene_name, morf_id = var_morf_id, files_fileset = var_files_fileset, method = var_method, perturbation = var_perturbation, significant = var_significant, biological_context = var_biological_context, biosample_term = var_biosample_term, log2_fc = var_log2_fc, p_value = var_p_value, p_value_adj = var_p_value_adj, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesTranscriptsGenes(gene_id = var_gene_id, gene_name = var_gene_name, transcript_id = var_transcript_id, readout_gene_id = var_readout_gene_id, readout_gene_name = var_readout_gene_name, morf_id = var_morf_id, files_fileset = var_files_fileset, method = var_method, perturbation = var_perturbation, significant = var_significant, biological_context = var_biological_context, biosample_term = var_biosample_term, log2_fc = var_log2_fc, p_value = var_p_value, p_value_adj = var_p_value_adj, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **transcript_id** | **character**|  | [optional] 
 **readout_gene_id** | **character**|  | [optional] 
 **readout_gene_name** | **character**|  | [optional] 
 **morf_id** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **method** | Enum [MORF screen] |  | [optional] 
 **perturbation** | Enum [ORF overexpression] |  | [optional] 
 **significant** | Enum [true] |  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **log2_fc** | **character**|  | [optional] 
 **p_value** | **character**|  | [optional] 
 **p_value_adj** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **neg_log10_pvalue_adj** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesTranscriptsGenes]**](GenesTranscriptsGenes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesTranscriptsGenomicElements**
> array[GenesTranscriptsGenomicElements] GenesTranscriptsGenomicElements(gene_id = var.gene_id, gene_name = var.gene_name, transcript_id = var.transcript_id, genomic_element_id = var.genomic_element_id, accessible_region = var.accessible_region, files_fileset = var.files_fileset, method = var.method, perturbation = var.perturbation, source = var.source, significant = var.significant, biological_context = var.biological_context, biosample_term = var.biosample_term, base_mean = var.base_mean, log2_fc = var.log2_fc, p_value = var.p_value, p_value_adj = var.p_value_adj, neg_log10_pvalue = var.neg_log10_pvalue, neg_log10_pvalue_adj = var.neg_log10_pvalue_adj, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve gene overexpression effects on chromatin accessibility through the source gene–transcript relationship.<br> Source gene_id and transcript_id identify the overexpressed construct; genomic_element_id or accessible_region identifies the readout peaks. Filter by a source gene, transcript, peak, region, files_fileset, or method. Set verbose=true to expand gene, transcript, and genomic element nodes. Pagination is 0-based; maximum page size is 500.<br><br><div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"overexpression-atac\">ATAC-seq</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"overexpression-atac\"> <strong>ATAC-seq:</strong> <div class=\"method-query-example\"> <strong>BATF3 transcript overexpression effects on accessibility</strong>  <ul> <li>gene_id = ENSG00000123685</li> <li>transcript_id = ENST00000243440</li> <li>files_fileset = IGVFFI0911IUZS</li> <li>significant = true</li> </ul> </div> <div class=\"method-query-example\"> <strong>Differential accessibility in the second BATF3 analysis</strong>  <ul> <li>files_fileset = IGVFFI2320OTYL</li> <li>p_value_adj = lt:0.05</li> <li>verbose = true</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_transcript_id <- "transcript_id_example" # character |  (Optional)
var_genomic_element_id <- "genomic_element_id_example" # character |  (Optional)
var_accessible_region <- "accessible_region_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_perturbation <- "perturbation_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_base_mean <- "base_mean_example" # character |  (Optional)
var_log2_fc <- "log2_fc_example" # character |  (Optional)
var_p_value <- "p_value_example" # character |  (Optional)
var_p_value_adj <- "p_value_adj_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_neg_log10_pvalue_adj <- "neg_log10_pvalue_adj_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # integer |  (Optional)
var_limit <- 56 # integer |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesTranscriptsGenomicElements(gene_id = var_gene_id, gene_name = var_gene_name, transcript_id = var_transcript_id, genomic_element_id = var_genomic_element_id, accessible_region = var_accessible_region, files_fileset = var_files_fileset, method = var_method, perturbation = var_perturbation, source = var_source, significant = var_significant, biological_context = var_biological_context, biosample_term = var_biosample_term, base_mean = var_base_mean, log2_fc = var_log2_fc, p_value = var_p_value, p_value_adj = var_p_value_adj, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesTranscriptsGenomicElements(gene_id = var_gene_id, gene_name = var_gene_name, transcript_id = var_transcript_id, genomic_element_id = var_genomic_element_id, accessible_region = var_accessible_region, files_fileset = var_files_fileset, method = var_method, perturbation = var_perturbation, source = var_source, significant = var_significant, biological_context = var_biological_context, biosample_term = var_biosample_term, base_mean = var_base_mean, log2_fc = var_log2_fc, p_value = var_p_value, p_value_adj = var_p_value_adj, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **transcript_id** | **character**|  | [optional] 
 **genomic_element_id** | **character**|  | [optional] 
 **accessible_region** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **method** | Enum [ATAC-seq] |  | [optional] 
 **perturbation** | Enum [ORF overexpression] |  | [optional] 
 **source** | Enum [IGVF] |  | [optional] 
 **significant** | Enum [true, false] |  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **base_mean** | **character**|  | [optional] 
 **log2_fc** | **character**|  | [optional] 
 **p_value** | **character**|  | [optional] 
 **p_value_adj** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **neg_log10_pvalue_adj** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **integer**|  | [optional] [default to 0]
 **limit** | **integer**|  | [optional] 

### Return type

[**array[GenesTranscriptsGenomicElements]**](GenesTranscriptsGenomicElements.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenesVariantsScoreSummary**
> GenesVariantsScoreSummary GenesVariantsScoreSummary(gene_id, score_field, files_fileset = var.files_fileset, source = var.source, biosample_term = var.biosample_term, biological_context = var.biological_context, perturbation = var.perturbation, page = 0, limit = var.limit)



Observed min/max and counts for a score field across every IGVF CRISPR screen variant-to-gene edge for one gene - without paginating through the edges themselves. Always restricted to method = \"CRISPR screen\" and label = \"variant effect on gene expression\", so QTL records sharing the variants_genes collection (AFGR eQTL/spliceQTL, EBI eQTL Catalog) are excluded.<br>     Optional filters are     combined with and matched exactly. Perturbation filters the stored perturbation field.<br>     Results are grouped by every distinct combination of those fields, so measurements from     incompatible sources are never pooled.     Groups with no numeric scores are omitted, and total_edge_count only counts edges with a     numeric score.<br>     Default page size is 25, maximum 500; pagination is     0-based.<br><br><div class=\"method-examples\"> <strong>Examples by perturbation</strong> <p class=\"method-example-description\">These examples are grouped by CRISPR perturbation type; use the <code>perturbation</code> filter to return data from a specific modality.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"prime-editing\">Prime editing</button> <button class=\"method-example-tab\" data-method-example-tab=\"base-editing\">Base editing</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"prime-editing\"> <strong>Prime editing:</strong> <div class=\"method-query-example\"> <strong>Effect size distribution for a prime-edited gene</strong>  <ul> <li>gene_id = ENSG00000108179</li> <li>score_field = effect_size</li> <li>perturbation = CRISPR prime editing</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"base-editing\"> <strong>Base editing:</strong> <div class=\"method-query-example\"> <strong>Effect size distribution for a base-edited gene</strong>  <ul> <li>gene_id = ENSG00000177455</li> <li>score_field = effect_size</li> <li>perturbation = CRISPR base editing</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character | 
var_score_field <- "score_field_example" # character | 
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_perturbation <- "perturbation_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenesVariantsScoreSummary(var_gene_id, var_score_field, files_fileset = var_files_fileset, source = var_source, biosample_term = var_biosample_term, biological_context = var_biological_context, perturbation = var_perturbation, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenesVariantsScoreSummary(var_gene_id, var_score_field, files_fileset = var_files_fileset, source = var_source, biosample_term = var_biosample_term, biological_context = var_biological_context, perturbation = var_perturbation, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | 
 **score_field** | Enum [effect_size, log2FC, neg_log10_pvalue, neg_log10_pvalue_adj, power, posterior_inclusion_probability, coefficient_stddev] |  | 
 **files_fileset** | **character**|  | [optional] 
 **source** | Enum [IGVF] |  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **perturbation** | Enum [CRISPR base editing, CRISPR prime editing] |  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**GenesVariantsScoreSummary**](GenesVariantsScoreSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenomicElements**
> array[GenomicElementFull] GenomicElements(region = var.region, source_annotation = var.source_annotation, type = var.type, method = var.method, source = var.source, organism = "Homo sapiens", page = 0, limit = var.limit, files_fileset = var.files_fileset)



Retrieve genomic elements.<br>   Example: region = chr1:1157520-1158189, <br>   source_annotation = dELS: distal Enhancer-like signal, <br>   type = candidate cis regulatory element, <br>   files_fileset = IGVFFI5749WPVK, <br>   source = ENCODE. <br>   The limit parameter controls the page size and can not exceed 1000. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_region <- "region_example" # character |  (Optional)
var_source_annotation <- "source_annotation_example" # character |  (Optional)
var_type <- "type_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomicElements(region = var_region, source_annotation = var_source_annotation, type = var_type, method = var_method, source = var_source, organism = var_organism, page = var_page, limit = var_limit, files_fileset = var_files_filesetdata_file = "result.txt")
result <- api_instance$GenomicElements(region = var_region, source_annotation = var_source_annotation, type = var_type, method = var_method, source = var_source, organism = var_organism, page = var_page, limit = var_limit, files_fileset = var_files_fileset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **character**|  | [optional] 
 **source_annotation** | Enum [CA-CTCF: chromatin accessible + CTCF binding, CA-H3K4me3: chromatin accessible + H3K4me3 high signal, CA-TF: chromatin accessible + TF binding, CA: chromatin accessible, PLS: Promoter-like signal, TF: TF binding, candidate enhancer, dELS: distal Enhancer-like signal, distal element, enhancer, genic, intergenic, negative control, pELS: proximal Enhancer-like signal, promoter] |  | [optional] 
 **type** | Enum [accessible dna elements, candidate cis regulatory element, tested elements] |  | [optional] 
 **method** | Enum [ATAC-seq, CRISPR screen, ENCODE-rE2G, MPRA, Multiome Perturb-seq, Perturb-seq, caQTL, candidate Cis-Regulatory Elements, scE2G] |  | [optional] 
 **source** | Enum [AFGR, ENCODE, FUNCODE, IGVF] |  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 

### Return type

[**array[GenomicElementFull]**](GenomicElementFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenomicElementsFromBiosamples**
> array[BiosamplesFromGenomicElements] GenomicElementsFromBiosamples(biosample_name = var.biosample_name, method = var.method, source = var.source, files_fileset = var.files_fileset, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve MPRA experiments by querying cell ontology terms. Set organism = Mus musculus for mouse MPRA sequences (GRCm39); the default is Homo sapiens (GRCh38). <br>   Set verbose = true to retrieve full info on the tested genomic elements. <br>   Human MPRA example: organism = Homo sapiens, <br>   biosample_name = hepg2, <br>   method = MPRA, <br>   source = IGVF, <br>   files_fileset = ENCFF475FKV. <br>   Mouse MPRA example: organism = Mus musculus, <br>   files_fileset = IGVFFI0975AQKF (mouse PYS-2 biosample), <br>   method = MPRA, verbose = true. <br>   The limit parameter controls the page size and can not exceed 50. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_biosample_name <- "biosample_name_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomicElementsFromBiosamples(biosample_name = var_biosample_name, method = var_method, source = var_source, files_fileset = var_files_fileset, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenomicElementsFromBiosamples(biosample_name = var_biosample_name, method = var_method, source = var_source, files_fileset = var_files_fileset, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **biosample_name** | **character**|  | [optional] 
 **method** | Enum [MPRA] |  | [optional] 
 **source** | Enum [ENCODE, IGVF] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[BiosamplesFromGenomicElements]**](BiosamplesFromGenomicElements.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenomicElementsFromGenes**
> array[GenesFromGenomicElements] GenomicElementsFromGenes(gene_id = var.gene_id, hgnc_id = var.hgnc_id, gene_name = var.gene_name, synonym = var.synonym, region = var.region, method = var.method, files_fileset = var.files_fileset, biosample_term = var.biosample_term, biological_context = var.biological_context, cell_annotation = var.cell_annotation, cell_annotation_term = var.cell_annotation_term, source = var.source, score = var.score, effect_size = var.effect_size, log2_fc = var.log2_fc, neg_log10_pvalue = var.neg_log10_pvalue, neg_log10_pvalue_adj = var.neg_log10_pvalue_adj, z_score = var.z_score, idr = var.idr, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve genomic elements and gene pairs by querying genes.<br>     Set organism = Mus musculus for mouse data; the default is Homo sapiens.<br>     One of these fields is required: gene_id, hgnc_id, gene_name, synonym, method, or files_fileset. <br>     Set verbose = true to retrieve full info on the genes and genomic element.<br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"crispr-screen\">CRISPR screen</button> <button class=\"method-example-tab\" data-method-example-tab=\"encode-re2g\">ENCODE-rE2G</button> <button class=\"method-example-tab\" data-method-example-tab=\"perturb-seq\">Perturb-seq</button> <button class=\"method-example-tab\" data-method-example-tab=\"sce2g\">scE2G</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"crispr-screen\"> <strong>CRISPR screen:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>gene_id = ENSG00000116198</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>method = CRISPR screen</li> <li>files_fileset = ENCFF968BZL</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"encode-re2g\"> <strong>ENCODE-rE2G:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000225880</li> <li>biosample_term = EFO_0002330</li> <li>method = ENCODE-rE2G</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = ENCFF425TLX</li> <li>method = ENCODE-rE2G</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"perturb-seq\"> <strong>Perturb-seq:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000123685</li> <li>method = Perturb-seq</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI3069QCRA</li> <li>method = Perturb-seq</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sce2g\"> <strong>scE2G:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000156875</li> <li>method = scE2G</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI4235YTNW</li> <li>method = scE2G</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_cell_annotation <- "cell_annotation_example" # character |  (Optional)
var_cell_annotation_term <- "cell_annotation_term_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_score <- "score_example" # character |  (Optional)
var_effect_size <- "effect_size_example" # character |  (Optional)
var_log2_fc <- "log2_fc_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_neg_log10_pvalue_adj <- "neg_log10_pvalue_adj_example" # character |  (Optional)
var_z_score <- "z_score_example" # character |  (Optional)
var_idr <- "idr_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomicElementsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, method = var_method, files_fileset = var_files_fileset, biosample_term = var_biosample_term, biological_context = var_biological_context, cell_annotation = var_cell_annotation, cell_annotation_term = var_cell_annotation_term, source = var_source, score = var_score, effect_size = var_effect_size, log2_fc = var_log2_fc, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, z_score = var_z_score, idr = var_idr, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenomicElementsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, method = var_method, files_fileset = var_files_fileset, biosample_term = var_biosample_term, biological_context = var_biological_context, cell_annotation = var_cell_annotation, cell_annotation_term = var_cell_annotation_term, source = var_source, score = var_score, effect_size = var_effect_size, log2_fc = var_log2_fc, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, z_score = var_z_score, idr = var_idr, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **method** | Enum [CRISPR screen, ENCODE-rE2G, Perturb-seq, scE2G] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **cell_annotation** | **character**|  | [optional] 
 **cell_annotation_term** | **character**|  | [optional] 
 **source** | Enum [ENCODE, IGVF] |  | [optional] 
 **score** | **character**|  | [optional] 
 **effect_size** | **character**|  | [optional] 
 **log2_fc** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **neg_log10_pvalue_adj** | **character**|  | [optional] 
 **z_score** | **character**|  | [optional] 
 **idr** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromGenomicElements]**](GenesFromGenomicElements.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenomicElementsFromGenomicElements**
> array[GenomicElementsFromGenomicElements] GenomicElementsFromGenomicElements(perturbed_region = var.perturbed_region, accessible_region = var.accessible_region, promoter_gene_id = var.promoter_gene_id, promoter_gene_name = var.promoter_gene_name, files_fileset = var.files_fileset, biosample_term = var.biosample_term, biological_context = var.biological_context, method = var.method, source = var.source, perturbation = var.perturbation, significant = var.significant, log2_fc = var.log2_fc, p_value = var.p_value, p_value_adj = var.p_value_adj, neg_log10_pvalue = var.neg_log10_pvalue, neg_log10_pvalue_adj = var.neg_log10_pvalue_adj, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve promoter perturbation effects on chromatin accessibility at target peaks.<br>     Source elements identify perturbed promoters; target elements identify readout peaks.     Filter by perturbed_region (promoter) or accessible_region (readout peak), using chr:start-end, promoter_gene_name or promoter_gene_id, files_fileset, or method.     Set verbose=true to expand both genomic elements and the linked promoter gene record.     Pagination is 0-based; maximum page size is 500.<br><br><div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"perturb-seq\">Multiome Perturb-seq</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"perturb-seq\"> <strong>Multiome Perturb-seq:</strong> <div class=\"method-query-example\"> <strong>Query by perturbed gene</strong>  <ul> <li>promoter_gene_name = YY1</li> <li>method = Multiome Perturb-seq</li> <li>files_fileset = IGVFFI2419ZSGC</li> </ul> </div> <div class=\"method-query-example\"> <strong>Query by readout peak region</strong>  <ul> <li>accessible_region = chr1:3586345-3586846</li> <li>method = Multiome Perturb-seq</li> </ul> </div> <div class=\"method-query-example\"> <strong>Accessibility decreases with adjusted p-value below 0.1</strong>  <ul> <li>method = Multiome Perturb-seq</li> <li>log2FC = lt:0</li> <li>p_value_adj = lt:0.1</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_perturbed_region <- "perturbed_region_example" # character |  (Optional)
var_accessible_region <- "accessible_region_example" # character |  (Optional)
var_promoter_gene_id <- "promoter_gene_id_example" # character |  (Optional)
var_promoter_gene_name <- "promoter_gene_name_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_perturbation <- "perturbation_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_log2_fc <- "log2_fc_example" # character |  (Optional)
var_p_value <- "p_value_example" # character |  (Optional)
var_p_value_adj <- "p_value_adj_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_neg_log10_pvalue_adj <- "neg_log10_pvalue_adj_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # integer |  (Optional)
var_limit <- 56 # integer |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomicElementsFromGenomicElements(perturbed_region = var_perturbed_region, accessible_region = var_accessible_region, promoter_gene_id = var_promoter_gene_id, promoter_gene_name = var_promoter_gene_name, files_fileset = var_files_fileset, biosample_term = var_biosample_term, biological_context = var_biological_context, method = var_method, source = var_source, perturbation = var_perturbation, significant = var_significant, log2_fc = var_log2_fc, p_value = var_p_value, p_value_adj = var_p_value_adj, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenomicElementsFromGenomicElements(perturbed_region = var_perturbed_region, accessible_region = var_accessible_region, promoter_gene_id = var_promoter_gene_id, promoter_gene_name = var_promoter_gene_name, files_fileset = var_files_fileset, biosample_term = var_biosample_term, biological_context = var_biological_context, method = var_method, source = var_source, perturbation = var_perturbation, significant = var_significant, log2_fc = var_log2_fc, p_value = var_p_value, p_value_adj = var_p_value_adj, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perturbed_region** | **character**|  | [optional] 
 **accessible_region** | **character**|  | [optional] 
 **promoter_gene_id** | **character**|  | [optional] 
 **promoter_gene_name** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **method** | Enum [Multiome Perturb-seq] |  | [optional] 
 **source** | Enum [IGVF] |  | [optional] 
 **perturbation** | Enum [CRISPR interference] |  | [optional] 
 **significant** | Enum [true, false] |  | [optional] 
 **log2_fc** | **character**|  | [optional] 
 **p_value** | **character**|  | [optional] 
 **p_value_adj** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **neg_log10_pvalue_adj** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **integer**|  | [optional] [default to 0]
 **limit** | **integer**|  | [optional] 

### Return type

[**array[GenomicElementsFromGenomicElements]**](GenomicElementsFromGenomicElements.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenomicElementsFromPhenotypes**
> array[GenomicElementsFromPhenotypes] GenomicElementsFromPhenotypes(files_fileset = var.files_fileset, phenotype_id = var.phenotype_id, phenotype_name = var.phenotype_name, method = var.method, significant = var.significant, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve genomic elements associated with phenotypes.<br>     At least one of these properties must be defined: phenotype_id, phenotype_name, files_fileset, or method. <br>     Set significant = true to return only significant associations.<br>     Set verbose = true to retrieve full info on the genomic element.<br>     Example: phenotype_id = GO_0008283, <br>     phenotype_name = cell population proliferation, <br>     method = CRISPR screen, <br>     significant = true, <br>     files_fileset = IGVFFI9584UDAS. <br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_phenotype_id <- "phenotype_id_example" # character |  (Optional)
var_phenotype_name <- "phenotype_name_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomicElementsFromPhenotypes(files_fileset = var_files_fileset, phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, method = var_method, significant = var_significant, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenomicElementsFromPhenotypes(files_fileset = var_files_fileset, phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, method = var_method, significant = var_significant, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **files_fileset** | **character**|  | [optional] 
 **phenotype_id** | **character**|  | [optional] 
 **phenotype_name** | Enum [cell population proliferation, cell migration] |  | [optional] 
 **method** | Enum [CRISPR screen] |  | [optional] 
 **significant** | Enum [true] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenomicElementsFromPhenotypes]**](GenomicElementsFromPhenotypes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenomicElementsFromVariants**
> array[GenomicElementsFromVariants] GenomicElementsFromVariants(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region, biosample_term = var.biosample_term, biological_context = var.biological_context, method = var.method, files_fileset = var.files_fileset, page = 0, limit = var.limit)



Retrieve genomic elements associated with a given variant.<br>   Example: variant_id = NC_000001.11:976214:A:G, <br>   hgvs = NC_000001.11:g.976215A>G,<br>   spdi = NC_000001.11:976214:A:G, <br>   rsid = rs7417106, <br>   ca_id = CA507079, <br>   region = chr1:766254-766554, <br>   biosample_term = EFO_0002067, <br>   biological_context = K562, <br>   method = caQTL, <br>   files_fileset = ENCFF103XRK, <br>   The limit parameter controls the page size and can not exceed 300. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomicElementsFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, biosample_term = var_biosample_term, biological_context = var_biological_context, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GenomicElementsFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, biosample_term = var_biosample_term, biological_context = var_biological_context, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **method** | Enum [caQTL] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenomicElementsFromVariants]**](GenomicElementsFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenomicElementsFromVariantsCount**
> AnyType GenomicElementsFromVariantsCount(spdi = var.spdi, hgvs = var.hgvs, ca_id = var.ca_id, variant_id = var.variant_id, organism = "Homo sapiens", files_fileset = var.files_fileset)



Retrieve counts of element gene predictions and cell types associated with a given variant.<br>   At least one of these fields is required: variant_id, spdi, hgvs, rsid, ca_id, or files_filesets. <br>   Example: variant_id = NC_000001.11:1628997:GGG:GG,<br>   hgvs = NC_000001.11:g.1629000del,<br>   spdi = NC_000001.11:1628997:GGG:GG,<br>   ca_id = CA1522823495,<br>   files_fileset = ENCFF705MLV.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomicElementsFromVariantsCount(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, files_fileset = var_files_filesetdata_file = "result.txt")
result <- api_instance$GenomicElementsFromVariantsCount(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, files_fileset = var_files_fileset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **files_fileset** | **character**|  | [optional] 

### Return type

[**AnyType**](AnyType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GenomicElementsPredictionsFromVariant**
> GenomicElementsPredictionsFromVariant GenomicElementsPredictionsFromVariant(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region)



Retrieve predicted associated genes and cell types for a given variant. <br>   Example: variant_id = NC_000012.12:69248967:C:T,<br>   spdi = NC_000012.12:69248967:C:T, <br>   hgvs = NC_000012.12:g.69248968C>T,<br>   rsid = rs544450198,<br>   ca_id = CA10655063,<br>   region = chr1:1157520-1158189 (maximum length: 10kb).

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GenomicElementsPredictionsFromVariant(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_regiondata_file = "result.txt")
result <- api_instance$GenomicElementsPredictionsFromVariant(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 

### Return type

[**GenomicElementsPredictionsFromVariant**](GenomicElementsPredictionsFromVariant.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **GoTermsFromAnnotations**
> array[AnnotationsFromGoTerms] GoTermsFromAnnotations(query, name = var.name, page = 0, limit = var.limit)



Retrieve GO terms from either proteins or transcripts. <br>   Example: query = ENSP00000384707, <br>   name = involved in<br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_query <- "query_example" # character | 
var_name <- "name_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GoTermsFromAnnotations(var_query, name = var_name, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GoTermsFromAnnotations(var_query, name = var_name, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**|  | 
 **name** | Enum [has the function, involved in, is located in] |  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[AnnotationsFromGoTerms]**](AnnotationsFromGoTerms.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Grn**
> array[Grn] Grn(regulator_gene_id = var.regulator_gene_id, regulator_hgnc_id = var.regulator_hgnc_id, regulator_gene_name = var.regulator_gene_name, regulator_synonym = var.regulator_synonym, response_gene_id = var.response_gene_id, response_hgnc_id = var.response_hgnc_id, response_gene_name = var.response_gene_name, response_synonym = var.response_synonym, neg_log10_pvalue = var.neg_log10_pvalue, neg_log10_pvalue_adj = var.neg_log10_pvalue_adj, method = var.method, files_fileset = var.files_fileset, significant = var.significant, perturbation = var.perturbation, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve regulatory or response genes for a given regulatory gene. The network is modeled as: (regulators) -> (responses).<br>     Set organism = Mus musculus for mouse data; the default is Homo sapiens.<br>     files_fileset filters results to a single files_fileset accession (e.g. files_fileset = IGVFFI3069QCRA). significant only accepts true (omit the parameter to not filter on it).<br>     perturbation accepts CRISPR interference, CRISPR activation, CRISPR knockout, CRISPR cutting, CRISPR base editing, CRISPR prime editing, or ORF overexpression.<br>     MORF screen results return regulator_gene and the specific transcript from genes_transcripts; genomic_element is null. Set verbose = true to expand transcript into an object including its name; otherwise transcript is an ID.<br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"crispr-screen\">CRISPR screen</button> <button class=\"method-example-tab\" data-method-example-tab=\"perturb-seq\">Perturb-seq</button> <button class=\"method-example-tab\" data-method-example-tab=\"morf-screen\">MORF screen</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"crispr-screen\"> <strong>CRISPR screen:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>regulator_gene_id = ENSG00000143190</li> <li>p_value = gte:0.9</li> <li>method = CRISPR screen</li> <li>perturbation = CRISPR interference</li> <li>files_fileset = IGVFFI1336XWXJ</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>regulator_gene_name = POU2F1</li> <li>method = CRISPR screen</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"perturb-seq\"> <strong>Perturb-seq:</strong> <div class=\"method-query-example\"> <strong>Query by regulator gene</strong>  <ul> <li>regulator_gene_id = ENSG00000143190</li> <li>method = Perturb-seq</li> </ul> </div> <div class=\"method-query-example\"> <strong>Query by response gene</strong>  <ul> <li>response_gene_name = TSPAN6</li> <li>method = Perturb-seq</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"morf-screen\"> <strong>MORF screen:</strong> <div class=\"method-query-example\"> <strong>AATF overexpression effect on TOX</strong>  <ul> <li>regulator_gene_id = ENSG00000275700</li> <li>response_gene_id = ENSG00000198846</li> <li>method = MORF screen</li> <li>perturbation = ORF overexpression</li> <li>files_fileset = IGVFFI6734IWRB</li> </ul> </div> <div class=\"method-query-example\"> <strong>All MORF effects on TOX</strong>  <ul> <li>response_gene_name = TOX</li> <li>method = MORF screen</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_regulator_gene_id <- "regulator_gene_id_example" # character |  (Optional)
var_regulator_hgnc_id <- "regulator_hgnc_id_example" # character |  (Optional)
var_regulator_gene_name <- "regulator_gene_name_example" # character |  (Optional)
var_regulator_synonym <- "regulator_synonym_example" # character |  (Optional)
var_response_gene_id <- "response_gene_id_example" # character |  (Optional)
var_response_hgnc_id <- "response_hgnc_id_example" # character |  (Optional)
var_response_gene_name <- "response_gene_name_example" # character |  (Optional)
var_response_synonym <- "response_synonym_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_neg_log10_pvalue_adj <- "neg_log10_pvalue_adj_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_perturbation <- "perturbation_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Grn(regulator_gene_id = var_regulator_gene_id, regulator_hgnc_id = var_regulator_hgnc_id, regulator_gene_name = var_regulator_gene_name, regulator_synonym = var_regulator_synonym, response_gene_id = var_response_gene_id, response_hgnc_id = var_response_hgnc_id, response_gene_name = var_response_gene_name, response_synonym = var_response_synonym, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, method = var_method, files_fileset = var_files_fileset, significant = var_significant, perturbation = var_perturbation, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$Grn(regulator_gene_id = var_regulator_gene_id, regulator_hgnc_id = var_regulator_hgnc_id, regulator_gene_name = var_regulator_gene_name, regulator_synonym = var_regulator_synonym, response_gene_id = var_response_gene_id, response_hgnc_id = var_response_hgnc_id, response_gene_name = var_response_gene_name, response_synonym = var_response_synonym, neg_log10_pvalue = var_neg_log10_pvalue, neg_log10_pvalue_adj = var_neg_log10_pvalue_adj, method = var_method, files_fileset = var_files_fileset, significant = var_significant, perturbation = var_perturbation, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regulator_gene_id** | **character**|  | [optional] 
 **regulator_hgnc_id** | **character**|  | [optional] 
 **regulator_gene_name** | **character**|  | [optional] 
 **regulator_synonym** | **character**|  | [optional] 
 **response_gene_id** | **character**|  | [optional] 
 **response_hgnc_id** | **character**|  | [optional] 
 **response_gene_name** | **character**|  | [optional] 
 **response_synonym** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **neg_log10_pvalue_adj** | **character**|  | [optional] 
 **method** | Enum [CRISPR screen, Perturb-seq, MORF screen] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **significant** | Enum [true] |  | [optional] 
 **perturbation** | Enum [CRISPR activation, CRISPR base editing, CRISPR cutting, CRISPR interference, CRISPR knockout, CRISPR prime editing, ORF overexpression] |  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[Grn]**](Grn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **LlmQuery**
> LlmQuery LlmQuery(llm_query_request)



Ask a question that interests you. This API is password protected.<br>   Set verbose = true to retrieve AQL and AQL results.<br>   Example: query = Tell me about the gene SAMD11.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_llm_query_request <- llmQuery_request$new("query_example", "password_example", "true") # LlmQueryRequest | 

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$LlmQuery(var_llm_query_requestdata_file = "result.txt")
result <- api_instance$LlmQuery(var_llm_query_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **llm_query_request** | [**LlmQueryRequest**](LlmQueryRequest.md)|  | 

### Return type

[**LlmQuery**](LlmQuery.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Motifs**
> array[Motif] Motifs(tf_name = var.tf_name, source = var.source, files_fileset = var.files_fileset, method = var.method, organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve transcription factor binding motifs from HOCOMOCO and SEMpl.<br>     method can be either HOCOMOCO or SEMpl; if not provided, both methods are searched. <br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based. <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"hocomoco\">HOCOMOCO</button> <button class=\"method-example-tab\" data-method-example-tab=\"sempl\">SEMpl</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"hocomoco\"> <strong>HOCOMOCO:</strong> <div class=\"method-query-example\"> <strong>query by tf_name</strong>  <ul> <li>tf_name = STAT3_HUMAN</li> <li>source = HOCOMOCOv11</li> <li>method = HOCOMOCO</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI1626MMBD</li> <li>method = HOCOMOCO</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sempl\"> <strong>SEMpl:</strong> <div class=\"method-query-example\"> <strong>query by tf_name</strong>  <ul> <li>tf_name = AHR</li> <li>method = SEMpl</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI5279OTVZ</li> <li>method = SEMpl</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_tf_name <- "tf_name_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Motifs(tf_name = var_tf_name, source = var_source, files_fileset = var_files_fileset, method = var_method, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$Motifs(tf_name = var_tf_name, source = var_source, files_fileset = var_files_fileset, method = var_method, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tf_name** | **character**|  | [optional] 
 **source** | Enum [IGVF, HOCOMOCOv11] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **method** | Enum [HOCOMOCO, SEMpl] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[Motif]**](Motif.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **MotifsFromProteins**
> array[MotifsFromProteins] MotifsFromProteins(protein_id = var.protein_id, protein_name = var.protein_name, uniprot_name = var.uniprot_name, uniprot_full_name = var.uniprot_full_name, dbxrefs = var.dbxrefs, files_fileset = var.files_fileset, method = var.method, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve motifs for proteins.<br>     Set verbose = true to retrieve full info on the motifs.<br>     Protein IDs support the following formats: ENSP00000384707.1 or ENSP00000384707 (Ensembl IDs) or P49711-2 (Uniprot ids)<br>     method can be either HOCOMOCO or SEMpl; if not provided, both methods are searched. <br>     The limit parameter controls the page size and can not exceed 1000. <br>     Pagination is 0-based. <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"hocomoco\">HOCOMOCO</button> <button class=\"method-example-tab\" data-method-example-tab=\"sempl\">SEMpl</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"hocomoco\"> <strong>HOCOMOCO:</strong> <div class=\"method-query-example\"> <strong>query by protein identifier</strong>  <ul> <li>protein_id = ENSP00000384707</li> <li>method = HOCOMOCO</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI1626MMBD</li> <li>method = HOCOMOCO</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sempl\"> <strong>SEMpl:</strong> <div class=\"method-query-example\"> <strong>query by protein identifier</strong>  <ul> <li>protein_id = ENSP00000384707</li> <li>method = SEMpl</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI5279OTVZ</li> <li>method = SEMpl</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_protein_name <- "protein_name_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_uniprot_full_name <- "uniprot_full_name_example" # character |  (Optional)
var_dbxrefs <- "dbxrefs_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$MotifsFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, files_fileset = var_files_fileset, method = var_method, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$MotifsFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, files_fileset = var_files_fileset, method = var_method, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein_id** | **character**|  | [optional] 
 **protein_name** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **uniprot_full_name** | **character**|  | [optional] 
 **dbxrefs** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **method** | Enum [HOCOMOCO, SEMpl] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[MotifsFromProteins]**](MotifsFromProteins.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **NearestGenes**
> array[Gene] NearestGenes(region)



Retrieve a list of human genes if region is in a coding variant. Otherwise, it returns the single nearest human gene. <br>   Example: region = chr1:1157520-1158189 (maximum length: 10kb).

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_region <- "region_example" # character | 

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$NearestGenes(var_regiondata_file = "result.txt")
result <- api_instance$NearestGenes(var_region)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **character**|  | 

### Return type

[**array[Gene]**](Gene.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **OntologyTerm**
> array[OntologyTerm] OntologyTerm(term_id = var.term_id, name = var.name, synonyms = var.synonyms, source = var.source, subontology = var.subontology, files_fileset = var.files_fileset, page = 0, limit = var.limit)



Retrieve ontology terms.<br>   Example: term_id = Orphanet_101435, <br>   name = Rare genetic eye disease, <br>   synonyms = WTC11, <br>   source = EFO, <br>   subontology = molecular_function, <br>   files_fileset = IGVFFI7407XTPX. <br>   The limit parameter controls the page size and can not exceed 1000. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_term_id <- "term_id_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_synonyms <- "synonyms_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_subontology <- "subontology_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OntologyTerm(term_id = var_term_id, name = var_name, synonyms = var_synonyms, source = var_source, subontology = var_subontology, files_fileset = var_files_fileset, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$OntologyTerm(term_id = var_term_id, name = var_name, synonyms = var_synonyms, source = var_source, subontology = var_subontology, files_fileset = var_files_fileset, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term_id** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **synonyms** | **character**|  | [optional] 
 **source** | Enum [BAO, CHEBI, CL, CLO, Cellosaurus, DOID, EFO, ENCODE, GO, HPO, IGVF, MONDO, NCIT, OBA, OBI, ORPHANET, Oncotree, PCL, UBERON, VARIO] |  | [optional] 
 **subontology** | Enum [biological_process, cellular_component, molecular_function] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[OntologyTerm]**](OntologyTerm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **OntologyTermChildren**
> array[OntologyTermChildren] OntologyTermChildren(ontology_term_id, page = 0, limit = var.limit)



Retrieve all child nodes of an ontology term.<br>   Example: ontology_term_id = CHEBI_20857. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_ontology_term_id <- "ontology_term_id_example" # character | 
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OntologyTermChildren(var_ontology_term_id, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$OntologyTermChildren(var_ontology_term_id, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ontology_term_id** | **character**|  | 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[OntologyTermChildren]**](OntologyTermChildren.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **OntologyTermParents**
> array[OntologyTermChildren] OntologyTermParents(ontology_term_id, page = 0, limit = var.limit)



Retrieve all parent nodes of an ontology term.<br>   Example: ontology_term_id = CHEBI_100001. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_ontology_term_id <- "ontology_term_id_example" # character | 
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OntologyTermParents(var_ontology_term_id, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$OntologyTermParents(var_ontology_term_id, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ontology_term_id** | **character**|  | 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[OntologyTermChildren]**](OntologyTermChildren.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **OntologyTermTransitiveClosure**
> OntologyTermTransitiveClosure OntologyTermTransitiveClosure(ontology_term_id_start, ontology_term_id_end)



Retrieve all paths between two ontology terms (i.e. transitive closure).<br>   Example: ontology_term_id_start = UBERON_0003663, <br>   ontology_term_id_end = UBERON_0014892

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_ontology_term_id_start <- "ontology_term_id_start_example" # character | 
var_ontology_term_id_end <- "ontology_term_id_end_example" # character | 

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OntologyTermTransitiveClosure(var_ontology_term_id_start, var_ontology_term_id_enddata_file = "result.txt")
result <- api_instance$OntologyTermTransitiveClosure(var_ontology_term_id_start, var_ontology_term_id_end)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ontology_term_id_start** | **character**|  | 
 **ontology_term_id_end** | **character**|  | 

### Return type

[**OntologyTermTransitiveClosure**](OntologyTermTransitiveClosure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Pathways**
> array[Pathway] Pathways(id = var.id, name = var.name, is_in_disease = var.is_in_disease, name_aliases = var.name_aliases, is_top_level_pathway = var.is_top_level_pathway, disease_ontology_terms = var.disease_ontology_terms, biological_process = var.biological_process, organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve pathways from Reactome.<br>   Example: id = R-HSA-164843, <br>   name = 2-LTR circle formation, <br>   is_in_disease = true. <br>   name_aliases = 2-LTR circle formation, <br>   is_top_level_pathway = true. <br>   disease_ontology_terms = DOID_526, <br>   biological_process = GO_0006015. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_id <- "id_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_is_in_disease <- "is_in_disease_example" # character |  (Optional)
var_name_aliases <- "name_aliases_example" # character |  (Optional)
var_is_top_level_pathway <- "is_top_level_pathway_example" # character |  (Optional)
var_disease_ontology_terms <- "disease_ontology_terms_example" # character |  (Optional)
var_biological_process <- "biological_process_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Pathways(id = var_id, name = var_name, is_in_disease = var_is_in_disease, name_aliases = var_name_aliases, is_top_level_pathway = var_is_top_level_pathway, disease_ontology_terms = var_disease_ontology_terms, biological_process = var_biological_process, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$Pathways(id = var_id, name = var_name, is_in_disease = var_is_in_disease, name_aliases = var_name_aliases, is_top_level_pathway = var_is_top_level_pathway, disease_ontology_terms = var_disease_ontology_terms, biological_process = var_biological_process, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **is_in_disease** | **character**|  | [optional] 
 **name_aliases** | **character**|  | [optional] 
 **is_top_level_pathway** | **character**|  | [optional] 
 **disease_ontology_terms** | **character**|  | [optional] 
 **biological_process** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[Pathway]**](Pathway.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **PathwaysFromGenes**
> array[GenesFromPathways] PathwaysFromGenes(gene_id = var.gene_id, hgnc_id = var.hgnc_id, gene_name = var.gene_name, synonym = var.synonym, region = var.region, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve pathways from genes.<br>   Set verbose = true to retrieve full info on the pathways and genes. <br>   At least one of these fields is required: gene_id, hgnc_id, gene_name, synonym, region. <br>   Example: gene_id = ENSG00000183840, <br>   hgnc_id = HGNC:4496, <br>   gene_name = GPR39, <br>   synonym = ZnR, <br>   region = chr16:30114104-30123506. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PathwaysFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$PathwaysFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromPathways]**](GenesFromPathways.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **PathwaysFromPathways**
> array[PathwaysFromPathways] PathwaysFromPathways(pathway_id = var.pathway_id, pathway_name = var.pathway_name, name_aliases = var.name_aliases, disease_ontology_terms = var.disease_ontology_terms, biological_process = var.biological_process, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve related pathway pairs from Reactome. <br>   Set verbose = true to retrieve full info on the pathway pairs. <br>   At least one of these fields is required: pathway_id, pathway_name, or name_aliases. <br>   Example: pathway_id = R-HSA-164843, <br>   pathway_name = 2-LTR circle formation, <br>   name_aliases = 2-LTR circle formation, <br>   disease_ontology_terms = DOID_526, <br>   biological_process = GO_0006015. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_pathway_id <- "pathway_id_example" # character |  (Optional)
var_pathway_name <- "pathway_name_example" # character |  (Optional)
var_name_aliases <- "name_aliases_example" # character |  (Optional)
var_disease_ontology_terms <- "disease_ontology_terms_example" # character |  (Optional)
var_biological_process <- "biological_process_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PathwaysFromPathways(pathway_id = var_pathway_id, pathway_name = var_pathway_name, name_aliases = var_name_aliases, disease_ontology_terms = var_disease_ontology_terms, biological_process = var_biological_process, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$PathwaysFromPathways(pathway_id = var_pathway_id, pathway_name = var_pathway_name, name_aliases = var_name_aliases, disease_ontology_terms = var_disease_ontology_terms, biological_process = var_biological_process, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pathway_id** | **character**|  | [optional] 
 **pathway_name** | **character**|  | [optional] 
 **name_aliases** | **character**|  | [optional] 
 **disease_ontology_terms** | **character**|  | [optional] 
 **biological_process** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[PathwaysFromPathways]**](PathwaysFromPathways.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **PhenotypesFromCodingVariants**
> array[CodingVariantsFromPhenotypes] PhenotypesFromCodingVariants(coding_variant_name = var.coding_variant_name, hgvsp = var.hgvsp, uniprot_name = var.uniprot_name, gene_name = var.gene_name, amino_acid_position = var.amino_acid_position, transcript_id = var.transcript_id, method = var.method, files_fileset = var.files_fileset, page = 0, limit = var.limit)



Retrieve phenotypes associated with the query coding variant.<br>     At least one of these fields is required: coding_variant_name, hgvsp, uniprot_name, gene_name, amino_acid_position, transcript_id, method, files_fileset. <br>     For MutPred2 results, the molecular mechanisms it predicts the substitution to disrupt are returned in property_scores. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"dual-ipa\">DUAL-IPA</button> <button class=\"method-example-tab\" data-method-example-tab=\"esm-1v\">ESM-1v</button> <button class=\"method-example-tab\" data-method-example-tab=\"mutpred2\">MutPred2</button> <button class=\"method-example-tab\" data-method-example-tab=\"sge\">SGE</button> <button class=\"method-example-tab\" data-method-example-tab=\"vamp-seq\">VAMP-seq</button> <button class=\"method-example-tab\" data-method-example-tab=\"variant-painting\">Variant painting via fluorescence</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"dual-ipa\"> <strong>DUAL-IPA:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>coding_variant_name = ACSF3_ENST00000317447_p.Ala17Pro_c.49G-C</li> <li>method = DUAL-IPA</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>gene_name = ACSF3</li> <li>method = DUAL-IPA</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"esm-1v\"> <strong>ESM-1v:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>coding_variant_name = A1BG_ENST00000263100_p.Ala118Asn_c.352_353delinsAA</li> <li>method = ESM-1v</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>gene_name = A1BG</li> <li>method = ESM-1v</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"mutpred2\"> <strong>MutPred2:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>coding_variant_name = A1BG_ENST00000263100_p.Ala118Arg_c.352_353delinsCG</li> <li>method = MutPred2</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>gene_name = A1BG</li> <li>method = MutPred2</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sge\"> <strong>SGE:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>coding_variant_name = BRCA2_ENST00000380152__NC_000013.11:g.32319075A-C_splicing</li> <li>method = SGE</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>gene_name = BRCA2</li> <li>method = SGE</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"vamp-seq\"> <strong>VAMP-seq:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>coding_variant_name = CYP2C19_ENST00000371321_p.Ala103=_c.309T-G</li> <li>method = VAMP-seq</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>gene_name = CYP2C19</li> <li>method = VAMP-seq</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"variant-painting\"> <strong>Variant painting via fluorescence:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>coding_variant_name = LITAF_ENST00000622633_p.Pro135Thr_c.403C-A</li> <li>method = Variant painting via fluorescence</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>gene_name = LITAF</li> <li>method = Variant painting via fluorescence</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_coding_variant_name <- "coding_variant_name_example" # character |  (Optional)
var_hgvsp <- "hgvsp_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_amino_acid_position <- 3.4 # numeric |  (Optional)
var_transcript_id <- "transcript_id_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PhenotypesFromCodingVariants(coding_variant_name = var_coding_variant_name, hgvsp = var_hgvsp, uniprot_name = var_uniprot_name, gene_name = var_gene_name, amino_acid_position = var_amino_acid_position, transcript_id = var_transcript_id, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$PhenotypesFromCodingVariants(coding_variant_name = var_coding_variant_name, hgvsp = var_hgvsp, uniprot_name = var_uniprot_name, gene_name = var_gene_name, amino_acid_position = var_amino_acid_position, transcript_id = var_transcript_id, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coding_variant_name** | **character**|  | [optional] 
 **hgvsp** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **amino_acid_position** | **numeric**|  | [optional] 
 **transcript_id** | **character**|  | [optional] 
 **method** | Enum [DUAL-IPA, ESM-1v, MutPred2, SGE, VAMP-seq, Variant painting via fluorescence] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[CodingVariantsFromPhenotypes]**](CodingVariantsFromPhenotypes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **PhenotypesFromGenomicElements**
> array[GenomicElementsFromPhenotypes] PhenotypesFromGenomicElements(region = var.region, files_fileset = var.files_fileset, phenotype_id = var.phenotype_id, phenotype_name = var.phenotype_name, method = var.method, significant = var.significant, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve genomic element to phenotype associations by querying genomic elements.<br>     At least one of these properties must be defined: region, files_fileset, phenotype_id, phenotype_name, or method. <br>     Set significant = true to return only significant associations.<br>     Set verbose = true to retrieve full info on the genomic element.<br>     Example: phenotype_id = GO_0016477, <br>     phenotype_name = cell migration, <br>     method = CRISPR screen, <br>     significant = true, <br>     files_fileset = IGVFFI5135QZCS, <br>     region = chr1:101174581-101175330 (maximum length: 10kb). <br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_region <- "region_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_phenotype_id <- "phenotype_id_example" # character |  (Optional)
var_phenotype_name <- "phenotype_name_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PhenotypesFromGenomicElements(region = var_region, files_fileset = var_files_fileset, phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, method = var_method, significant = var_significant, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$PhenotypesFromGenomicElements(region = var_region, files_fileset = var_files_fileset, phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, method = var_method, significant = var_significant, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **phenotype_id** | **character**|  | [optional] 
 **phenotype_name** | Enum [cell population proliferation, cell migration] |  | [optional] 
 **method** | Enum [CRISPR screen] |  | [optional] 
 **significant** | Enum [true] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenomicElementsFromPhenotypes]**](GenomicElementsFromPhenotypes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **PhenotypesFromVariants**
> array[VariantsFromPhenotypesItem] PhenotypesFromVariants(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region, phenotype_id = var.phenotype_id, neg_log10_pvalue = var.neg_log10_pvalue, method = var.method, label = var.label, class = var.class, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit, files_fileset = var.files_fileset)



Retrieve variant-trait pairs from GWAS, SGE, cV2F, and CRISPR screens by variants.<br>     Filters on phenotype ontology id can be used together.<br>     The following parameters can be used to set thresholds on -log10 p_value: gt (>), gte (>=), lt (<), lte (<=). neg_log10_pvalue is only populated for GWAS records; it does not filter out SGE, cV2F, or CRISPR screen edges, which have no p-value field.<br>     Set verbose = true to retrieve full info on the studies.<br>     At least one of these fields is required: variant_id, spdi, hgvs, rsid, ca_id, region, method, or files_fileset. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"gwas\">GWAS</button> <button class=\"method-example-tab\" data-method-example-tab=\"sge\">SGE</button> <button class=\"method-example-tab\" data-method-example-tab=\"cv2f\">cV2F</button> <button class=\"method-example-tab\" data-method-example-tab=\"crispr-screen\">CRISPR screen</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"gwas\"> <strong>GWAS:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000001.11:5277210:G:A</li> <li>neg_log10_pvalue = gte:5</li> <li>method = GWAS</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr1:5270008-5277214</li> <li>method = GWAS</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sge\"> <strong>SGE:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000007.14:152660654:T:A</li> <li>method = SGE</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr7:152655654-152664654</li> <li>method = SGE</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"cv2f\"> <strong>cV2F:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000001.11:91420:T:C</li> <li>method = cV2F</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr1:91418-91424</li> <li>method = cV2F</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"crispr-screen\"> <strong>CRISPR screen:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000019.10:11105332:TGC:CGG</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr19:11105000-11106000</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI2014OOZP</li> <li>method = CRISPR screen</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_phenotype_id <- "phenotype_id_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_label <- "label_example" # character |  (Optional)
var_class <- "class_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PhenotypesFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, phenotype_id = var_phenotype_id, neg_log10_pvalue = var_neg_log10_pvalue, method = var_method, label = var_label, class = var_class, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit, files_fileset = var_files_filesetdata_file = "result.txt")
result <- api_instance$PhenotypesFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, phenotype_id = var_phenotype_id, neg_log10_pvalue = var_neg_log10_pvalue, method = var_method, label = var_label, class = var_class, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit, files_fileset = var_files_fileset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **phenotype_id** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **method** | Enum [CRISPR screen, GWAS, SGE, cV2F] |  | [optional] 
 **label** | Enum [GWAS, predicted variant effect on phenotype, protein variant effect, variant effect on phenotype] |  | [optional] 
 **class** | Enum [observed data, prediction] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 

### Return type

[**array[VariantsFromPhenotypesItem]**](VariantsFromPhenotypesItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **PredictionsFromVariants**
> array[PredictionsFromVariants] PredictionsFromVariants(spdi = var.spdi, hgvs = var.hgvs, ca_id = var.ca_id, variant_id = var.variant_id, organism = "Homo sapiens", files_fileset = var.files_fileset, method = var.method, limit = var.limit, page = 0)



Retrieve element gene predictions associated with a given variant.<br>   At least one of these fields is required: variant_id, spdi, hgvs, rsid, ca_id, or files_filesets. <br>   Example: variant_id = NC_000001.11:976214:A:G, <br>   hgvs = NC_000001.11:g.976215A>G,<br>   spdi = NC_000001.11:976214:A:G, <br>   rsid = rs7417106, <br>   ca_id = CA507079, <br>   files_filesets = ENCFF103XRK. <br>   The limit parameter controls the page size and can not exceed 300. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)
var_page <- 0 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PredictionsFromVariants(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, files_fileset = var_files_fileset, method = var_method, limit = var_limit, page = var_pagedata_file = "result.txt")
result <- api_instance$PredictionsFromVariants(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, files_fileset = var_files_fileset, method = var_method, limit = var_limit, page = var_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **files_fileset** | **character**|  | [optional] 
 **method** | Enum [scE2G, ENCODE-rE2G] |  | [optional] 
 **limit** | **numeric**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]

### Return type

[**array[PredictionsFromVariants]**](PredictionsFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Proteins**
> array[Protein] Proteins(protein_id = var.protein_id, name = var.name, uniprot_name = var.uniprot_name, uniprot_full_name = var.uniprot_full_name, dbxrefs = var.dbxrefs, organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve proteins.<br>   Protein IDs support the following formats: ENSP00000384707.1 or ENSP00000384707 (Ensembl IDs) or P49711-2 (Uniprot ids)<br>   Example: protein_id = ENSP00000384707, <br>   name = CTCF, <br>   uniprot_name = CTCF_HUMAN, <br>   uniprot_full_name = Transcriptional repressor CTCF, <br>   dbxrefs = P49711, <br>   organism = Homo sapiens. <br>   The limit parameter controls the page size and can not exceed 50. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_uniprot_full_name <- "uniprot_full_name_example" # character |  (Optional)
var_dbxrefs <- "dbxrefs_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Proteins(protein_id = var_protein_id, name = var_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$Proteins(protein_id = var_protein_id, name = var_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein_id** | **character**|  | [optional] 
 **name** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **uniprot_full_name** | **character**|  | [optional] 
 **dbxrefs** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[Protein]**](Protein.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **ProteinsFromComplexes**
> array[ComplexesFromProteins] ProteinsFromComplexes(complex_id = var.complex_id, complex_name = var.complex_name, description = var.description, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve protein participants for complexes. Each record includes complex and protein.<br>   Set verbose = true to retrieve full info on the complex and protein.<br>   Example: complex_id = CPX-9, <br>   complex_name = SMAD2, <br>   description = phosphorylation.<br>   The limit parameter controls the page size and can not exceed 50. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_complex_id <- "complex_id_example" # character |  (Optional)
var_complex_name <- "complex_name_example" # character |  (Optional)
var_description <- "description_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ProteinsFromComplexes(complex_id = var_complex_id, complex_name = var_complex_name, description = var_description, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$ProteinsFromComplexes(complex_id = var_complex_id, complex_name = var_complex_name, description = var_description, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **complex_id** | **character**|  | [optional] 
 **complex_name** | **character**|  | [optional] 
 **description** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[ComplexesFromProteins]**](ComplexesFromProteins.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **ProteinsFromGenes**
> array[GenesFromProteins] ProteinsFromGenes(gene_id = var.gene_id, hgnc_id = var.hgnc_id, gene_name = var.gene_name, synonym = var.synonym, region = var.region, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve proteins from genes.<br>   Set verbose = true to retrieve full info on the proteins. <br>   At least one of these fields is required: gene_id, hgnc_id, gene_name, synonym, region. <br>   Example: gene_name = ATF3, <br>   synonym = CKLF, <br>   region = chr3:193593143-193697811, <br>   gene_id = ENSG00000170558 (Ensembl ID), <br>   hgnc_id = HGNC:13723. <br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ProteinsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$ProteinsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromProteins]**](GenesFromProteins.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **ProteinsFromMotifs**
> array[MotifsFromProteins] ProteinsFromMotifs(tf_name = var.tf_name, source = var.source, files_fileset = var.files_fileset, method = var.method, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve proteins and complexes for motifs.<br>     Set verbose = true to retrieve full info on the proteins and complexes.<br>     method can be either HOCOMOCO or SEMpl; if not provided, both methods are searched. <br>     The limit parameter controls the page size and can not exceed 1000. <br>     Pagination is 0-based. <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"hocomoco\">HOCOMOCO</button> <button class=\"method-example-tab\" data-method-example-tab=\"sempl\">SEMpl</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"hocomoco\"> <strong>HOCOMOCO:</strong> <div class=\"method-query-example\"> <strong>query by tf_name</strong>  <ul> <li>tf_name = ATF1_HUMAN</li> <li>source = HOCOMOCOv11</li> <li>method = HOCOMOCO</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI1626MMBD</li> <li>method = HOCOMOCO</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sempl\"> <strong>SEMpl:</strong> <div class=\"method-query-example\"> <strong>query by tf_name</strong>  <ul> <li>tf_name = AHR</li> <li>method = SEMpl</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI5279OTVZ</li> <li>method = SEMpl</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_tf_name <- "tf_name_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ProteinsFromMotifs(tf_name = var_tf_name, source = var_source, files_fileset = var_files_fileset, method = var_method, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$ProteinsFromMotifs(tf_name = var_tf_name, source = var_source, files_fileset = var_files_fileset, method = var_method, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tf_name** | **character**|  | [optional] 
 **source** | Enum [IGVF, HOCOMOCOv11] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **method** | Enum [HOCOMOCO, SEMpl] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[MotifsFromProteins]**](MotifsFromProteins.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **ProteinsFromTranscripts**
> array[ProteinsFromTranscripts] ProteinsFromTranscripts(transcript_id = var.transcript_id, region = var.region, transcript_type = var.transcript_type, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve proteins from transcripts.<br>     Set verbose = true to retrieve full info on the proteins.<br>     At least one of these fields is required: transcript_id, region or transcript_type. <br>     Example: transcript_id = ENST00000264010, <br>     region = chr16:67562500-67640000, <br>     transcript_type = protein_coding, <br>     organism = Homo sapiens, <br>     transcript_id = ENST00000401394 (Ensembl ID). <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_transcript_id <- "transcript_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_transcript_type <- "transcript_type_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ProteinsFromTranscripts(transcript_id = var_transcript_id, region = var_region, transcript_type = var_transcript_type, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$ProteinsFromTranscripts(transcript_id = var_transcript_id, region = var_region, transcript_type = var_transcript_type, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transcript_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **transcript_type** | Enum [IG_C_gene, IG_C_pseudogene, IG_D_gene, IG_J_gene, IG_J_pseudogene, IG_V_gene, IG_V_pseudogene, IG_pseudogene, Mt_rRNA, Mt_tRNA, TEC, TR_C_gene, TR_D_gene, TR_J_gene, TR_J_pseudogene, TR_V_gene, TR_V_pseudogene, artifact, lncRNA, miRNA, misc_RNA, non_stop_decay, nonsense_mediated_decay, processed_pseudogene, processed_transcript, protein_coding, protein_coding_CDS_not_defined, protein_coding_LoF, pseudogene, rRNA, rRNA_pseudogene, retained_intron, ribozyme, sRNA, scRNA, scaRNA, snRNA, snoRNA, transcribed_processed_pseudogene, transcribed_unitary_pseudogene, transcribed_unprocessed_pseudogene, translated_processed_pseudogene, translated_unprocessed_pseudogene, unitary_pseudogene, unprocessed_pseudogene, vault_RNA] |  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[ProteinsFromTranscripts]**](ProteinsFromTranscripts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **ProteinsFromVariants**
> array[ProteinsFromVariants] ProteinsFromVariants(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region, label = var.label, source = var.source, method = var.method, files_fileset = var.files_fileset, name = var.name, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve allele-specific transcription factor binding events from ADASTRA in cell type-specific context, <br>     allele-specific transcription factor binding events from GVATdb, pQTL from UKB by querying variants, and predicted allele specific binding from SEMpl.<br>     Set verbose = true to retrieve full info on the variant-transcription factor pairs, and ontology terms of the cell types.<br>     At least one of these fields is required: variant_id, spdi, hgvs, rsid, ca_id, region, method, or files_fileset. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"adastra\">ADASTRA</button> <button class=\"method-example-tab\" data-method-example-tab=\"gvatdb\">GVATdb</button> <button class=\"method-example-tab\" data-method-example-tab=\"semvar\">SEMVAR</button> <button class=\"method-example-tab\" data-method-example-tab=\"pqtl\">pQTL</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"adastra\"> <strong>ADASTRA:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>variant_id = NC_000005.10:59317579:G:T</li> <li>method = ADASTRA</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr5:150575301-150575304</li> <li>method = ADASTRA</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"gvatdb\"> <strong>GVATdb:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>variant_id = NC_000010.11:112626979:C:T</li> <li>method = GVATdb</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr10:112626978-112626982</li> <li>method = GVATdb</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"semvar\"> <strong>SEMVAR:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000001.11:100091094:A:C</li> <li>method = SEMVAR</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr1:100091093-100091097</li> <li>method = SEMVAR</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"pqtl\"> <strong>pQTL:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>spdi = NC_000002.12:27508072:T:C</li> <li>method = pQTL</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by region</strong>  <ul> <li>region = chr2:27508070-27508074</li> <li>method = pQTL</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_label <- "label_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ProteinsFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, label = var_label, source = var_source, method = var_method, files_fileset = var_files_fileset, name = var_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$ProteinsFromVariants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, label = var_label, source = var_source, method = var_method, files_fileset = var_files_fileset, name = var_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **label** | Enum [allele-specific binding, pQTL, predicted allele-specific binding] |  | [optional] 
 **source** | Enum [ADASTRA, GVATdb, IGVF, UKB] |  | [optional] 
 **method** | Enum [ADASTRA, GVATdb, SEMVAR, pQTL] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **name** | Enum [associated with levels of, modulates binding of] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[ProteinsFromVariants]**](ProteinsFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **ProteinsProteins**
> array[ProteinsProteins] ProteinsProteins(protein_id = var.protein_id, protein_name = var.protein_name, uniprot_name = var.uniprot_name, uniprot_full_name = var.uniprot_full_name, dbxrefs = var.dbxrefs, associated_protein_id = var.associated_protein_id, associated_protein_name = var.associated_protein_name, associated_uniprot_name = var.associated_uniprot_name, associated_uniprot_full_name = var.associated_uniprot_full_name, associated_dbxrefs = var.associated_dbxrefs, pmid = var.pmid, detection_method = var.detection_method, interaction_type = var.interaction_type, label = var.label, method = var.method, source = var.source, files_fileset = var.files_fileset, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve protein-protein interactions.<br>   Set verbose = true to retrieve full info on the proteins. <br>   Protein IDs support the following formats: ENSP00000384707.1 or ENSP00000384707 (Ensembl IDs) or P49711-2 (Uniprot ids)<br>   Example: protein_id = ENSP00000384707.1, <br>   protein_name = CTCF, <br>   uniprot_name = CTCF_HUMAN, <br>   uniprot_full_name = Transcriptional repressor CTCF, <br>   dbxrefs = P49711, <br>   detection_method = affinity chromatography technology, <br>   interaction_type = physical association, <br>   pmid = 28514442, <br>   associated_protein_id = ENSP00000428899, <br>   associated_protein_name = TNPO1, <br>   associated_uniprot_name = TNPO1_HUMAN, <br>   associated_uniprot_full_name = Transportin-1, <br>   associated_dbxrefs = DIP-29335N, <br>   label = affinity chromatography technology, <br>   method = physical association, <br>   source = BioGRID, <br>   files_fileset = IGVFFI4317VDGK, <br>   organism = Homo sapiens. <br>   The limit parameter controls the page size and can not exceed 250. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_protein_name <- "protein_name_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_uniprot_full_name <- "uniprot_full_name_example" # character |  (Optional)
var_dbxrefs <- "dbxrefs_example" # character |  (Optional)
var_associated_protein_id <- "associated_protein_id_example" # character |  (Optional)
var_associated_protein_name <- "associated_protein_name_example" # character |  (Optional)
var_associated_uniprot_name <- "associated_uniprot_name_example" # character |  (Optional)
var_associated_uniprot_full_name <- "associated_uniprot_full_name_example" # character |  (Optional)
var_associated_dbxrefs <- "associated_dbxrefs_example" # character |  (Optional)
var_pmid <- "pmid_example" # character |  (Optional)
var_detection_method <- "detection_method_example" # character |  (Optional)
var_interaction_type <- "interaction_type_example" # character |  (Optional)
var_label <- "label_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ProteinsProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, associated_protein_id = var_associated_protein_id, associated_protein_name = var_associated_protein_name, associated_uniprot_name = var_associated_uniprot_name, associated_uniprot_full_name = var_associated_uniprot_full_name, associated_dbxrefs = var_associated_dbxrefs, pmid = var_pmid, detection_method = var_detection_method, interaction_type = var_interaction_type, label = var_label, method = var_method, source = var_source, files_fileset = var_files_fileset, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$ProteinsProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, associated_protein_id = var_associated_protein_id, associated_protein_name = var_associated_protein_name, associated_uniprot_name = var_associated_uniprot_name, associated_uniprot_full_name = var_associated_uniprot_full_name, associated_dbxrefs = var_associated_dbxrefs, pmid = var_pmid, detection_method = var_detection_method, interaction_type = var_interaction_type, label = var_label, method = var_method, source = var_source, files_fileset = var_files_fileset, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein_id** | **character**|  | [optional] 
 **protein_name** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **uniprot_full_name** | **character**|  | [optional] 
 **dbxrefs** | **character**|  | [optional] 
 **associated_protein_id** | **character**|  | [optional] 
 **associated_protein_name** | **character**|  | [optional] 
 **associated_uniprot_name** | **character**|  | [optional] 
 **associated_uniprot_full_name** | **character**|  | [optional] 
 **associated_dbxrefs** | **character**|  | [optional] 
 **pmid** | **character**|  | [optional] 
 **detection_method** | Enum [3D electron microscopy, Split renilla luciferase complementation, acetylase assay, adp ribosylase assay, affinity chromatography technology, affinity technology, aggregation assay, amplified luminescent proximity homogeneous assay, ampylation assay, anti bait coimmunoprecipitation, anti tag coimmunoprecipitation, antibody array, array technology, atomic force microscopy, atpase assay, avexis, barcode fusion genetics two hybrid, bead aggregation assay, beta galactosidase complementation, beta lactamase complementation, bimolecular fluorescence complementation, bio-layer interferometry, biochemical, bioluminescence resonance energy transfer, biophysical, biosensor, blue native page, chromatin immunoprecipitation array, chromatin immunoprecipitation assay, chromatography technology, circular dichroism, classical fluorescence spectroscopy, cleavage assay, coimmunoprecipitation, comigration in gel electrophoresis, comigration in non denaturing gel electrophoresis, comigration in sds page, competition binding, confocal microscopy, cosedimentation, cosedimentation in solution, cosedimentation through density gradient, cross-linking study, de-ADP-ribosylation assay, deacetylase assay, decarboxylation assay, demethylase assay, detection by mass spectrometry, deubiquitinase assay, differential scanning calorimetry, dihydrofolate reductase reconstruction, display technology, dynamic light scattering, electron diffraction, electron microscopy, electron microscopy 3D helical reconstruction, electron microscopy 3D single particle reconstruction, electron paramagnetic resonance, electron tomography, electrophoretic mobility shift assay, electrophoretic mobility supershift assay, electrophoretic mobility-based method, enzymatic footprinting, enzymatic study, enzyme linked immunosorbent assay, experimental interaction detection, far western blotting, field flow fractionation, filamentous phage display, filter binding, filter trap assay, fluorescence correlation spectroscopy, fluorescence microscopy, fluorescence polarization spectroscopy, fluorescence recovery after photobleaching, fluorescence technology, fluorescence-activated cell sorting, fluorescent resonance energy transfer, footprinting, force spectroscopy, gal4 vp16 complementation, gdp/gtp exchange assay, glycosylase assay, gtpase assay, homogeneous time resolved fluorescence, hydroxylase assay, imaging technique, immunodepleted coimmunoprecipitation, in-gel kinase assay, inference by socio-affinity scoring, infrared spectroscopy, interaction detection method, interactome parallel affinity capture, ion exchange chromatography, ion mobility mass spectrometry of complexes, isothermal titration calorimetry, kinase homogeneous time resolved fluorescence, kinase scintillation proximity assay, lambda phage display, lambda repressor two hybrid, lex-a dimerization assay, lexa b52 complementation, lexa vp16 complementation, light microscopy, light scattering, lipoprotein cleavage assay, luminescence based mammalian interactome mapping, mammalian protein protein interaction trap, mass spectrometry studies of complexes, mass spectrometry study of hydrogen/deuterium exchange, methyltransferase assay, methyltransferase radiometric assay, microscale thermophoresis, molecular sieving, mrna display, myristoylase assay, neddylase assay, nuclear magnetic resonance, nuclease assay, oxidase assay, oxidoreductase assay, p8 filamentous phage display, palmitoylase assay, peptide array, phage display, phosphatase assay, phosphotransferase assay, polymerization, probe interaction assay, protease accessibility laddering, protease assay, protein array, protein complementation assay, protein cross-linking with a bifunctional reagent, protein kinase assay, protein phosphatase assay, protein three hybrid, proteinchip(r) on a surface-enhanced laser desorption/ionization, proximity labelling technology, proximity ligation assay, proximity-dependent biotin identification, pull down, reverse phase chromatography, reverse ras recruitment system, reverse two hybrid, ribonuclease assay, rna immunoprecipitation, rna interference, sandwich immunoassay, saturation binding, scanning electron microscopy, scintillation proximity assay, small angle neutron scattering, solid phase assay, solid state nmr, solution state nmr, split firefly luciferase complementation, split luciferase complementation, static light scattering, sumoylase assay, super-resolution microscopy, surface plasmon resonance, surface plasmon resonance array, t7 phage display, tandem affinity purification, thermal shift binding, three hybrid, tox-r dimerization assay, transcriptional complementation assay, transmission electron microscopy, two hybrid, two hybrid array, two hybrid bait and prey pooling approach, two hybrid fragment pooling approach, two hybrid pooling approach, two hybrid prey pooling approach, ubiquitin reconstruction, ubiquitinase assay, ultraviolet-visible spectroscopy, unspecified method, validated two hybrid, virotrap, x ray scattering, x-ray crystallography, x-ray fiber diffraction, yeast display, zymography] |  | [optional] 
 **interaction_type** | Enum [acetylation reaction, adp ribosylation reaction, ampylation reaction, association, atpase reaction, cleavage reaction, colocalization, covalent binding, de-ADP-ribosylation reaction, deacetylation reaction, demethylation reaction, deneddylation reaction, dephosphorylation reaction, deubiquitination reaction, direct interaction, disulfide bond, dna cleavage, enzymatic reaction, glycosylation reaction, gtpase reaction, guanine nucleotide exchange factor reaction, hydroxylation reaction, lipid addition, lipoprotein cleavage reaction, methylation reaction, myristoylation reaction, neddylation reaction, oxidoreductase activity electron transfer reaction, palmitoylation reaction, phosphorylation reaction, phosphotransfer reaction, physical association, proline isomerization  reaction, protein cleavage, proximity, putative self interaction, rna cleavage, self interaction, sumoylation reaction, transglutamination reaction, ubiquitination reaction] |  | [optional] 
 **label** | Enum [3D electron microscopy, Split renilla luciferase complementation, acetylase assay, adp ribosylase assay, affinity chromatography technology, affinity technology, aggregation assay, amplified luminescent proximity homogeneous assay, ampylation assay, anti bait coimmunoprecipitation, anti tag coimmunoprecipitation, antibody array, array technology, atomic force microscopy, atpase assay, avexis, barcode fusion genetics two hybrid, bead aggregation assay, beta galactosidase complementation, beta lactamase complementation, bimolecular fluorescence complementation, bio-layer interferometry, biochemical, bioluminescence resonance energy transfer, biophysical, biosensor, blue native page, chromatin immunoprecipitation array, chromatin immunoprecipitation assay, chromatography technology, circular dichroism, classical fluorescence spectroscopy, cleavage assay, coimmunoprecipitation, comigration in gel electrophoresis, comigration in non denaturing gel electrophoresis, comigration in sds page, competition binding, confocal microscopy, cosedimentation, cosedimentation in solution, cosedimentation through density gradient, cross-linking study, de-ADP-ribosylation assay, deacetylase assay, decarboxylation assay, demethylase assay, detection by mass spectrometry, deubiquitinase assay, differential scanning calorimetry, dihydrofolate reductase reconstruction, display technology, dynamic light scattering, electron diffraction, electron microscopy, electron microscopy 3D helical reconstruction, electron microscopy 3D single particle reconstruction, electron paramagnetic resonance, electron tomography, electrophoretic mobility shift assay, electrophoretic mobility supershift assay, electrophoretic mobility-based method, enzymatic footprinting, enzymatic study, enzyme linked immunosorbent assay, experimental interaction detection, far western blotting, field flow fractionation, filamentous phage display, filter binding, filter trap assay, fluorescence correlation spectroscopy, fluorescence microscopy, fluorescence polarization spectroscopy, fluorescence recovery after photobleaching, fluorescence technology, fluorescence-activated cell sorting, fluorescent resonance energy transfer, footprinting, force spectroscopy, gal4 vp16 complementation, gdp/gtp exchange assay, glycosylase assay, gtpase assay, homogeneous time resolved fluorescence, hydroxylase assay, imaging technique, immunodepleted coimmunoprecipitation, in-gel kinase assay, inference by socio-affinity scoring, infrared spectroscopy, interaction detection method, interactome parallel affinity capture, ion exchange chromatography, ion mobility mass spectrometry of complexes, isothermal titration calorimetry, kinase homogeneous time resolved fluorescence, kinase scintillation proximity assay, lambda phage display, lambda repressor two hybrid, lex-a dimerization assay, lexa b52 complementation, lexa vp16 complementation, light microscopy, light scattering, lipoprotein cleavage assay, luminescence based mammalian interactome mapping, mammalian protein protein interaction trap, mass spectrometry studies of complexes, mass spectrometry study of hydrogen/deuterium exchange, methyltransferase assay, methyltransferase radiometric assay, microscale thermophoresis, molecular sieving, mrna display, myristoylase assay, neddylase assay, nuclear magnetic resonance, nuclease assay, oxidase assay, oxidoreductase assay, p8 filamentous phage display, palmitoylase assay, peptide array, phage display, phosphatase assay, phosphotransferase assay, polymerization, probe interaction assay, protease accessibility laddering, protease assay, protein array, protein complementation assay, protein cross-linking with a bifunctional reagent, protein kinase assay, protein phosphatase assay, protein three hybrid, proteinchip(r) on a surface-enhanced laser desorption/ionization, proximity labelling technology, proximity ligation assay, proximity-dependent biotin identification, pull down, reverse phase chromatography, reverse ras recruitment system, reverse two hybrid, ribonuclease assay, rna immunoprecipitation, rna interference, sandwich immunoassay, saturation binding, scanning electron microscopy, scintillation proximity assay, small angle neutron scattering, solid phase assay, solid state nmr, solution state nmr, split firefly luciferase complementation, split luciferase complementation, static light scattering, sumoylase assay, super-resolution microscopy, surface plasmon resonance, surface plasmon resonance array, t7 phage display, tandem affinity purification, thermal shift binding, three hybrid, tox-r dimerization assay, transcriptional complementation assay, transmission electron microscopy, two hybrid, two hybrid array, two hybrid bait and prey pooling approach, two hybrid fragment pooling approach, two hybrid pooling approach, two hybrid prey pooling approach, ubiquitin reconstruction, ubiquitinase assay, ultraviolet-visible spectroscopy, unspecified method, validated two hybrid, virotrap, x ray scattering, x-ray crystallography, x-ray fiber diffraction, yeast display, zymography] |  | [optional] 
 **method** | Enum [acetylation reaction, acetylation reaction, direct interaction, adp ribosylation reaction, adp ribosylation reaction, direct interaction, adp ribosylation reaction, direct interaction, enzymatic reaction, ampylation reaction, association, association, colocalization, association, colocalization, direct interaction, physical association, association, colocalization, physical association, association, covalent binding, association, direct interaction, association, direct interaction, physical association, association, direct interaction, protein cleavage, association, disulfide bond, association, hydroxylation reaction, association, phosphorylation reaction, association, physical association, association, ubiquitination reaction, atpase reaction, cleavage reaction, cleavage reaction, direct interaction, cleavage reaction, enzymatic reaction, cleavage reaction, protein cleavage, colocalization, colocalization, direct interaction, colocalization, direct interaction, physical association, colocalization, physical association, covalent binding, covalent binding, direct interaction, de-ADP-ribosylation reaction, deacetylation reaction, deacetylation reaction, direct interaction, demethylation reaction, deneddylation reaction, dephosphorylation reaction, dephosphorylation reaction, direct interaction, dephosphorylation reaction, physical association, deubiquitination reaction, direct interaction, direct interaction, disulfide bond, direct interaction, enzymatic reaction, direct interaction, glycosylation reaction, direct interaction, methylation reaction, direct interaction, neddylation reaction, direct interaction, phosphorylation reaction, direct interaction, physical association, direct interaction, proline isomerization  reaction, direct interaction, protein cleavage, direct interaction, proximity, direct interaction, sumoylation reaction, direct interaction, ubiquitination reaction, disulfide bond, disulfide bond, physical association, dna cleavage, enzymatic reaction, glycosylation reaction, gtpase reaction, guanine nucleotide exchange factor reaction, hydroxylation reaction, lipid addition, myristoylation reaction, lipoprotein cleavage reaction, methylation reaction, neddylation reaction, oxidoreductase activity electron transfer reaction, palmitoylation reaction, phosphorylation reaction, phosphorylation reaction, physical association, phosphorylation reaction, protein cleavage, phosphotransfer reaction, physical association, physical association, proximity, physical association, self interaction, protein cleavage, proximity, putative self interaction, rna cleavage, self interaction, sumoylation reaction, transglutamination reaction, ubiquitination reaction] |  | [optional] 
 **source** | Enum [BioGRID, BioGRID; IntAct, IntAct] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[ProteinsProteins]**](ProteinsProteins.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **QtlSummaryEndpoint**
> array[QtlSummaryEndpoint] QtlSummaryEndpoint(spdi = var.spdi, hgvs = var.hgvs, ca_id = var.ca_id, variant_id = var.variant_id, organism = "Homo sapiens", page = var.page, limit = var.limit, files_fileset = var.files_fileset)



Retrieve a summary of associated genes from GTEx eQTLs & splice QTLs by internal variant ids.<br>     Example: <br>     variant_id = NC_000001.11:40242002:G:A,<br>     spdi = NC_000001.11:40242002:G:A,<br>     hgvs = NC_000001.11:g.40242003G>A,<br>     ca_id = CA16051554,<br>     files_fileset = IGVFFI9602ILPC.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 3.4 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$QtlSummaryEndpoint(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, page = var_page, limit = var_limit, files_fileset = var_files_filesetdata_file = "result.txt")
result <- api_instance$QtlSummaryEndpoint(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, page = var_page, limit = var_limit, files_fileset = var_files_fileset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] 
 **limit** | **numeric**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 

### Return type

[**array[QtlSummaryEndpoint]**](QtlSummaryEndpoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Qtls**
> array[Qtls] Qtls(gene_id = var.gene_id, gene_name = var.gene_name, variant_id = var.variant_id, spdi = var.spdi, rsid = var.rsid, ca_id = var.ca_id, region = var.region, biological_context = var.biological_context, method = var.method, source = var.source, organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve QTLs from gene, variant, or region.<br>     Define exactly one query type: gene (gene_id or gene_name), variant (variant_id, spdi, rsid, or ca_id), or region.<br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"eqtl\">eQTL</button> <button class=\"method-example-tab\" data-method-example-tab=\"spliceqtl\">spliceQTL</button> <button class=\"method-example-tab\" data-method-example-tab=\"pqtl\">pQTL</button> <button class=\"method-example-tab\" data-method-example-tab=\"caqtl\">caQTL</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"eqtl\"> <strong>eQTL:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>spdi = NC_000001.11:40241653:TGAA:TGAAATTGAA</li> <li>method = eQTL</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>gene_id = ENSG00000259943</li> <li>method = eQTL</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"spliceqtl\"> <strong>spliceQTL:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>variant_id = NC_000001.11:898757:AAAAAA:AAAAAAA</li> <li>method = spliceQTL</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000131236</li> <li>method = spliceQTL</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"pqtl\"> <strong>pQTL:</strong> <div class=\"method-query-example\"> <strong>query by variant identifier</strong>  <ul> <li>variant_id = NC_000002.12:27508072:T:C</li> <li>method = pQTL</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000084734</li> <li>method = pQTL</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"caqtl\"> <strong>caQTL:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>variant_id = NC_000001.11:40241653:TGAA:TGAAATTGAA</li> <li>method = caQTL</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>region = chr1:40232650-40241654</li> <li>method = caQTL</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_spdi <- "spdi_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Qtls(gene_id = var_gene_id, gene_name = var_gene_name, variant_id = var_variant_id, spdi = var_spdi, rsid = var_rsid, ca_id = var_ca_id, region = var_region, biological_context = var_biological_context, method = var_method, source = var_source, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$Qtls(gene_id = var_gene_id, gene_name = var_gene_name, variant_id = var_variant_id, spdi = var_spdi, rsid = var_rsid, ca_id = var_ca_id, region = var_region, biological_context = var_biological_context, method = var_method, source = var_source, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **spdi** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **method** | Enum [eQTL, pQTL, spliceQTL, caQTL] |  | [optional] 
 **source** | Enum [AFGR, EBI, IGVF, ENCODE, UKB] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[Qtls]**](Qtls.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Studies**
> array[Study] Studies(study_id = var.study_id, pmid = var.pmid, files_fileset = var.files_fileset, page = 0)



Retrieve studies from GWAS. <br>   Example: study_id = GCST007798, <br>   pmid = 30929738, <br>   files_fileset = IGVFFI1309WDQG. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_study_id <- "study_id_example" # character |  (Optional)
var_pmid <- "pmid_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Studies(study_id = var_study_id, pmid = var_pmid, files_fileset = var_files_fileset, page = var_pagedata_file = "result.txt")
result <- api_instance$Studies(study_id = var_study_id, pmid = var_pmid, files_fileset = var_files_fileset, page = var_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **character**|  | [optional] 
 **pmid** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]

### Return type

[**array[Study]**](Study.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Transcripts**
> array[Transcript] Transcripts(transcript_id = var.transcript_id, region = var.region, transcript_type = var.transcript_type, organism = "Homo sapiens", page = 0, limit = var.limit, refseq_transcript_id = var.refseq_transcript_id)



Retrieve transcripts. <br>   Example: region = chr20:9537369-9839076, <br>   transcript_type = protein_coding, <br>   transcript_id = ENST00000443707 (Ensembl ids), <br>   refseq_transcript_id = NM_177990.4, <br>   organism = Homo sapiens. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_transcript_id <- "transcript_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_transcript_type <- "transcript_type_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)
var_refseq_transcript_id <- "refseq_transcript_id_example" # character | Versioned RefSeq RNA accession; exact match, human transcripts only. (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Transcripts(transcript_id = var_transcript_id, region = var_region, transcript_type = var_transcript_type, organism = var_organism, page = var_page, limit = var_limit, refseq_transcript_id = var_refseq_transcript_iddata_file = "result.txt")
result <- api_instance$Transcripts(transcript_id = var_transcript_id, region = var_region, transcript_type = var_transcript_type, organism = var_organism, page = var_page, limit = var_limit, refseq_transcript_id = var_refseq_transcript_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transcript_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **transcript_type** | Enum [IG_C_gene, IG_C_pseudogene, IG_D_gene, IG_J_gene, IG_J_pseudogene, IG_V_gene, IG_V_pseudogene, IG_pseudogene, Mt_rRNA, Mt_tRNA, TEC, TR_C_gene, TR_D_gene, TR_J_gene, TR_J_pseudogene, TR_V_gene, TR_V_pseudogene, artifact, lncRNA, miRNA, misc_RNA, non_stop_decay, nonsense_mediated_decay, processed_pseudogene, processed_transcript, protein_coding, protein_coding_CDS_not_defined, protein_coding_LoF, pseudogene, rRNA, rRNA_pseudogene, retained_intron, ribozyme, sRNA, scRNA, scaRNA, snRNA, snoRNA, transcribed_processed_pseudogene, transcribed_unitary_pseudogene, transcribed_unprocessed_pseudogene, translated_processed_pseudogene, translated_unprocessed_pseudogene, unitary_pseudogene, unprocessed_pseudogene, vault_RNA] |  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 
 **refseq_transcript_id** | **character**| Versioned RefSeq RNA accession; exact match, human transcripts only. | [optional] 

### Return type

[**array[Transcript]**](Transcript.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **TranscriptsFromGenes**
> array[GenesFromTranscripts] TranscriptsFromGenes(gene_id = var.gene_id, hgnc_id = var.hgnc_id, gene_name = var.gene_name, synonym = var.synonym, region = var.region, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve transcripts from genes.<br>     Set verbose = true to retrieve full info on the transcripts.<br>     At least one of these fields is required: gene_id, hgnc_id, gene_name, synonym, region. <br>     Example: gene_name = ATF3, <br>     hgnc_id = HGNC:28208, <br>     synonym = CKLF, <br>     region = chr3:193593143-193697811, <br>     organism = Homo sapiens, <br>     gene_id = ENSG00000187642 (Ensembl ids). <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TranscriptsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$TranscriptsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromTranscripts]**](GenesFromTranscripts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **TranscriptsFromProteins**
> array[ProteinsFromTranscripts] TranscriptsFromProteins(protein_id = var.protein_id, protein_name = var.protein_name, uniprot_name = var.uniprot_name, uniprot_full_name = var.uniprot_full_name, dbxrefs = var.dbxrefs, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve transcripts from proteins.<br>     Set verbose = true to retrieve full info on the transcripts.<br>     Protein IDs support the following formats: ENSP00000384707.1 or ENSP00000384707 (Ensembl IDs) or P49711-2 (Uniprot ids)<br>     Example: protein_name = CTCF, <br>     uniprot_name = CTCF_HUMAN, <br>     uniprot_full_name = Transcriptional repressor CTCF, <br>     dbxrefs = P49711, <br>     protein_id = ENSP00000384707, <br>     organism = Homo sapiens. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_protein_name <- "protein_name_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_uniprot_full_name <- "uniprot_full_name_example" # character |  (Optional)
var_dbxrefs <- "dbxrefs_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$TranscriptsFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$TranscriptsFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein_id** | **character**|  | [optional] 
 **protein_name** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **uniprot_full_name** | **character**|  | [optional] 
 **dbxrefs** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[ProteinsFromTranscripts]**](ProteinsFromTranscripts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantByFrequencySource**
> array[SequenceVariant] VariantByFrequencySource(source, spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, region = var.region, gencode_category = var.gencode_category, minimum_af = 0, maximum_af = 1, organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve genetic variants within a genomic region by frequencies.<br>   Source is required. <br>    Example: region = chr3:186741137-186742238 (maximum length: 10kb), <br>    source = bravo_af, <br>    GENCODE_category = coding (or noncoding), <br>    spdi = NC_000003.12:186741142:G:A, <br>    hgvs = NC_000003.12:g.186741143G>A, <br>    rsid = rs1720801112, <br>    ca_id = CA739473472, <br>    minimum_af: 0, <br>    maximum_af:0.8. <br>    Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_source <- "source_example" # character | 
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_gencode_category <- "gencode_category_example" # character |  (Optional)
var_minimum_af <- 0 # numeric |  (Optional)
var_maximum_af <- 1 # numeric |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantByFrequencySource(var_source, spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, region = var_region, gencode_category = var_gencode_category, minimum_af = var_minimum_af, maximum_af = var_maximum_af, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantByFrequencySource(var_source, spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, region = var_region, gencode_category = var_gencode_category, minimum_af = var_minimum_af, maximum_af = var_maximum_af, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | Enum [bravo_af, gnomad_af_total, gnomad_af_afr, gnomad_af_afr_female, gnomad_af_afr_male, gnomad_af_ami, gnomad_af_ami_female, gnomad_af_ami_male, gnomad_af_amr, gnomad_af_amr_female, gnomad_af_amr_male, gnomad_af_asj, gnomad_af_asj_female, gnomad_af_asj_male, gnomad_af_eas, gnomad_af_eas_female, gnomad_af_eas_male, gnomad_af_female, gnomad_af_fin, gnomad_af_fin_female, gnomad_af_fin_male, gnomad_af_male, gnomad_af_nfe, gnomad_af_nfe_female, gnomad_af_nfe_male, gnomad_af_oth, gnomad_af_oth_female, gnomad_af_oth_male, gnomad_af_sas, gnomad_af_sas_male, gnomad_af_sas_female, gnomad_af_raw] |  | 
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **gencode_category** | Enum [coding, noncoding] |  | [optional] 
 **minimum_af** | **numeric**|  | [optional] [default to 0]
 **maximum_af** | **numeric**|  | [optional] [default to 1]
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[SequenceVariant]**](SequenceVariant.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantSummary**
> VariantSummary VariantSummary(spdi = var.spdi, hgvs = var.hgvs, ca_id = var.ca_id, variant_id = var.variant_id, organism = "Homo sapiens", igvf_only = "false")



Retrieve genetic variants summary.<br>    Example: variant_id = NC_000020.11:3658947:A:G, <br>    spdi = NC_000020.11:3658947:A:G, <br>    hgvs = NC_000020.11:g.3658948A>G. <br>    ca_id = CA739473472. <br>    The response includes an \"annotations\" field summarizing everything known about the variant across genes, drugs, proteins, diseases, phenotypes, biosamples and genomic elements: for each data type, a total edge count and a breakdown of counts by method and biological context (when available). <br>    Set igvf_only = true to restrict the \"annotations\" counts to records sourced from IGVF only.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_igvf_only <- "false" # character |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantSummary(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, igvf_only = var_igvf_onlydata_file = "result.txt")
result <- api_instance$VariantSummary(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, igvf_only = var_igvf_only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **igvf_only** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]

### Return type

[**VariantSummary**](VariantSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **Variants**
> array[SequenceVariant] Variants(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region, gencode_category = var.gencode_category, mouse_strain = var.mouse_strain, organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve genetic variants.<br>   Example: organism = Homo sapiens or Mus musculus.<br>   mouse_strain = CAST_EiJ (only for mouse variants). <br>   The examples below are specific to Homo sapiens: <br>   region = chr1:1157520-1158189 (maximum length: 10kb), <br>   GENCODE_category = coding or noncoding (only for human variants), <br>   rsid = rs58658771,  <br>   spdi = NC_000020.11:3658947:A:G, <br>   hgvs = NC_000020.11:g.3658948A>G, <br>   ca_id = CA739473472, <br>   variant_id = NC_000020.11:3658947:A:G. <br>   The limit parameter controls the page size and can not exceed 500. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_gencode_category <- "gencode_category_example" # character |  (Optional)
var_mouse_strain <- "mouse_strain_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Variants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, gencode_category = var_gencode_category, mouse_strain = var_mouse_strain, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$Variants(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, gencode_category = var_gencode_category, mouse_strain = var_mouse_strain, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **gencode_category** | Enum [coding, noncoding] |  | [optional] 
 **mouse_strain** | Enum [129S1_SvImJ, A_J, CAST_EiJ, NOD_ShiLtJ, NZO_HlLtJ, PWK_PhJ, WSB_EiJ] |  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[SequenceVariant]**](SequenceVariant.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsAlleles**
> array[Array] VariantsAlleles(region)



Retrieve GNOMAD alleles for variants in a given region.<br>    Example: region = chr1:1157520-1158520 (maximum length: 10kb).<br>    Region limit: 1kb pairs.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_region <- "region_example" # character | 

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsAlleles(var_regiondata_file = "result.txt")
result <- api_instance$VariantsAlleles(var_region)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **character**|  | 

### Return type

[**array[Array]**](array.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromBiosamples**
> array[BiosamplesFromVariants] VariantsFromBiosamples(biosample_id = var.biosample_id, biosample_name = var.biosample_name, files_fileset = var.files_fileset, method = var.method, element_id = var.element_id, significant = var.significant, gene_id = var.gene_id, gene_name = var.gene_name, phenotype_id = var.phenotype_id, phenotype_name = var.phenotype_name, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve data from STARR-seq, BlueSTARR, MPRA, and ColocBoost for a given biosample. Set organism = Mus musculus for mouse MPRA sequences (GRCm39); the default is Homo sapiens (GRCh38).<br>     At least one of these fields is required: biosample_id or biosample_name. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"mpra\">MPRA</button> <button class=\"method-example-tab\" data-method-example-tab=\"starr-seq\">STARR-seq</button> <button class=\"method-example-tab\" data-method-example-tab=\"bluestarr\">BlueSTARR</button> <button class=\"method-example-tab\" data-method-example-tab=\"colocboost\">ColocBoost</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"mpra\"> <strong>MPRA:</strong> <div class=\"method-query-example\"> <strong>human MPRA by biosample identifier</strong>  <ul> <li>organism = Homo sapiens</li> <li>biosample_id = EFO_0001182</li> <li>method = MPRA</li> <li>element_id = MPRA_chr1_1000079_1000279_GRCh38_plus_IGVFFI7321WGMD</li> <li>significant = true</li> </ul> </div> <div class=\"method-query-example\"> <strong>mouse MPRA by biosample identifier</strong>  <ul> <li>organism = Mus musculus</li> <li>biosample_id = CLO_0008675</li> <li>files_fileset = IGVFFI5939ZOZQ</li> <li>method = MPRA</li> <li>verbose = true</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"starr-seq\"> <strong>STARR-seq:</strong> <div class=\"method-query-example\"> <strong>query by biosample identifier</strong>  <ul> <li>biosample_id = EFO_0002067</li> <li>method = STARR-seq</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"bluestarr\"> <strong>BlueSTARR:</strong> <div class=\"method-query-example\"> <strong>query by biosample identifier</strong>  <ul> <li>biosample_id = EFO_0002067</li> <li>method = BlueSTARR</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"colocboost\"> <strong>ColocBoost:</strong> <div class=\"method-query-example\"> <strong>query by biosample identifier</strong>  <ul> <li>biosample_id = UBERON_0001225</li> <li>method = ColocBoost</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by biosample identifier and gene (gene_name also accepted, e.g. gene_name = UBIAD1)</strong>  <ul> <li>biosample_id = UBERON_0001225</li> <li>method = ColocBoost</li> <li>gene_id = ENSG00000120942</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by biosample identifier and phenotype (phenotype_name also accepted, e.g. phenotype_name = c-reactive protein measurement)</strong>  <ul> <li>biosample_id = UBERON_0001225</li> <li>method = ColocBoost</li> <li>phenotype_id = EFO_0004458</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_biosample_id <- "biosample_id_example" # character |  (Optional)
var_biosample_name <- "biosample_name_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_element_id <- "element_id_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_phenotype_id <- "phenotype_id_example" # character |  (Optional)
var_phenotype_name <- "phenotype_name_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromBiosamples(biosample_id = var_biosample_id, biosample_name = var_biosample_name, files_fileset = var_files_fileset, method = var_method, element_id = var_element_id, significant = var_significant, gene_id = var_gene_id, gene_name = var_gene_name, phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromBiosamples(biosample_id = var_biosample_id, biosample_name = var_biosample_name, files_fileset = var_files_fileset, method = var_method, element_id = var_element_id, significant = var_significant, gene_id = var_gene_id, gene_name = var_gene_name, phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **biosample_id** | **character**|  | [optional] 
 **biosample_name** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **method** | Enum [BlueSTARR, ColocBoost, MPRA, STARR-seq] |  | [optional] 
 **element_id** | **character**|  | [optional] 
 **significant** | Enum [true, false] |  | [optional] 
 **gene_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **phenotype_id** | **character**|  | [optional] 
 **phenotype_name** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[BiosamplesFromVariants]**](BiosamplesFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromCodingVariants**
> array[VariantBasic] VariantsFromCodingVariants(coding_variant_name = var.coding_variant_name, hgvsp = var.hgvsp, protein_id = var.protein_id, uniprot_name = var.uniprot_name, gene_name = var.gene_name, amino_acid_position = var.amino_acid_position, alt_amino_acid = var.alt_amino_acid, transcript_id = var.transcript_id, page = 0, limit = var.limit)



Retrieve variants associated with a coding variant.<br>     alt_amino_acid filters by the alternate amino acid at the given position (single-letter code, use * for stop codon). <br>     Example: coding_variant_name = SAMD7_ENST00000335556_p.Gly253Asp_c.758_759delinsAC, <br>     hgvsp = p.Gly253Asp, <br>     gene_name = SAMD7, <br>     protein_id = ENSP00000334668, <br>     uniprot_name = SAMD7_HUMAN, <br>     transcript_id = ENST00000335556, <br>     amino_acid_position = 253, <br>     alt_amino_acid = D, <br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_coding_variant_name <- "coding_variant_name_example" # character |  (Optional)
var_hgvsp <- "hgvsp_example" # character |  (Optional)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_amino_acid_position <- "amino_acid_position_example" # character |  (Optional)
var_alt_amino_acid <- "alt_amino_acid_example" # character |  (Optional)
var_transcript_id <- "transcript_id_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromCodingVariants(coding_variant_name = var_coding_variant_name, hgvsp = var_hgvsp, protein_id = var_protein_id, uniprot_name = var_uniprot_name, gene_name = var_gene_name, amino_acid_position = var_amino_acid_position, alt_amino_acid = var_alt_amino_acid, transcript_id = var_transcript_id, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromCodingVariants(coding_variant_name = var_coding_variant_name, hgvsp = var_hgvsp, protein_id = var_protein_id, uniprot_name = var_uniprot_name, gene_name = var_gene_name, amino_acid_position = var_amino_acid_position, alt_amino_acid = var_alt_amino_acid, transcript_id = var_transcript_id, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coding_variant_name** | **character**|  | [optional] 
 **hgvsp** | **character**|  | [optional] 
 **protein_id** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **amino_acid_position** | **character**|  | [optional] 
 **alt_amino_acid** | Enum [A, C, D, E, F, G, H, I, K, L, M, N, P, Q, R, S, T, V, W, Y, *] |  | [optional] 
 **transcript_id** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[VariantBasic]**](VariantBasic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromDiseases**
> array[DiseaseFromVariants] VariantsFromDiseases(disease_id = var.disease_id, disease_name = var.disease_name, assertion = var.assertion, pmid = var.pmid, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve variants and genes associated with the query disease from ClinGen. <br>   Either disease_id or disease_name is required. <br>   Example: disease_id = MONDO_0009861, <br>   disease_name = phenylketonuria, <br>   assertion = Pathogenic, <br>   pmid = 2574002. <br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_disease_id <- "disease_id_example" # character |  (Optional)
var_disease_name <- "disease_name_example" # character |  (Optional)
var_assertion <- "assertion_example" # character |  (Optional)
var_pmid <- "pmid_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromDiseases(disease_id = var_disease_id, disease_name = var_disease_name, assertion = var_assertion, pmid = var_pmid, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromDiseases(disease_id = var_disease_id, disease_name = var_disease_name, assertion = var_assertion, pmid = var_pmid, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disease_id** | **character**|  | [optional] 
 **disease_name** | **character**|  | [optional] 
 **assertion** | Enum [Benign, Likely Benign, Likely Pathogenic, Pathogenic, Uncertain Significance] |  | [optional] 
 **pmid** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[DiseaseFromVariants]**](DiseaseFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromDrugs**
> array[VariantsFromDrugs] VariantsFromDrugs(drug_id = var.drug_id, drug_name = var.drug_name, phenotype_categories = var.phenotype_categories, pmid = var.pmid, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve variants associated with the query drugs from pharmGKB.<br>   Set verbose = true to retrieve full info on the variants. <br>   Either drug_id or drug_name is required. <br>   Example: drug_id = PA448497, <br>   drug_name = aspirin, <br>   pmid = 20824505, <br>   phenotype_categories = Toxicity. <br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_drug_id <- "drug_id_example" # character |  (Optional)
var_drug_name <- "drug_name_example" # character |  (Optional)
var_phenotype_categories <- "phenotype_categories_example" # character |  (Optional)
var_pmid <- "pmid_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromDrugs(drug_id = var_drug_id, drug_name = var_drug_name, phenotype_categories = var_phenotype_categories, pmid = var_pmid, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromDrugs(drug_id = var_drug_id, drug_name = var_drug_name, phenotype_categories = var_phenotype_categories, pmid = var_pmid, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **drug_id** | **character**|  | [optional] 
 **drug_name** | **character**|  | [optional] 
 **phenotype_categories** | Enum [Dosage, Efficacy, Metabolism/PK, Other, PD, Toxicity] |  | [optional] 
 **pmid** | **character**|  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[VariantsFromDrugs]**](VariantsFromDrugs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromGeneProteins**
> array[GenesProteinsFromVariants] VariantsFromGeneProteins(query, page = 0, limit = var.limit)



Retrieve variants associated with genes or proteins that match a query. <br>   Example: query = ATF1.<br>   The limit parameter controls the page size and can not exceed 100. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_query <- "query_example" # character | 
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromGeneProteins(var_query, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromGeneProteins(var_query, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**|  | 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesProteinsFromVariants]**](GenesProteinsFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromGenes**
> array[GenesFromVariants] VariantsFromGenes(gene_id = var.gene_id, hgnc_id = var.hgnc_id, gene_name = var.gene_name, synonym = var.synonym, region = var.region, neg_log10_pvalue = var.neg_log10_pvalue, effect_size = var.effect_size, posterior_inclusion_probability = var.posterior_inclusion_probability, log2_fc = var.log2_fc, significant = var.significant, biosample_term = var.biosample_term, biological_context = var.biological_context, label = var.label, method = var.method, files_fileset = var.files_fileset, source = var.source, name = var.name, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve variant-gene pairs including eQTLs & splice QTLs from AFGR and eQTL Catalogue, and CRISPR screens from IGVF, by Ensembl gene ids.<br>     The following parameters can be used to set thresholds on -log10 p_value: gt (>), gte (>=), lt (<), lte (<=).<br>     Set verbose = true to retrieve full info on the corresponding variants and genes.<br>     At least one of these properties must be defined: gene_id, hgnc_id, gene_name, region, synonym, method, or files_fileset. <br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"eqtl\">eQTL</button> <button class=\"method-example-tab\" data-method-example-tab=\"spliceqtl\">spliceQTL</button> <button class=\"method-example-tab\" data-method-example-tab=\"variant-effects\">Variant-EFFECTS</button> <button class=\"method-example-tab\" data-method-example-tab=\"crispr-screen\">CRISPR screen</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"eqtl\"> <strong>eQTL:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>gene_id = ENSG00000187642</li> <li>neg_log10_pvalue = gte:24.5</li> <li>method = eQTL</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>synonym = PERM1</li> <li>method = eQTL</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"spliceqtl\"> <strong>spliceQTL:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>gene_id = ENSG00000188976</li> <li>neg_log10_pvalue = gt:45</li> <li>effect_size = gt:0.5</li> <li>method = spliceQTL</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>synonym = NOC2L</li> <li>method = spliceQTL</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"variant-effects\"> <strong>Variant-EFFECTS:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>gene_id = ENSG00000108179</li> <li>neg_log10_pvalue = gt:13.1</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>synonym = PPIF</li> <li>method = CRISPR screen</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"crispr-screen\"> <strong>CRISPR screen:</strong> <div class=\"method-query-example\"> <strong>query by gene identifier</strong>  <ul> <li>gene_id = ENSG00000177455</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by gene name</strong>  <ul> <li>gene_name = CD19</li> <li>method = CRISPR screen</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_gene_id <- "gene_id_example" # character |  (Optional)
var_hgnc_id <- "hgnc_id_example" # character |  (Optional)
var_gene_name <- "gene_name_example" # character |  (Optional)
var_synonym <- "synonym_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_effect_size <- "effect_size_example" # character |  (Optional)
var_posterior_inclusion_probability <- "posterior_inclusion_probability_example" # character |  (Optional)
var_log2_fc <- "log2_fc_example" # character |  (Optional)
var_significant <- "significant_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_label <- "label_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, neg_log10_pvalue = var_neg_log10_pvalue, effect_size = var_effect_size, posterior_inclusion_probability = var_posterior_inclusion_probability, log2_fc = var_log2_fc, significant = var_significant, biosample_term = var_biosample_term, biological_context = var_biological_context, label = var_label, method = var_method, files_fileset = var_files_fileset, source = var_source, name = var_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromGenes(gene_id = var_gene_id, hgnc_id = var_hgnc_id, gene_name = var_gene_name, synonym = var_synonym, region = var_region, neg_log10_pvalue = var_neg_log10_pvalue, effect_size = var_effect_size, posterior_inclusion_probability = var_posterior_inclusion_probability, log2_fc = var_log2_fc, significant = var_significant, biosample_term = var_biosample_term, biological_context = var_biological_context, label = var_label, method = var_method, files_fileset = var_files_fileset, source = var_source, name = var_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **character**|  | [optional] 
 **hgnc_id** | **character**|  | [optional] 
 **gene_name** | **character**|  | [optional] 
 **synonym** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **effect_size** | **character**|  | [optional] 
 **posterior_inclusion_probability** | **character**|  | [optional] 
 **log2_fc** | **character**|  | [optional] 
 **significant** | Enum [true] |  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **label** | Enum [eQTL, spliceQTL, variant effect on gene expression] |  | [optional] 
 **method** | Enum [CRISPR screen, eQTL, spliceQTL] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **source** | Enum [AFGR, EBI, IGVF] |  | [optional] 
 **name** | Enum [expression modulated by, splicing modulated by] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenesFromVariants]**](GenesFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromGenomicElements**
> array[GenomicElementsFromVariants] VariantsFromGenomicElements(region = var.region, region_type = var.region_type, biosample_term = var.biosample_term, biological_context = var.biological_context, method = var.method, files_fileset = var.files_fileset, page = 0, limit = var.limit)



Retrieve variants associated with genomic elements.<br>   Example: region = chr1:976210-976314, <br>   region_type = accessible dna elements, <br>   biosample_term = EFO_0002067, <br>   biological_context = K562, <br>   method = caQTL. <br>   The limit parameter controls the page size and can not exceed 300. <br>   Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_region <- "region_example" # character |  (Optional)
var_region_type <- "region_type_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromGenomicElements(region = var_region, region_type = var_region_type, biosample_term = var_biosample_term, biological_context = var_biological_context, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromGenomicElements(region = var_region, region_type = var_region_type, biosample_term = var_biosample_term, biological_context = var_biological_context, method = var_method, files_fileset = var_files_fileset, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **character**|  | [optional] 
 **region_type** | Enum [accessible dna elements] |  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **method** | Enum [caQTL] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[GenomicElementsFromVariants]**](GenomicElementsFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromPhenotypes**
> array[VariantsFromPhenotypesItem] VariantsFromPhenotypes(phenotype_id = var.phenotype_id, phenotype_name = var.phenotype_name, neg_log10_pvalue = var.neg_log10_pvalue, method = var.method, label = var.label, class = var.class, files_fileset = var.files_fileset, source = var.source, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve variant-trait pairs from GWAS, SGE, cV2F, and CRISPR screens by phenotypes.<br>     The following parameters can be used to set thresholds on -log10 p_value: gt (>), gte (>=), lt (<), lte (<=). neg_log10_pvalue is only populated for GWAS records; it does not filter out SGE, cV2F, or CRISPR screen edges, which have no p-value field.<br>     Set verbose = true to retrieve full info on the studies.<br>     At least one of these fields is required: phenotype_id, phenotype_name, method, or files_fileset. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"gwas\">GWAS</button> <button class=\"method-example-tab\" data-method-example-tab=\"sge\">SGE</button> <button class=\"method-example-tab\" data-method-example-tab=\"cv2f\">cV2F</button> <button class=\"method-example-tab\" data-method-example-tab=\"crispr-screen\">CRISPR screen</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"gwas\"> <strong>GWAS:</strong> <div class=\"method-query-example\"> <strong>Single result</strong>  <ul> <li>phenotype_id = EFO_0010325</li> <li>method = GWAS</li> </ul> </div> <div class=\"method-query-example\"> <strong>Group results</strong>  <ul> <li>neg_log10_pvalue = gte:5</li> <li>method = GWAS</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"sge\"> <strong>SGE:</strong> <div class=\"method-query-example\"> <strong>Query by phenotype identifier</strong>  <ul> <li>phenotype_id = NCIT_C16407</li> <li>method = SGE</li> </ul> </div> <div class=\"method-query-example\"> <strong>Query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI3125FMNW</li> <li>method = SGE</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"cv2f\"> <strong>cV2F:</strong> <div class=\"method-query-example\"> <strong>query by phenotype identifier</strong>  <ul> <li>phenotype_id = GO_0003674</li> <li>method = cV2F</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI3063JRLI</li> <li>method = cV2F</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"crispr-screen\"> <strong>CRISPR screen:</strong> <div class=\"method-query-example\"> <strong>Query by phenotype identifier</strong>  <ul> <li>phenotype_id = NTR_0001118</li> <li>method = CRISPR screen</li> </ul> </div> <div class=\"method-query-example\"> <strong>Query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI2014OOZP</li> <li>method = CRISPR screen</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_phenotype_id <- "phenotype_id_example" # character |  (Optional)
var_phenotype_name <- "phenotype_name_example" # character |  (Optional)
var_neg_log10_pvalue <- "neg_log10_pvalue_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_label <- "label_example" # character |  (Optional)
var_class <- "class_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromPhenotypes(phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, neg_log10_pvalue = var_neg_log10_pvalue, method = var_method, label = var_label, class = var_class, files_fileset = var_files_fileset, source = var_source, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromPhenotypes(phenotype_id = var_phenotype_id, phenotype_name = var_phenotype_name, neg_log10_pvalue = var_neg_log10_pvalue, method = var_method, label = var_label, class = var_class, files_fileset = var_files_fileset, source = var_source, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phenotype_id** | **character**|  | [optional] 
 **phenotype_name** | **character**|  | [optional] 
 **neg_log10_pvalue** | **character**|  | [optional] 
 **method** | Enum [CRISPR screen, GWAS, SGE, cV2F] |  | [optional] 
 **label** | Enum [GWAS, predicted variant effect on phenotype, protein variant effect, variant effect on phenotype] |  | [optional] 
 **class** | Enum [observed data, prediction] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **source** | Enum [IGVF, OpenTargets] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[VariantsFromPhenotypesItem]**](VariantsFromPhenotypesItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromProteins**
> array[ProteinsFromVariants] VariantsFromProteins(protein_id = var.protein_id, protein_name = var.protein_name, uniprot_name = var.uniprot_name, uniprot_full_name = var.uniprot_full_name, dbxrefs = var.dbxrefs, label = var.label, source = var.source, method = var.method, files_fileset = var.files_fileset, name = var.name, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve allele-specific transcription factor binding events from ADASTRA in cell type-specific context, <br>     allele-specific transcription factor binding events from GVATdb, pQTL from UKB by querying proteins, and predicted allele specific binding from SEMpl.<br>     Protein IDs support the following formats: ENSP00000384707.1 or ENSP00000384707 (Ensembl IDs) or P49711-2 (Uniprot ids).<br>     Set verbose = true to retrieve full info on the variant-transcription factor pairs, and the ontology terms of the cell types.<br>     At least one of these fields is required: protein_id, protein_name, uniprot_name, uniprot_full_name, dbxrefs, method, or files_fileset. <br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based. <br> <br>     <div class=\"method-examples\"> <strong>Examples by method</strong> <p class=\"method-example-description\">These examples are grouped by method; use the <code>method</code> filter to return data from a specific method.</p> <div class=\"method-example-tabs\"> <button class=\"method-example-tab is-active\" data-method-example-tab=\"adastra\">ADASTRA</button> <button class=\"method-example-tab\" data-method-example-tab=\"gvatdb\">GVATdb</button> <button class=\"method-example-tab\" data-method-example-tab=\"semvar\">SEMVAR</button> <button class=\"method-example-tab\" data-method-example-tab=\"pqtl\">pQTL</button> </div> <div class=\"method-example-panel is-active\" data-method-example-panel=\"adastra\"> <strong>ADASTRA:</strong> <div class=\"method-query-example\"> <strong>query by protein identifier</strong>  <ul> <li>protein_id = ENSP00000281043</li> <li>method = ADASTRA</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"gvatdb\"> <strong>GVATdb:</strong> <div class=\"method-query-example\"> <strong>query by protein identifier</strong>  <ul> <li>protein_id = ENSP00000315417</li> <li>method = GVATdb</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"semvar\"> <strong>SEMVAR:</strong> <div class=\"method-query-example\"> <strong>query by protein identifier</strong>  <ul> <li>protein_id = ENSP00000351458</li> <li>method = SEMVAR</li> </ul> </div> <div class=\"method-query-example\"> <strong>query by files_fileset</strong> <p class=\"method-query-example-note\">Each files_fileset maps to at most one method, so a <code>method</code> filter is usually not necessary.</p> <ul> <li>files_fileset = IGVFFI0005WRQP</li> <li>method = SEMVAR</li> </ul> </div> </div> <div class=\"method-example-panel\" data-method-example-panel=\"pqtl\"> <strong>pQTL:</strong> <div class=\"method-query-example\"> <strong>query by protein identifier</strong>  <ul> <li>protein_id = ENSP00000263100</li> <li>method = pQTL</li> </ul> </div> </div> </div>

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_protein_id <- "protein_id_example" # character |  (Optional)
var_protein_name <- "protein_name_example" # character |  (Optional)
var_uniprot_name <- "uniprot_name_example" # character |  (Optional)
var_uniprot_full_name <- "uniprot_full_name_example" # character |  (Optional)
var_dbxrefs <- "dbxrefs_example" # character |  (Optional)
var_label <- "label_example" # character |  (Optional)
var_source <- "source_example" # character |  (Optional)
var_method <- "method_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_name <- "name_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, label = var_label, source = var_source, method = var_method, files_fileset = var_files_fileset, name = var_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromProteins(protein_id = var_protein_id, protein_name = var_protein_name, uniprot_name = var_uniprot_name, uniprot_full_name = var_uniprot_full_name, dbxrefs = var_dbxrefs, label = var_label, source = var_source, method = var_method, files_fileset = var_files_fileset, name = var_name, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protein_id** | **character**|  | [optional] 
 **protein_name** | **character**|  | [optional] 
 **uniprot_name** | **character**|  | [optional] 
 **uniprot_full_name** | **character**|  | [optional] 
 **dbxrefs** | **character**|  | [optional] 
 **label** | Enum [allele-specific binding, pQTL, predicted allele-specific binding] |  | [optional] 
 **source** | Enum [ADASTRA, GVATdb, IGVF, UKB] |  | [optional] 
 **method** | Enum [ADASTRA, GVATdb, SEMVAR, pQTL] |  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **name** | Enum [binding modulated by, level associated with] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[ProteinsFromVariants]**](ProteinsFromVariants.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromVariantID**
> array[VariantsFromVariantID] VariantsFromVariantID(spdi = var.spdi, hgvs = var.hgvs, rsid = var.rsid, ca_id = var.ca_id, variant_id = var.variant_id, region = var.region, r2 = var.r2, d_prime = var.d_prime, ancestry = var.ancestry, organism = "Homo sapiens", verbose = "false", page = 0, limit = var.limit)



Retrieve genetic variants in linkage disequilibrium (LD).<br>    The following parameters can be used to set thresholds on r2 and d_prime: gt (>), gte (>=), lt (<), lte (<=).<br>     Set verbose = true to retrieve full info on the variants.<br>      At least one of these fields is required: variant_id, spdi, hgvs, rsid, ca_id, or region.<br>     Example: variant_id = NC_000011.10:9083634:A:T,<br>     spdi = NC_000011.10:9083634:A:T, <br>     hgvs = NC_000011.10:g.9083635A>T, <br>     rsid = rs60960132, <br>     ca_id = CA217534780, <br>     region = chr17:7166090-7166095 (maximum length: 10kb), <br>     r2 = gte:0.8, <br>     d_prime = gt:0.9, <br>     ancestry = EUR. <br>     The limit parameter controls the page size and can not exceed 500. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_rsid <- "rsid_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_region <- "region_example" # character |  (Optional)
var_r2 <- "r2_example" # character |  (Optional)
var_d_prime <- "d_prime_example" # character |  (Optional)
var_ancestry <- "ancestry_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_verbose <- "false" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromVariantID(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, r2 = var_r2, d_prime = var_d_prime, ancestry = var_ancestry, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromVariantID(spdi = var_spdi, hgvs = var_hgvs, rsid = var_rsid, ca_id = var_ca_id, variant_id = var_variant_id, region = var_region, r2 = var_r2, d_prime = var_d_prime, ancestry = var_ancestry, organism = var_organism, verbose = var_verbose, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **rsid** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **region** | **character**|  | [optional] 
 **r2** | **character**|  | [optional] 
 **d_prime** | **character**|  | [optional] 
 **ancestry** | Enum [AFR, EAS, EUR, SAS] |  | [optional] 
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **verbose** | Enum [true, false] |  | [optional] [default to &quot;false&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[VariantsFromVariantID]**](VariantsFromVariantID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsFromVariantIDSummary**
> array[VariantsFromVariantIDSummary] VariantsFromVariantIDSummary(spdi = var.spdi, hgvs = var.hgvs, ca_id = var.ca_id, variant_id = var.variant_id, organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve a summary of genetic variants in linkage disequilibrium (LD).<br>     Example: variant_id = NC_000001.11:954257:G:C,<br>     hgvs = NC_000011.10:g.9090011A>G,<br>     spdi = NC_000011.10:9090010:A:G,<br>     ca_id = CA10655063<br>     The limit parameter controls the page size and can not exceed 100. <br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsFromVariantIDSummary(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsFromVariantIDSummary(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **organism** | Enum [Mus musculus, Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[VariantsFromVariantIDSummary]**](VariantsFromVariantIDSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsGenomicElementsGenes**
> array[VariantsGenomicElementsGenes] VariantsGenomicElementsGenes(spdi = var.spdi, hgvs = var.hgvs, ca_id = var.ca_id, variant_id = var.variant_id, files_fileset = var.files_fileset, biosample_term = var.biosample_term, biological_context = var.biological_context, nearby_genes = "true", organism = "Homo sapiens", page = 0, limit = var.limit)



Retrieve genes whose expression is modulated by perturbing genomic elements that overlap a variant.<br>     The query starts from a variant, finds overlapping Perturb-seq genomic elements, then returns element-gene associations.<br>     By default (nearby_genes = true), only nearby genes on the same chromosome as the variant are returned, and the overlapping genomic element must be within 2 Mb of the gene TSS; distance_to_tss is included in the response.<br>     Set nearby_genes = false to return all genes linked to the overlapping elements regardless of chromosome or distance.<br>     At least one variant identifier is required: variant_id, spdi, hgvs, or ca_id.<br>     Example: variant_id = NC_000001.11:109426297:G:C,<br>     spdi = NC_000001.11:109426297:G:C,<br>     nearby_genes = true,<br>     files_fileset = IGVFFI0206LUDV,<br>     biological_context = HCASMC-hTERT,<br>     biosample_term = EFO_0022614.<br>     The limit parameter controls the page size and can not exceed 100.<br>     Pagination is 0-based.

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_spdi <- "spdi_example" # character |  (Optional)
var_hgvs <- "hgvs_example" # character |  (Optional)
var_ca_id <- "ca_id_example" # character |  (Optional)
var_variant_id <- "variant_id_example" # character |  (Optional)
var_files_fileset <- "files_fileset_example" # character |  (Optional)
var_biosample_term <- "biosample_term_example" # character |  (Optional)
var_biological_context <- "biological_context_example" # character |  (Optional)
var_nearby_genes <- "true" # character |  (Optional)
var_organism <- "Homo sapiens" # character |  (Optional)
var_page <- 0 # numeric |  (Optional)
var_limit <- 3.4 # numeric |  (Optional)

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsGenomicElementsGenes(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, files_fileset = var_files_fileset, biosample_term = var_biosample_term, biological_context = var_biological_context, nearby_genes = var_nearby_genes, organism = var_organism, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$VariantsGenomicElementsGenes(spdi = var_spdi, hgvs = var_hgvs, ca_id = var_ca_id, variant_id = var_variant_id, files_fileset = var_files_fileset, biosample_term = var_biosample_term, biological_context = var_biological_context, nearby_genes = var_nearby_genes, organism = var_organism, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **spdi** | **character**|  | [optional] 
 **hgvs** | **character**|  | [optional] 
 **ca_id** | **character**|  | [optional] 
 **variant_id** | **character**|  | [optional] 
 **files_fileset** | **character**|  | [optional] 
 **biosample_term** | **character**|  | [optional] 
 **biological_context** | **character**|  | [optional] 
 **nearby_genes** | Enum [true, false] |  | [optional] [default to &quot;true&quot;]
 **organism** | Enum [Homo sapiens] |  | [optional] [default to &quot;Homo sapiens&quot;]
 **page** | **numeric**|  | [optional] [default to 0]
 **limit** | **numeric**|  | [optional] 

### Return type

[**array[VariantsGenomicElementsGenes]**](VariantsGenomicElementsGenes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

# **VariantsRegionSummary**
> VariantsRegionSummary VariantsRegionSummary(region)



Retrieve a summary count of all methods reporting variants in a given region.<br>     Example: region = chr1:1157520-1158520 (maximum length: 10kb).

### Example
```R
library(igvfcatalogclient)

# prepare function argument(s)
var_region <- "region_example" # character | 

api_instance <- IgvfCatalogApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VariantsRegionSummary(var_regiondata_file = "result.txt")
result <- api_instance$VariantsRegionSummary(var_region)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **character**|  | 

### Return type

[**VariantsRegionSummary**](VariantsRegionSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful response |  -  |
| **0** | Error response |  -  |

