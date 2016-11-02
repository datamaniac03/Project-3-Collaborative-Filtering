# Introduction
So, this is an academic project about the prediction of demand for grocery store's items by recommending the items to the retailer that may be bought in the upcoming transactions by the customers.

# Details of Input
This data set is taken from freely available package of "Arules" (R.Michael Hahsler, Kurt Hornik, and Thomas Reutterer (2006) Implications of probabilistic data modeling for mining association rules). it tells about the items which are bought by a customer in each transaction.  a sample dataset (after converting into a 0-1 binary matrix ) is attached in the repo.

# Process Flow
1. The dataset is converted into 0-1 binary matrix. highly sparse rows and columns are removed.
2. The correlation among users and items is calculated and used to predict the demand for some testing items.
3. We have used Recommenderlab package of R, found the correlation between the features using "Jaccard Similarity Coefficient" and supervising 20 nearest neighbors of each data point, to get the recommended items.
4. The output of Recommended Items is for the retailer (NOT CUSTOMER). the idea is that, the retailer will take a note of these recommended items and will fill his inventory accordingly, so that he can avoid the cases of lost sales or excess inventory.

This technique can help the retailers to manage their inventory beforehand, and he can save his business from financial loss.

