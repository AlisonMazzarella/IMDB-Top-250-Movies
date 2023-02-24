# Check and set working directory 
getwd()

#Import and read .csv file and convert to data frame 
tmovies <- read.csv("IMDB Top 250 Movies.csv", header = TRUE, sep = ",")
tmovies

# Determine class of year 
class(tmovies$year)

# Mean movie year
mean(tmovies$year)

# Determine class of rating 
class(tmovies$rating)

# Median movie rating 
median(tmovies$rating)

# Load library for graphing
library(ggplot2)

# Determine classes in data by hand
class(tmovies$rank) # integer
class(tmovies$name) # character
class(tmovies$year) # integer
class(tmovies$rating) # numeric
class(tmovies$genre) #character
class(tmovies$certificate) #character
class(tmovies$run_time) #character
class(tmovies$tagline) #character
class(tmovies$budget) #character
class(tmovies$box_office) #character
class(tmovies$casts) #character
class(tmovies$directors) #character
class(tmovies$writers) #character

# Histogram of top movie release years
histogram <- ggplot(tmovies, aes(year)) + geom_histogram(binwidth = .1) + theme_classic()
histogram

# Bar graph of top movie ratings
bargraph <- ggplot(tmovies, aes(rating)) + geom_bar() + theme_classic()
bargraph

# Box plot for top movie rankings and certification 
ggplot(tmovies, aes(x = certificate, y = rank)) + geom_boxplot() + theme_classic()

# Grouped bar graph for genre and budget
ggplot(tmovies, aes(x = genre, fill = budget)) + geom_bar(position = position_dodge())

# Use ggplot2 to set up a t-test (two sided test)
# First set up hypothesis 

# State null and alternative hypotheses 
  ## null: there is no difference in mean movie ratings between high and low budgets
  ## alternative: there is a difference in mean movie ratings between high and low budgets 

# Establish it is a two-sided test
  ## two - sided. No direction is implied. 

# Establish if this is a two-sample paired t-test
  ## two-sample. The movie ratings included in high budgets are independent of low budget movies

# graph two sample two-sided test with box plot 
ggplot(tmovies, aes(x = rating, y = budget)) + geom_boxplot() + theme_classic()

# Calculate test statistics 
t.test(budget ~ rating, data = tmovies, var.equal = TRUE, paired = FALSE)

# Use data_files to show all files in path in data frame that are .csv
data_files <- list.files("C:/Users/500da/Desktop/Winter Semester 2023/CSE 310/Movies/IMDB-Top-250-Movies", pattern = ".csv")
data_files 

# Create an array 
vector1 <- c(5, 9, 3)
vector2 <- c(10, 11, 12, 13, 14, 15)

result <- array(c(vector1, vector2), dim = c(3, 3, 2))
print(result)

# Use for loop to loop through array 
# First create array variable, elements range from 1 - 10
myarray <- c(1:10)

# Use array function to create a 3x2 dimensional array 
multiarray <- array(myarray, dim = c(3, 2))

# For loop references elements 
for(x in multiarray){
  print(x) #print elements
}

# Lists 

sum(0:9)
append(LETTERS[1:13],letters[14:26])
c(1,6,4,9)*2
something <- c(1,4,letters[2])  # indices start at one, you get (1,4,"b")
length(something)
