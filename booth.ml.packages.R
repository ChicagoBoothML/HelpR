
packageNames = c("MASS", 
                 "ISLR",
                 "animation",
                 "ElemStatLearn",
                 "glmnet",
                 "textir",
                 "nnet",
                 "methods",
                 "statmod",
                 "stats",
                 "graphics",
                 "RCurl",
                 "jsonlite",
                 "tools",
                 "utils",
                 "data.table",
                 "gbm",
                 "ggplot2",
                 "randomForest",
                 "tree",
                 "class",
                 "kknn",
                 "e1071"
                 )


for (pkgName in packageNames) {
  if (! (pkgName %in% rownames(installed.packages()))) { 
    install.packages(pkgName,
                     dependencies=TRUE,
                     repos='http://cran.rstudio.com') 
  }  
}


if (! ("h20" %in% rownames(installed.packages()))) { 
  # Now we download, install and initialize the H2O package for R.
  if (packageVersion("h2o") < "3.5.0.3232") {
    install.packages("h2o", 
                     type="source", 
                     repos=(c("http://h2o-release.s3.amazonaws.com/h2o/master/3232/R"))
                     )
  }
}

