###############################################################################
# 
# Makefile to study a series similar to S&P 500. It may be less or more volatile  
#  then the actual S&P 500 series.
# 
# License: GPL (General Public License)
# Authors: Hari Narayan Sanadhya
#          
# Date:    2017/04/05
# 
# Description:
# ------------
# The purpose of this makefile is to provide the analysis of a series similar to S&P 500.
#  It includes:-
# 1.	Download the series data.
# 2.	Calculate log returns.
# 3.	Calculate volatility measure.
# 4.	Calculate volatility over entire length of series for various three different decay factors.
#      i.e. calculate volatility measure with a continous lookback window.
# 5.	Plot the results, overlaying the volatility curves on the data.
# 
# 
# Usage:
# ------
# 1. Copy the Makefile to your program directory.
# 2. Type make to start building your program.
# 
# Make Target:
# ------------
# The Makefile provides the following targets to make:
#   $ make SP500          Call the Rmd program that has the code to perform all the analysis (Rmd calls SP500.r)
#   $ make all            Perform all the above make targets with a single command execution

all: SP500

# Call the r script that will generate tidy EDU data file - data/cleaned_EDU_Data.txt
SP500: SP500.Rmd
	Rscript -e 'rmarkdown::render("$<")'
