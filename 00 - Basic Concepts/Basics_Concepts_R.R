# ==========================================
# INTRODUCTION TO R FOR DATA ANALYSIS
# ==========================================

# 1. BASIC CALCULATIONS

2 + 3
10 - 4
5 * 2
10 / 2
2^3       
10 %% 3
10 %/% 3


# 2. VARIABLES

age <- 25
name <- "Alice"
is_student <- TRUE

print(age)
print(name)
print(is_student)


# 3. VECTORS: c(), length() AND VECTOR OPERATIONS

# Create a vector using c()
scores <- c(70, 80, 90, 100)

# Print the vector
print(scores)

# Number of elements in a vector
length(scores)

# Access elements by position
scores[1]
scores[2]

# Concatenate vectors
scores2 <- c(60, 75, 85)
all_scores <- c(scores, scores2)

print(all_scores)
length(all_scores)

# Basic statistics
mean(scores)
max(scores)
min(scores)
sum(scores)

# Operations with vectors
numbers <- c(1, 2, 3, 4, 5)

numbers + 10
numbers * 2
numbers^2
numbers / 2

# Operations between vectors of the same length
x <- c(1, 2, 3)
y <- c(10, 20, 30)

x + y
x * y

# Logical operations with vectors
scores >= 80
scores[scores >= 80]


# 4. SEQUENCES: seq()

# Generate a sequence of integers
seq(1, 10)

# Generate a sequence with a step of 2
seq(0, 20, by = 2)

# Generate a sequence with a specific number of elements
seq(0, 100, length.out = 6)

# Example: generate values for a graph
x <- seq(0, 10, by = 1)
print(x)


# 5. RANDOM NUMBERS: runif(), rnorm() AND sample()

# Uniform random numbers between 0 and 1
set.seed(123)
runif(5)

# Uniform random numbers between 10 and 20
runif(5, min = 10, max = 20)

# Normally distributed random numbers
rnorm(5)

# Normal distribution with mean 100 and standard deviation 15
rnorm(10, mean = 100, sd = 15)

# Random sample from a set of values
sample(1:10, size = 5)

# Random sample without replacement
sample(1:10, size = 5, replace = FALSE)

# Random sample with replacement
sample(1:5, size = 10, replace = TRUE)

# Randomly shuffle the elements of a vector
sample(scores)

# Reproducible random results
set.seed(123)
sample(1:100, size = 5)


# 6. SORTING VECTORS: sort()

values <- c(45, 12, 89, 23, 67)

# Sort in ascending order
sort(values)

# Sort in descending order
sort(values, decreasing = TRUE)

# Sort student scores
sort(scores)

# Note: sort() returns a sorted vector.
# It does not automatically change the original vector.


# 7. PRINTING RESULTS: print()

age <- 25
name <- "Alice"

print(age)
print(name)

# Print a message
print("Welcome to R!")

# Print a calculation
print(10 + 20)

# Print a vector
print(c(10, 20, 30))


# 8. DATA FRAMES

students <- data.frame(
  name = c("Alice", "Bob", "Carol"),
  age = c(20, 25, 30),
  score = c(80, 65, 90)
)

# View the first rows
head(students)

# Summarize the data
summary(students)

# Structure of the data frame
str(students)

# Select a column
students$name

# Select rows where the score is at least 70
students[students$score >= 70, ]


# 9. INSTALL AND LOAD PACKAGES

# Install once:
# install.packages("tidyverse")

# Load in each new R session:
library(tidyverse)

# Other useful packages:
# install.packages("readxl")   # Excel files
# install.packages("janitor")  # Data cleaning


# 10. IMPORT DATA

# Import a CSV file:
# data <- read_csv("data.csv")

# Check the data:
# head(data)
# str(data)
# summary(data)


# 11. DATA MANIPULATION WITH DPLYR

# Select columns
select(students, name, score)

# Filter rows
filter(students, score >= 70)

# Sort data by score
arrange(students, desc(score))

# Create a new column
mutate(students, passed = score >= 70)

# Calculate an overall average
summarise(students, average_score = mean(score))


# 12. GROUP AND SUMMARIZE

students %>%
  group_by(age) %>%
  summarise(average_score = mean(score))

# Example: calculate average score by age group
# (Each age occurs only once in this example.)


# 13. MISSING VALUES

values <- c(10, 20, NA, 40)

# Calculate the mean while ignoring missing values
mean(values, na.rm = TRUE)

# Count missing values
sum(is.na(values))


# 14. VISUALIZATION WITH plot()

# Create a simple line plot
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)

plot(x, y)

# Add a title and axis labels
plot(
  x, y,
  main = "Relationship between X and Y",
  xlab = "X values",
  ylab = "Y values"
)

# Create a scatter plot
plot(
  students$age,
  students$score,
  main = "Age and Student Scores",
  xlab = "Age",
  ylab = "Score"
)

# Create a histogram
hist(
  students$score,
  main = "Distribution of Scores",
  xlab = "Score"
)

# Create a bar plot
barplot(
  students$score,
  names.arg = students$name,
  main = "Student Scores",
  xlab = "Students",
  ylab = "Score"
)


# 15. VISUALIZATION WITH GGPLOT2

ggplot(students, aes(x = name, y = score)) +
  geom_col()

ggplot(students, aes(x = age, y = score)) +
  geom_point()


# 16. CREATING FUNCTIONS

# Define a simple function
greet <- function() {
  print("Welcome to R!")
}

# Call the function
greet()


# Function with an argument
square <- function(x) {
  return(x^2)
}

square(5)
square(10)

# Function with two arguments
add_numbers <- function(a, b) {
  result <- a + b
  return(result)
}

add_numbers(3, 7)
add_numbers(10, 20)

# Function to calculate the average of a vector
calculate_average <- function(values) {
  return(mean(values, na.rm = TRUE))
}

calculate_average(c(10, 20, 30))
calculate_average(c(70, 80, 90, NA))

# Function to classify student performance
classify_score <- function(score) {
  if (score >= 70) {
    return("Passed")
  } else {
    return("Failed")
  }
}

classify_score(85)
classify_score(55)

# Function applied to a vector
scores <- c(55, 70, 85, 92)

sapply(scores, classify_score)


# 17. EXPORT DATA

# Save results to a CSV file:
# write_csv(students, "results.csv")


# ==========================================
# END OF SCRIPT
# ==========================================
