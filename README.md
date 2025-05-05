# NBA Talent Selection and Trades Insights for 2025

## 📊 Overview
This project analyzes NBA player performance, salaries, and college data to provide insights into team changes, player recruitment, and trade-offs. It aims to determine the impact of team changes on player performance and salary, and to establish benchmark metrics for recruiting future NBA players.

## 🎯 Objectives
- Support data-driven recruitment decisions for NBA teams.
- Analyze the relationship between team changes, performance, and salary.
- Identify key performance indicators (KPIs) for recruiting college players.

## 📈 Data Sources
- **NBA Player Stats (1999-2020)**
- **NBA Salaries (2000-2019)**
- **College Game Statistics (1980-2022)**

## 🧹 Data Wrangling

The data wrangling process involved preparing and merging multiple datasets to ensure consistency and accuracy for analysis. Key steps include:

1. **Filtering NBA Player Data**:
   - Filtered the **NBA player stats** for players who played in **Regular Seasons** between **2000 and 2019**.
   - Removed outliers, including players with extremely high incomes (over $10,000/month) and those aged **80 or older**, based on the assumption that they have minimal future movement in product ownership.

2. **Joining Datasets**:
   - Created a **name-key** column to join the **NBA player stats dataset** with the **salary dataset** on player names.
   - Combined the **college dataset** with the NBA dataset using common player names to analyze their performance both in college and in the NBA.

3. **Custom Performance Metrics**:
   - Created **custom performance metrics** based on key attributes such as points per game, assists per game, rebounds, and salary.
   - Standardized these metrics to ensure comparability across players from different teams and seasons.

4. **Removing Unnecessary Data**:
   - Removed columns that were irrelevant to the analysis (e.g., excessive or redundant information).
   - Focused on relevant performance indicators and salary data to build a final clean dataset.

5. **Handling Missing Values**:
   - Performed checks for missing data and filled or excluded missing values where necessary to avoid bias in the analysis.

6. **Final Dataset**:
   - The final dataset was a combination of **NBA performance stats**, **salary information**, and **college player data**, with custom performance metrics ready for analysis and segmentation.

This thorough data wrangling process ensured that we had clean, actionable data to perform the clustering analysis and generate insights for NBA team recruitment and trade strategies.


## 🔍 Key Findings
- **Team Change Impact**: Players who changed teams had higher salaries but lower consistency in performance.
- **College Talent Recruitment**: Median KPIs for recruits include 13.4 points, 4.8 goals, and 5.3 rebounds per game.
- **Top Colleges**: Kentucky and Duke are strong talent pipelines, while UConn and California alumni fetch higher salaries.

## 💡 Recommendations
- Focus on player retention for better consistency and cost-effectiveness.
- Recruit players with median KPI values: ~17 points (scorers), ~7 rebounds (rebounders).
- Target colleges like **Kentucky**, **Duke**, and **UConn** for high-value players.
