# Machine Learning for Email #

This repository contains all code examples in [*Machine Learning for Email*](http://shop.oreilly.com/product/0636920022350.do), by Drew Conway and John Myles White.

The code in support of this short eBook provides a brief introduction to key concepts in machine learning on text data.  The first two chapters focus on the R programming language and exploring data using it.  The last two explore two specific case studies in machine learning on text data using a corpus of email.  In these chapters we introduce methods for performing classification and ranking of these data with classic machine learning techniques.

All code is written in the R language for statistical computing.

 - For more information see: [http://www.r-project.org/](http://www.r-project.org/)
 
All required data are included in the subdirectories.

## Chapter 1 - Using R ##

In this chapter we introduce the R programming language, with specific emphasis on tasks frequently encountered when doing data analysis and machine learning in R.  This chapter covers:

 - Loading data into R
 - Cleaning text data: dealing with corner cases, date strings and malformed text
 - Generate a simple time-series analysis
 - Visualize the results
 

## Chapter 2 - Data Exploration ##

Here we provide a brief review several statistical concepts that are frequently used in basic data analysis and machine learning.  We introduce many methods for exploring data in R, both statistically and visually.  This chapter covers:

 - Exploration vs. confirmation
 - Inferring types and meanings
 - Numeric summaries
 - Means, medians and modes
 - Quantiles
 - Standard deviation and variance
 - Exploratory data visualization

## Chapter 3 - Classification: Spam Filtering ##

Next, we come to our first case study in machine learning.  In this chapter we introduce the naive Bayesian technique for classifying text data.  To do so, we use the canonical Spam Assassin email data set.  This chapter covers:

 - Loading the text data
 - Cleaning and preparing for feature extraction
 - Text mining the data
 - Writing a naive Bayesian classifier
 - Classification and testing
 - Visualizing the results

## Chapter 4 - Ranking: Priority Inbox ##

Finally, we move from a binary classification task to ranking.  Using the same Spam Assassin data, we construct a more complicated feature set to design our own "home brew" priority inbox ranker.  This chapter covers:

 - Identifying feature set in data
 - Writing functions to extract feature set
 - Introduction to weight-schemes for ranking
 - Training and testing the ranker

<hr />

### Required R packages ###

 - [ggplot2](http://cran.r-project.org/web/packages/ggplot2/index.html)
 - [tm](http://cran.r-project.org/web/packages/tm/)

### Authors ###

 - Drew Conway (drew.conway@nyu.edu)
 - John Myles White (jmw@johnmyleswhite.com)
 
### Licensing ###

All source code is copyright (c) 2011, under the Simplified BSD License.  
For more information on FreeBSD see: http://www.opensource.org/licenses/bsd-license.php

All images and materials produced by this code are licensed under the Creative Commons 
Attribution-Share Alike 3.0 United States License: http://creativecommons.org/licenses/by-sa/3.0/us/

All rights reserved.