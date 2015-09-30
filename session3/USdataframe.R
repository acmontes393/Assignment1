# source code file to prepare "UScombined" dataframe

# main built-in dataset
data("USArrests") 

# character vector of abbrebiationa
ABB <- c(state.abb) 

# demographics (population, income, ect.)
STATESFACT <- data.frame(state.x77)  

# new dataframe w/ demographics 
UScombined <- cbind(ABB, USArrests, STATESFACT) 

