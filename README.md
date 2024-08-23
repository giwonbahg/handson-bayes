# Hands-on Bayesian inference workshop: Notes
This is a repository for R markdown notebooks used in the hands-on Bayesian inference workshop (Summer 2024; Category Laboratory, Department of Psychology, Vanderbilt University).

## Goal
This workshop was organized for graduate students who have learned graduate-level introductory statistics and are interested in practicing Bayesian statistics and inference. Participants were assumed to have an understanding of general linear modeling (t-test, ANOVA, linear regression, generalized linear models) and a basic coding skill in popular modern programming languages for numerical computation (e.g., R, Python). The goals of this workshop were

 1. To learn how to use R and Stan to implement a probabilistic model for Bayesian inference
 2. (By achieving 1,) to understand how Bayesian modeling packages built on R/Stan operate.
 3. To understand the good practices of Bayesian modeling: Parameter estimation, model comparison, predictive check, etc.

## Content
 * Week 1 (06/04/2024): Introduction to R/Stan & Comparing the mean between two groups
 * Week 2 (06/18/2024): Comparing the mean between two groups (continued) & Bayesian model comparison
     * Stan + R package `bridgesampling`: Marginal likelihood and Bayes factor
     * Stan + R package `loo`: Posterior predictive assessment measures
         * Widely applicable information criterion (WAIC)
         * Approximate leave-one-out cross-validation (LOOCV): Pareto-smoothing importance sampling (PSIS) LOOCV
 * Week 3 (07/02/2024): (Generalized) linear models & Prior/posterior predictive check
     * A case study: Psychophysical functions (Lee & Wagenmakers, 2013, Chapter 12)
 * Week 4 (07/16/2024): Hierarchical modeling, covariance modeling
     * The LKJ distribution as a prior for correlation matrices
     * The Cholesky decomposition
     * Partial correlation
 * Week 5 (08/13/2024): Power analysis
     * A Bayesian-classical hybrid method (Pek & Park, 2019; Park & Pek, 2023)
     * Bayes factor design analysis (Schönbrodt & Wagenmaker, 2018)
