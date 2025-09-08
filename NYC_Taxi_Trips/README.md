Context
The following project is based on taxi trip data from New York City, provided by our Big Data & Analytics professor. The dataset includes details such as pickup and drop-off times and locations, fare amounts, trip distances, and more. This information is valuable for analyzing taxi demand and transportation patterns in one of the most congested cities in the world.

Project Goal
The goal of this project is to gain hands-on experience with both pgAdmin and SQL while analyzing New York City taxi trip data. The project aims to answer key questions that provide insights into travel patterns and pricing. Specifically, it focuses on:

1. Measuring daily trip volumes (e.g., total trips on specific dates).

2. Identifying the most popular destinations from defined pickup locations.

3. Determining the days with the largest tips.

4. Finding pickup–drop-off pairs with the highest average fares.

Business Value
This project not only supports data analysis and technical learning but also highlights its business relevance. For example, if passengers picked up near Central Park often travel to the Statue of Liberty, we might assume that they have walked a lot in Central Park, are likely tired, and may be hungry or thirsty—creating an opportunity to open a restaurant near the point of destination, The Statue of Liberty. This demonstrates how combining data analysis with business vision can uncover valuable opportunities.

Methodology
- Imported the dataset (CSV provided by professor) into PostgreSQL using pgAdmin.

- Created a database and schema with columns for pickup/drop-off details, fares, distances, etc.

- Loaded data via pgAdmin’s Import/Export tool, ensuring correct delimiters and column mappings.

- Used SQL queries with COUNT, AVG, SUM, WHERE, and GROUP BY to analyze:

    Total trips by date

    Most frequent destinations

    Days with the highest tips

    Pickup–drop-off pairs with the highest average fares

- Summarized and visualized results to identify demand and pricing patterns.

Results
On March 15, there were 128,813 taxi trips recorded in New York City. For passengers picked up in Central Park on March 14, the most popular destination was Midtown Center. The largest single tip in March occurred on March 3, 2024. Finally, the pickup–drop-off pair with the highest average fare was Bayside / Outside of NYC.

Conclusion
The analysis of NYC taxi trips highlighted key insights, from the most frequent destinations to the days with the highest tips. While this study focused mainly on the month of March, it opens the door to extending the analysis over longer periods to uncover broader trends and more meaningful insights into NYC taxi demand.
