
# ==========================================
# INTRODUCTION TO R FOR DATA ANALYSIS
# ==========================================

# 1. BASIC CALCULATIONS
2 + 3
10 - 4
5 * 2
10 / 2

# 2. VARIABLES
age <- 25
name <- "Alice"
is_student <- TRUE

# 3. VECTORS
scores <- c(70, 80, 90, 100)

mean(scores)
max(scores)
scores[1]

# 4. DATA FRAMES
students <- data.frame(
  name = c("Alice", "Bob", "Carol"),
  age = c(20, 25, 30),
  score = c(80, 65, 90)
)

head(students)
summary(students)

# Select a column
students$name

# Select rows
students[students$score >= 70, ]


# 5. INSTALL AND LOAD PACKAGES

# Install once:
install.packages("tidyverse")

# Load in each new R session:
library(tidyverse)

# Other useful packages:
# install.packages("readxl")  # Excel files
# install.packages("janitor") # Data cleaning


# 6. IMPORT DATA

# Import a CSV file:
# data <- read_csv("data.csv")

# Check the data:
# head(data)
# str(data)
# summary(data)


# 7. DATA MANIPULATION WITH DPLYR

# Select columns
select(students, name, score)

# Filter rows
filter(students, score >= 70)

# Sort data
arrange(students, desc(score))

# Create a new column
mutate(students, passed = score >= 70)

# Calculate a summary
summarise(students, average_score = mean(score))


# 8. GROUP AND SUMMARIZE

students %>%
  group_by(age) %>%
  summarise(average_score = mean(score))


# 9. MISSING VALUES

values <- c(10, 20, NA, 40)

mean(values, na.rm = TRUE)


# 10. SIMPLE VISUALIZATION

ggplot(students, aes(x = name, y = score)) +
  geom_col()

ggplot(students, aes(x = age, y = score)) +
  geom_point()


# 11. EXPORT DATA

# Save results to a CSV file:
# write_csv(students, "results.csv")


# ==========================================
# END OF SCRIPT
# ==========================================
