Getting and Cleaning Data
Grouping and Chaining with dplyr

library(dplyr)
cran <- tbl_df(mydf)
rm("mydf")
cran
?group_by
by_package <- group_by(cran, package)
by_package
summarize(by_package, mean(size))
script_results_identical('pack_sum'); multi_expr_creates_var('pack_sum')
pack_sum
quantile(pack_sum$count, probs = 0.99)
top_counts <- filter(pack_sum, count > 679)
top_counts
View(top_counts)
top_counts_sorted <- arrange(top_counts, desc(count))
View(top_counts_sorted)
quantile(pack_sum$unique, probs = 0.99)
top_unique <- filter(pack_sum, unique > 465)
View(top_unique)
top_unique_sorted <- arrange(top_unique, desc(unique))
View(top_unique_sorted)
script_results_identical('result1'); multi_expr_creates_var('result1')
script_results_identical('result2'); multi_expr_creates_var('result2')
script_results_identical('result3'); multi_expr_creates_var('result3')
Script: summarize4.R
View(result3)
script_vals_identical()
script_vals_identical()
script_vals_identical()
script_vals_identical()
