# igvfcatalogclient

R client for the [IGVF Catalog API](https://api.catalogkg.igvf.org/).

IGVF Catalog OpenAPI compliant REST API built using tRPC with Express.

Our database uses 0-based, half-open coordinates for genomic coordinates in the GRCh38 (human) and GRCm39 (mouse) reference genomes.

Data is licensed under the <a href=https://creativecommons.org/licenses/by/4.0/ target=\"_blank\">Creative Commons license</a> and the software is licensed under the <a href=https://spdx.org/licenses/MIT.html target=\"_blank\">MIT license</a>.

- API version: 1.3.1.dev20261013000000
- Package version: 1.3.0.9000
- Generator version: 7.14.0

This package is generated with [OpenAPI Generator](https://openapi-generator.tech) by
[igvf-catalog-client-openapi-spec](https://github.com/IGVF-DACC/igvf-catalog-client-openapi-spec)
whenever the IGVF Catalog changes. Don't edit generated files by hand; change
`templates/` here or the pipeline in that repo instead.

## Installation

The package is installed from GitHub (it isn't on CRAN). Releases follow IGVF
Catalog releases and are tagged `vX.Y.Z`:

```R
install.packages("remotes")
remotes::install_github("IGVF-DACC/igvf-catalog-r-client@vX.Y.Z")  # a release, see the Releases page
```

Development builds track the catalog's `dev` branch:

```R
remotes::install_github("IGVF-DACC/igvf-catalog-r-client@dev")
```

The default host is the API the package was generated against: releases use
`https://api.catalogkg.igvf.org/api` and dev builds use
`https://catalog-api-dev.demo.igvf.org/api`. Pass `ApiClient$new(base_path = ...)` to use another.

## Quick start

```R
library(igvfcatalogclient)

api <- IgvfCatalogApi$new(ApiClient$new(base_path = "https://api.catalogkg.igvf.org/api"))
genes <- api$Genes(name = "ATF3")
genes[[1]]$name
```

Every endpoint is a method on `IgvfCatalogApi`, listed below. The interactive API documentation is at
[api.catalogkg.igvf.org](https://api.catalogkg.igvf.org/).

### Build and check locally

```sh
R CMD build .
R CMD check igvfcatalogclient_1.3.0.9000.tar.gz --no-manual
R CMD INSTALL --preclean igvfcatalogclient_1.3.0.9000.tar.gz
```

## Documentation for API Endpoints

All URIs are relative to *https://catalog-api-dev.demo.igvf.org/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IgvfCatalogApi* | [**Variants**](docs/IgvfCatalogApi.md#Variants) | **GET** /variants | 
*IgvfCatalogApi* | [**CodingVariants**](docs/IgvfCatalogApi.md#CodingVariants) | **GET** /coding-variants | 
*IgvfCatalogApi* | [**GenomicElements**](docs/IgvfCatalogApi.md#GenomicElements) | **GET** /genomic-elements | 
*IgvfCatalogApi* | [**Genes**](docs/IgvfCatalogApi.md#Genes) | **GET** /genes | 
*IgvfCatalogApi* | [**GenesStructure**](docs/IgvfCatalogApi.md#GenesStructure) | **GET** /genes-structure | 
*IgvfCatalogApi* | [**Transcripts**](docs/IgvfCatalogApi.md#Transcripts) | **GET** /transcripts | 
*IgvfCatalogApi* | [**Proteins**](docs/IgvfCatalogApi.md#Proteins) | **GET** /proteins | 
*IgvfCatalogApi* | [**Complexes**](docs/IgvfCatalogApi.md#Complexes) | **GET** /complexes | 
*IgvfCatalogApi* | [**Pathways**](docs/IgvfCatalogApi.md#Pathways) | **GET** /pathways | 
*IgvfCatalogApi* | [**Motifs**](docs/IgvfCatalogApi.md#Motifs) | **GET** /motifs | 
*IgvfCatalogApi* | [**Drugs**](docs/IgvfCatalogApi.md#Drugs) | **GET** /drugs | 
*IgvfCatalogApi* | [**OntologyTerm**](docs/IgvfCatalogApi.md#OntologyTerm) | **GET** /ontology-terms | 
*IgvfCatalogApi* | [**Studies**](docs/IgvfCatalogApi.md#Studies) | **GET** /studies | 
*IgvfCatalogApi* | [**GenomicElementsFromVariants**](docs/IgvfCatalogApi.md#GenomicElementsFromVariants) | **GET** /variants/genomic-elements | 
*IgvfCatalogApi* | [**GenesFromVariants**](docs/IgvfCatalogApi.md#GenesFromVariants) | **GET** /variants/genes | 
*IgvfCatalogApi* | [**ProteinsFromVariants**](docs/IgvfCatalogApi.md#ProteinsFromVariants) | **GET** /variants/proteins | 
*IgvfCatalogApi* | [**PhenotypesFromVariants**](docs/IgvfCatalogApi.md#PhenotypesFromVariants) | **GET** /variants/phenotypes | 
*IgvfCatalogApi* | [**BiosamplesFromVariants**](docs/IgvfCatalogApi.md#BiosamplesFromVariants) | **GET** /variants/biosamples | 
*IgvfCatalogApi* | [**VariantsFromProteins**](docs/IgvfCatalogApi.md#VariantsFromProteins) | **GET** /proteins/variants | 
*IgvfCatalogApi* | [**ProteinsProteins**](docs/IgvfCatalogApi.md#ProteinsProteins) | **GET** /proteins/proteins | 
*IgvfCatalogApi* | [**VariantsFromPhenotypes**](docs/IgvfCatalogApi.md#VariantsFromPhenotypes) | **GET** /phenotypes/variants | 
*IgvfCatalogApi* | [**CodingVariantsFromPhenotypes**](docs/IgvfCatalogApi.md#CodingVariantsFromPhenotypes) | **GET** /phenotypes/coding-variants | 
*IgvfCatalogApi* | [**GenomicElementsFromPhenotypes**](docs/IgvfCatalogApi.md#GenomicElementsFromPhenotypes) | **GET** /phenotypes/genomic-elements | 
*IgvfCatalogApi* | [**VariantsFromGenomicElements**](docs/IgvfCatalogApi.md#VariantsFromGenomicElements) | **GET** /genomic-elements/variants | 
*IgvfCatalogApi* | [**GenesFromGenomicElements**](docs/IgvfCatalogApi.md#GenesFromGenomicElements) | **GET** /genomic-elements/genes | 
*IgvfCatalogApi* | [**PhenotypesFromGenomicElements**](docs/IgvfCatalogApi.md#PhenotypesFromGenomicElements) | **GET** /genomic-elements/phenotypes | 
*IgvfCatalogApi* | [**BiosamplesFromGenomicElements**](docs/IgvfCatalogApi.md#BiosamplesFromGenomicElements) | **GET** /genomic-elements/biosamples | 
*IgvfCatalogApi* | [**GenomicElementsFromGenomicElements**](docs/IgvfCatalogApi.md#GenomicElementsFromGenomicElements) | **GET** /genomic-elements/genomic-elements | 
*IgvfCatalogApi* | [**VariantsFromGenes**](docs/IgvfCatalogApi.md#VariantsFromGenes) | **GET** /genes/variants | 
*IgvfCatalogApi* | [**GenomicElementsFromGenes**](docs/IgvfCatalogApi.md#GenomicElementsFromGenes) | **GET** /genes/genomic-elements | 
*IgvfCatalogApi* | [**PhenotypesFromCodingVariants**](docs/IgvfCatalogApi.md#PhenotypesFromCodingVariants) | **GET** /coding-variants/phenotypes | 
*IgvfCatalogApi* | [**VariantsFromBiosamples**](docs/IgvfCatalogApi.md#VariantsFromBiosamples) | **GET** /biosamples/variants | 
*IgvfCatalogApi* | [**GenomicElementsFromBiosamples**](docs/IgvfCatalogApi.md#GenomicElementsFromBiosamples) | **GET** /biosamples/genomic-elements | 
*IgvfCatalogApi* | [**VariantByFrequencySource**](docs/IgvfCatalogApi.md#VariantByFrequencySource) | **GET** /variants/freq | 
*IgvfCatalogApi* | [**Grn**](docs/IgvfCatalogApi.md#Grn) | **GET** /gene-regulatory-network | 
*IgvfCatalogApi* | [**EnhancerGenePredictions**](docs/IgvfCatalogApi.md#EnhancerGenePredictions) | **GET** /enhancer-gene-predictions | 
*IgvfCatalogApi* | [**Qtls**](docs/IgvfCatalogApi.md#Qtls) | **GET** /qtls | 
*IgvfCatalogApi* | [**VariantSummary**](docs/IgvfCatalogApi.md#VariantSummary) | **GET** /variants/summary | 
*IgvfCatalogApi* | [**VariantsFromVariantIDSummary**](docs/IgvfCatalogApi.md#VariantsFromVariantIDSummary) | **GET** /variants/variant-ld/summary | 
*IgvfCatalogApi* | [**VariantsRegionSummary**](docs/IgvfCatalogApi.md#VariantsRegionSummary) | **GET** /variants/region-summary | 
*IgvfCatalogApi* | [**QtlSummaryEndpoint**](docs/IgvfCatalogApi.md#QtlSummaryEndpoint) | **GET** /variants/genes/summary | 
*IgvfCatalogApi* | [**GenomicElementsFromVariantsCount**](docs/IgvfCatalogApi.md#GenomicElementsFromVariantsCount) | **GET** /variants/predictions-count | 
*IgvfCatalogApi* | [**PredictionsFromVariants**](docs/IgvfCatalogApi.md#PredictionsFromVariants) | **GET** /variants/predictions | 
*IgvfCatalogApi* | [**DeprecatedCodingVariantsSummary**](docs/IgvfCatalogApi.md#DeprecatedCodingVariantsSummary) | **GET** /variants/phenotypes/score-summary | 
*IgvfCatalogApi* | [**NearestGenes**](docs/IgvfCatalogApi.md#NearestGenes) | **GET** /variants/nearest-genes | 
*IgvfCatalogApi* | [**VariantsAlleles**](docs/IgvfCatalogApi.md#VariantsAlleles) | **GET** /variants/gnomad-alleles | 
*IgvfCatalogApi* | [**VariantsGenomicElementsGenes**](docs/IgvfCatalogApi.md#VariantsGenomicElementsGenes) | **GET** /variants/genomic-elements/genes | 
*IgvfCatalogApi* | [**GenomicElementsPredictionsFromVariant**](docs/IgvfCatalogApi.md#GenomicElementsPredictionsFromVariant) | **GET** /variants/genomic-elements/cell-gene-predictions | 
*IgvfCatalogApi* | [**GenesProteinsFromVariants**](docs/IgvfCatalogApi.md#GenesProteinsFromVariants) | **GET** /variants/genes-proteins | 
*IgvfCatalogApi* | [**CodingVariantsFromGenes**](docs/IgvfCatalogApi.md#CodingVariantsFromGenes) | **GET** /genes/coding-variants/scores | 
*IgvfCatalogApi* | [**AllCodingVariantsFromGenes**](docs/IgvfCatalogApi.md#AllCodingVariantsFromGenes) | **GET** /genes/coding-variants/all-scores | 
*IgvfCatalogApi* | [**VariantsFromGeneProteins**](docs/IgvfCatalogApi.md#VariantsFromGeneProteins) | **GET** /genes-proteins/variants | 
*IgvfCatalogApi* | [**GenesProteinsGenesProteins**](docs/IgvfCatalogApi.md#GenesProteinsGenesProteins) | **GET** /genes-proteins/genes-proteins | 
*IgvfCatalogApi* | [**CodingVariantsSummary**](docs/IgvfCatalogApi.md#CodingVariantsSummary) | **GET** /coding-variants/phenotypes/score-summary | 
*IgvfCatalogApi* | [**CodingVariantsCountFromGene**](docs/IgvfCatalogApi.md#CodingVariantsCountFromGene) | **GET** /coding-variants/phenotypes-count | 
*IgvfCatalogApi* | [**OntologyTermParents**](docs/IgvfCatalogApi.md#OntologyTermParents) | **GET** /ontology-terms/{ontology_term_id}/parents | 
*IgvfCatalogApi* | [**OntologyTermChildren**](docs/IgvfCatalogApi.md#OntologyTermChildren) | **GET** /ontology-terms/{ontology_term_id}/children | 
*IgvfCatalogApi* | [**OntologyTermTransitiveClosure**](docs/IgvfCatalogApi.md#OntologyTermTransitiveClosure) | **GET** /ontology-terms/{ontology_term_id_start}/transitive-closure/{ontology_term_id_end} | 
*IgvfCatalogApi* | [**VariantsFromVariantID**](docs/IgvfCatalogApi.md#VariantsFromVariantID) | **GET** /variants/variant-ld | 
*IgvfCatalogApi* | [**CodingVariantsFromVariants**](docs/IgvfCatalogApi.md#CodingVariantsFromVariants) | **GET** /variants/coding-variants | 
*IgvfCatalogApi* | [**DrugsFromVariants**](docs/IgvfCatalogApi.md#DrugsFromVariants) | **GET** /variants/drugs | 
*IgvfCatalogApi* | [**DiseaseFromVariants**](docs/IgvfCatalogApi.md#DiseaseFromVariants) | **GET** /variants/diseases | 
*IgvfCatalogApi* | [**VariantsFromCodingVariants**](docs/IgvfCatalogApi.md#VariantsFromCodingVariants) | **GET** /coding-variants/variants | 
*IgvfCatalogApi* | [**TranscriptsFromGenes**](docs/IgvfCatalogApi.md#TranscriptsFromGenes) | **GET** /genes/transcripts | 
*IgvfCatalogApi* | [**GenesTranscriptsGenes**](docs/IgvfCatalogApi.md#GenesTranscriptsGenes) | **GET** /genes/transcripts/genes | 
*IgvfCatalogApi* | [**ProteinsFromGenes**](docs/IgvfCatalogApi.md#ProteinsFromGenes) | **GET** /genes/proteins | 
*IgvfCatalogApi* | [**PathwaysFromGenes**](docs/IgvfCatalogApi.md#PathwaysFromGenes) | **GET** /genes/pathways | 
*IgvfCatalogApi* | [**GenesGenes**](docs/IgvfCatalogApi.md#GenesGenes) | **GET** /genes/genes | 
*IgvfCatalogApi* | [**DiseasesFromGenes**](docs/IgvfCatalogApi.md#DiseasesFromGenes) | **GET** /genes/diseases | 
*IgvfCatalogApi* | [**GenesFromTranscripts**](docs/IgvfCatalogApi.md#GenesFromTranscripts) | **GET** /transcripts/genes | 
*IgvfCatalogApi* | [**ProteinsFromTranscripts**](docs/IgvfCatalogApi.md#ProteinsFromTranscripts) | **GET** /transcripts/proteins | 
*IgvfCatalogApi* | [**TranscriptsFromProteins**](docs/IgvfCatalogApi.md#TranscriptsFromProteins) | **GET** /proteins/transcripts | 
*IgvfCatalogApi* | [**GenesFromProteins**](docs/IgvfCatalogApi.md#GenesFromProteins) | **GET** /proteins/genes | 
*IgvfCatalogApi* | [**ComplexesFromProteins**](docs/IgvfCatalogApi.md#ComplexesFromProteins) | **GET** /proteins/complexes | 
*IgvfCatalogApi* | [**ProteinsFromComplexes**](docs/IgvfCatalogApi.md#ProteinsFromComplexes) | **GET** /complexes/proteins | 
*IgvfCatalogApi* | [**MotifsFromProteins**](docs/IgvfCatalogApi.md#MotifsFromProteins) | **GET** /proteins/motifs | 
*IgvfCatalogApi* | [**ProteinsFromMotifs**](docs/IgvfCatalogApi.md#ProteinsFromMotifs) | **GET** /motifs/proteins | 
*IgvfCatalogApi* | [**GenesFromPathways**](docs/IgvfCatalogApi.md#GenesFromPathways) | **GET** /pathways/genes | 
*IgvfCatalogApi* | [**PathwaysFromPathways**](docs/IgvfCatalogApi.md#PathwaysFromPathways) | **GET** /pathways/pathways | 
*IgvfCatalogApi* | [**AnnotationsFromGoTerms**](docs/IgvfCatalogApi.md#AnnotationsFromGoTerms) | **GET** /go-terms/gene-products | 
*IgvfCatalogApi* | [**GoTermsFromAnnotations**](docs/IgvfCatalogApi.md#GoTermsFromAnnotations) | **GET** /gene-products/go-terms | 
*IgvfCatalogApi* | [**VariantsFromDiseases**](docs/IgvfCatalogApi.md#VariantsFromDiseases) | **GET** /diseases/variants | 
*IgvfCatalogApi* | [**GenesFromDiseases**](docs/IgvfCatalogApi.md#GenesFromDiseases) | **GET** /diseases/genes | 
*IgvfCatalogApi* | [**VariantsFromDrugs**](docs/IgvfCatalogApi.md#VariantsFromDrugs) | **GET** /drugs/variants | 
*IgvfCatalogApi* | [**FilesFilesets**](docs/IgvfCatalogApi.md#FilesFilesets) | **GET** /files-filesets | 
*IgvfCatalogApi* | [**LlmQuery**](docs/IgvfCatalogApi.md#LlmQuery) | **POST** /llm-query | 

## Documentation for Models

 - [AccessibleGenomicElement](docs/AccessibleGenomicElement.md)
 - [AccessibleGenomicElementPromoterOf](docs/AccessibleGenomicElementPromoterOf.md)
 - [Annotations](docs/Annotations.md)
 - [AnnotationsFromGoTerms](docs/AnnotationsFromGoTerms.md)
 - [Biosamples](docs/Biosamples.md)
 - [BiosamplesFromGenomicElements](docs/BiosamplesFromGenomicElements.md)
 - [BiosamplesFromGenomicElementsBiosample](docs/BiosamplesFromGenomicElementsBiosample.md)
 - [BiosamplesFromGenomicElementsGenomicElement](docs/BiosamplesFromGenomicElementsGenomicElement.md)
 - [BiosamplesFromVariants](docs/BiosamplesFromVariants.md)
 - [BiosamplesFromVariantsGenomicElement](docs/BiosamplesFromVariantsGenomicElement.md)
 - [BiosamplesFromVariantsVariant](docs/BiosamplesFromVariantsVariant.md)
 - [CaddScores](docs/CaddScores.md)
 - [CellTypes](docs/CellTypes.md)
 - [CellTypes2](docs/CellTypes2.md)
 - [CodingVariant](docs/CodingVariant.md)
 - [CodingVariants](docs/CodingVariants.md)
 - [CodingVariantsFromGenes](docs/CodingVariantsFromGenes.md)
 - [CodingVariantsFromPhenotypes](docs/CodingVariantsFromPhenotypes.md)
 - [CodingVariantsSummary](docs/CodingVariantsSummary.md)
 - [Complex](docs/Complex.md)
 - [ComplexComplexAssembly](docs/ComplexComplexAssembly.md)
 - [ComplexesFromProteins](docs/ComplexesFromProteins.md)
 - [ComplexesFromProteinsComplex](docs/ComplexesFromProteinsComplex.md)
 - [ComplexesFromProteinsProtein](docs/ComplexesFromProteinsProtein.md)
 - [DiseaseFromVariants](docs/DiseaseFromVariants.md)
 - [DiseaseFromVariantsSequenceVariant](docs/DiseaseFromVariantsSequenceVariant.md)
 - [DiseasesFromGenes](docs/DiseasesFromGenes.md)
 - [DiseasesFromGenesGene](docs/DiseasesFromGenesGene.md)
 - [Drug](docs/Drug.md)
 - [DrugsFromVariants](docs/DrugsFromVariants.md)
 - [DrugsFromVariantsDrug](docs/DrugsFromVariantsDrug.md)
 - [Elements](docs/Elements.md)
 - [EnhancerGenePredictions](docs/EnhancerGenePredictions.md)
 - [EnhancerGenePredictionsElements](docs/EnhancerGenePredictionsElements.md)
 - [FilesFilesets](docs/FilesFilesets.md)
 - [Gene](docs/Gene.md)
 - [Gene4](docs/Gene4.md)
 - [Gene6](docs/Gene6.md)
 - [GeneCompact](docs/GeneCompact.md)
 - [GeneNoSynonyms](docs/GeneNoSynonyms.md)
 - [GeneRef](docs/GeneRef.md)
 - [Genes](docs/Genes.md)
 - [Genes2](docs/Genes2.md)
 - [GenesFromGenomicElements](docs/GenesFromGenomicElements.md)
 - [GenesFromGenomicElementsGene](docs/GenesFromGenomicElementsGene.md)
 - [GenesFromGenomicElementsGenomicElement](docs/GenesFromGenomicElementsGenomicElement.md)
 - [GenesFromGenomicElementsPValue](docs/GenesFromGenomicElementsPValue.md)
 - [GenesFromPathways](docs/GenesFromPathways.md)
 - [GenesFromPathwaysPathway](docs/GenesFromPathwaysPathway.md)
 - [GenesFromProteins](docs/GenesFromProteins.md)
 - [GenesFromTranscripts](docs/GenesFromTranscripts.md)
 - [GenesFromTranscriptsTranscript](docs/GenesFromTranscriptsTranscript.md)
 - [GenesFromVariants](docs/GenesFromVariants.md)
 - [GenesFromVariantsSequenceVariant](docs/GenesFromVariantsSequenceVariant.md)
 - [GenesFromVariantsStudy](docs/GenesFromVariantsStudy.md)
 - [GenesGenes](docs/GenesGenes.md)
 - [GenesGenesGene1](docs/GenesGenesGene1.md)
 - [GenesProteinsFromVariants](docs/GenesProteinsFromVariants.md)
 - [GenesProteinsGenesProteins](docs/GenesProteinsGenesProteins.md)
 - [GenesStructure](docs/GenesStructure.md)
 - [GenesTranscriptsGenes](docs/GenesTranscriptsGenes.md)
 - [GenesTranscriptsGenesTranscript](docs/GenesTranscriptsGenesTranscript.md)
 - [GenomicElement](docs/GenomicElement.md)
 - [GenomicElement2](docs/GenomicElement2.md)
 - [GenomicElement4](docs/GenomicElement4.md)
 - [GenomicElement5](docs/GenomicElement5.md)
 - [GenomicElement7](docs/GenomicElement7.md)
 - [GenomicElement9](docs/GenomicElement9.md)
 - [GenomicElementFull](docs/GenomicElementFull.md)
 - [GenomicElementsFromGenomicElements](docs/GenomicElementsFromGenomicElements.md)
 - [GenomicElementsFromGenomicElementsPerturbedGenomicElement](docs/GenomicElementsFromGenomicElementsPerturbedGenomicElement.md)
 - [GenomicElementsFromPhenotypes](docs/GenomicElementsFromPhenotypes.md)
 - [GenomicElementsFromPhenotypesPhenotype](docs/GenomicElementsFromPhenotypesPhenotype.md)
 - [GenomicElementsFromVariants](docs/GenomicElementsFromVariants.md)
 - [GenomicElementsPredictionsFromVariant](docs/GenomicElementsPredictionsFromVariant.md)
 - [Grn](docs/Grn.md)
 - [IdName](docs/IdName.md)
 - [InlineObject](docs/InlineObject.md)
 - [InlineObjectIssuesInner](docs/InlineObjectIssuesInner.md)
 - [LinkedFeature](docs/LinkedFeature.md)
 - [LlmQuery](docs/LlmQuery.md)
 - [LlmQueryRequest](docs/LlmQueryRequest.md)
 - [MethodCount](docs/MethodCount.md)
 - [MethodsAndContexts](docs/MethodsAndContexts.md)
 - [Motif](docs/Motif.md)
 - [MotifsFromProteins](docs/MotifsFromProteins.md)
 - [MotifsFromProteinsMotif](docs/MotifsFromProteinsMotif.md)
 - [NearestGene](docs/NearestGene.md)
 - [NearestGenes](docs/NearestGenes.md)
 - [OntologyTerm](docs/OntologyTerm.md)
 - [OntologyTermBasic](docs/OntologyTermBasic.md)
 - [OntologyTermChildren](docs/OntologyTermChildren.md)
 - [OntologyTermTransitiveClosure](docs/OntologyTermTransitiveClosure.md)
 - [Paths](docs/Paths.md)
 - [Pathway](docs/Pathway.md)
 - [PathwaysFromPathways](docs/PathwaysFromPathways.md)
 - [Phenotype](docs/Phenotype.md)
 - [PhenotypeRef](docs/PhenotypeRef.md)
 - [PhenotypesFromVariants](docs/PhenotypesFromVariants.md)
 - [PhenotypesFromVariants37](docs/PhenotypesFromVariants37.md)
 - [PhenotypesFromVariantsStudy](docs/PhenotypesFromVariantsStudy.md)
 - [PhenotypesFromVariantsVariant](docs/PhenotypesFromVariantsVariant.md)
 - [Predictions](docs/Predictions.md)
 - [Predictions2](docs/Predictions2.md)
 - [PredictionsFromVariants](docs/PredictionsFromVariants.md)
 - [Protein](docs/Protein.md)
 - [ProteinBasic](docs/ProteinBasic.md)
 - [ProteinChange](docs/ProteinChange.md)
 - [ProteinCompact](docs/ProteinCompact.md)
 - [ProteinComplexOption](docs/ProteinComplexOption.md)
 - [ProteinsFromTranscripts](docs/ProteinsFromTranscripts.md)
 - [ProteinsFromTranscriptsProtein](docs/ProteinsFromTranscriptsProtein.md)
 - [ProteinsFromVariants](docs/ProteinsFromVariants.md)
 - [ProteinsFromVariantsBiosampleTerm](docs/ProteinsFromVariantsBiosampleTerm.md)
 - [ProteinsFromVariantsProteinComplex](docs/ProteinsFromVariantsProteinComplex.md)
 - [ProteinsProteins](docs/ProteinsProteins.md)
 - [ProteinsProteinsProtein1](docs/ProteinsProteinsProtein1.md)
 - [QtlSummaryEndpoint](docs/QtlSummaryEndpoint.md)
 - [Qtls](docs/Qtls.md)
 - [Qtls3](docs/Qtls3.md)
 - [Related](docs/Related.md)
 - [RelatedGene](docs/RelatedGene.md)
 - [RelatedItem](docs/RelatedItem.md)
 - [RelatedSources](docs/RelatedSources.md)
 - [Scores](docs/Scores.md)
 - [SequenceVariant](docs/SequenceVariant.md)
 - [SequenceVariant9](docs/SequenceVariant9.md)
 - [Sources](docs/Sources.md)
 - [Sources4](docs/Sources4.md)
 - [Study](docs/Study.md)
 - [Study2](docs/Study2.md)
 - [StudyParameters](docs/StudyParameters.md)
 - [Summary](docs/Summary.md)
 - [TargetGene](docs/TargetGene.md)
 - [TfBinding](docs/TfBinding.md)
 - [Transcript](docs/Transcript.md)
 - [Variant](docs/Variant.md)
 - [VariantAnnotations](docs/VariantAnnotations.md)
 - [VariantBasic](docs/VariantBasic.md)
 - [VariantMinimal](docs/VariantMinimal.md)
 - [VariantRef](docs/VariantRef.md)
 - [VariantSummary](docs/VariantSummary.md)
 - [Variants](docs/Variants.md)
 - [VariantsAllelesValue](docs/VariantsAllelesValue.md)
 - [VariantsFromDrugs](docs/VariantsFromDrugs.md)
 - [VariantsFromPhenotypesItem](docs/VariantsFromPhenotypesItem.md)
 - [VariantsFromVariantID](docs/VariantsFromVariantID.md)
 - [VariantsFromVariantIDSequenceVariant](docs/VariantsFromVariantIDSequenceVariant.md)
 - [VariantsFromVariantIDSummary](docs/VariantsFromVariantIDSummary.md)
 - [VariantsGenomicElementsGenes](docs/VariantsGenomicElementsGenes.md)
 - [VariantsRegionSummary](docs/VariantsRegionSummary.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### Authorization

- **Type**: Bearer authentication


## Author

encode-help@lists.stanford.edu
