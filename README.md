# UniswapV2_get_prices

This Jupyter notebook contains a series of Python scripts designed to interact with Uniswap. The code extracts essential information such as token names, addresses, and ABIs, retrieves price data for token pairs, and stores this data in a database.

- **Insert New Pair into DB**: This function takes Uniswap pair contracts as input and ensures they are stored in the database. It retrieves contract ABIs, fetches the contracts, and records essential token information.
- **Insert Price for All Pairs**: The script processes all pairs in the database, retrieves their current prices, and saves this data into the database.
- **Get Last Price for All Pairs:** This function retrieves the most recent price data for all pairs stored in the database.
- **Get All Price Data for One Pair:** It allows the retrieval of the latest price information for a specific pair already present in the database.
- **Get Prices from All Pairs in the Database:** This script retrieves price data for all pairs stored in the database.
- **Plot Price Variations:** Lastly, the code includes functionality to visualize price variations for all pairs in the form of graphs, aiding in the analysis of price trends.

## Go to the project
[jupyter notebook](uniswapV2.ipynb)

---
**[🔙 Back to portfolio](https://nicolagg.github.io/)**

