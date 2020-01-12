Task 1: What are the types of data and the levels of measurement of the following variables: Cust ID, Mortgage, Year of sale.
Task 2: Create a histogram which represents the Price variable. Use the default binwidth values first and then set bins of length $100,000. Use the data on all apartments, no matter if sold or not.
Task 3: Interpret the results.
Task 4: Create a scatter plot showing the relationship between Price and Area. Use the data on all apartments, no matter if sold or not. Interpret the results.
Task 5: Calculate the mean, median, mode, skewness, and standard deviation of Price for all apartments, no matter if sold or not.
Task 6: Interpret the measures.
Task 7: Calculate the correlation between Price and Area. Is the result in line with the scatterplot?

setwd('/Users/asger/desktop/R')
product <- read.csv('practical-product.csv')
customer <- read.csv('practical-customer.csv')

priceH <- ggplot(product, aes(x=Price))
priceH + geom_histogram(binwidth = 100000) +
  scale_x_continuous(labels = comma) # this gets rid of the scientific notation on the x axis
summary(product$Area..ft..)

task 4
scatPA <- ggplot(product, aes(Price, Area..ft..))
scatPA + geom_point()

task5
describe(product$Price)
x <- table(product$Price)
x
names(x)[which(x==max(x))]

task7
cor(product$Price, product$Area..ft..)
