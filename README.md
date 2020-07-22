# BIRSBIO2020 seqFISH+scRNASeq integration 

This repo houses the analysis for the Abstract Submission to \#BIRSBioIntegration [Mathematical Frameworks for Integrative Analysis of Emerging Biological Data Types](https://www.birs.ca/events/2020/5-day-workshops/20w5197)

## Abstract

### Your Name

> Amrit Singh

### Slack name on \#BIRSBioIntegration

> Amrit Singh

### Your Position

> trainee (post-doc)

### Name of supervisor

> Kim-Anh Le Cao/Bruce McManus

### Affiliation

> PROOF Centre of Excellence and The University of British Columbia

### Email

> <asingh@hli.ubc.ca>

### Co-authors

> none

### Which dataset(s) did you select for analysis?

> Spatial transcriptomics: seqFISH + scRNA-seq

### Why did you select this dataset(s) for analysis

> recommended by supervisor

### What integrative data analysis question have you addressed with the selected data and why?

> Can scRNA-seq data be overlaid onto seqFISH for resolution
> enhancement?

What are the advantages and performance of your approach? \> The
published approach trained a multiclass SVM on the scRNAseq data and
applied it to the seqFISH data to estimate the cell-types labels. My
approach uses a penalized regression method (glmnet) with a
semi-supervised appraoch in order to build a model using both the
scRNAseq+seqFISH data. This strategy uses a recursive approach that
invovles multiple rounds of training glmnet models using labeled data
(label and imputed) and predicting the cell-type labels of unlabeled
data. At each iteration, cell-type labels with high confidence
(probability \> 0.5) are retained for the next iteration, where a new
glmnet model is trained with the scRNAseq data and seqFISH data with
imputed cell-type labels with high confidence. This process is repeated
until all cell-types in the seqFISH data have been labeled or until 50
iterations have been reached (in order to reduce compute times). The
advantage of this approach is that more data in used for model training
such that the resulting model may generalize better to new data. The
performance of this appraoch was estimated using cross-validation, using
only the scRNAseq data as the test set.

### What were the specific challenges you have encountered so far?

> Compute times are significantly longer for the semi-supervised
> approach for model training. Thus, cross-validation takes even longer.
> The datasets are restricted to 113 genes and therefore the discovery
> space is very limited for the semi-supervised approach to learn
> classification rules that are superior to the supervised approach.

### How are you going to address those challenges?

> Cross-validation was parallelized such that each iteration of
> cross-validation was run on an independent cpu thread. If additional
> data is available for this study it may be better than the current
> results given that the genes are limited to those identified using the
> scRNAseq data only.

### Link to your preliminary code and results on a Github account (optional)

> <https://github.com/singha53/ssenet>

### Additional information you would like the organizers to know

> This is my first time looking at single cell data and this opportunity
> would expose me to knew methods, technologies and research in this
> field.

## References

1)  <https://github.com/mabelc/SSC>

# [Data files](https://github.com/BIRSBiointegration/Hackathon/tree/master/seqFISH)
