# RFM Customer Segmentation

## Business Problem
A UK-based online retail business needed to understand customer behavior 
and identify which customers were most valuable, at risk of churning, 
or already lost — to enable targeted marketing decisions.

## Project Overview
Performed RFM (Recency, Frequency, Monetary) analysis on 5800+ customers 
using transactional data from 2009-2011. Segmented customers into 4 
behavioral groups(Champions, Loyal, At Risk, Lost) and identified revenue contribution per segment. 
Built end-to-end pipeline using MySQL for metric computation and 
Python for scoring, segmentation, and visualization.

## Key Findings
- 5878 total customers analyzed across 824364 transactions
- Champions segment (12% of customers) generates 54% of total revenue
- 931 At-Risk customers identified — previously high-frequency buyers 
  with no purchase in 290+ days
- UK accounts for 91% of total customer base — business heavily 
  dependent on single market
- Average monetary value of Champions is 25x higher than Lost customers

## Customer Segments
| Segment | Customers | Avg Recency | Avg Frequency | Avg Monetary |
|---------|-----------|-------------|---------------|--------------|
| Champions | 705 | 11 days | 23 orders | $13658.39 |
| Loyal | 1189 | 41 days | 8 orders | $3216.70 |
| At Risk | 931 | 295 days | 6 orders | $2855.88 |
| Lost | 3053 | 280 days | 2 orders | $534.15 |

## Business Recommendations
- **Champions:** Reward with loyalty program, ask for reviews/referrals
- **Loyal:** Upsell higher value products, offer early access to new items
- **At Risk:** Launch win-back campaign with personalised discount within 
  30 days before they move to Lost
- **Customers Lost:** Low priority — minimal marketing spend, 
  occasional re-engagement email only

## Tech Stack
- Python (Pandas, NumPy, Matplotlib, Seaborn)
- MySQL (RFM metric computation, 5 analytical queries)
- Jupyter Notebook

## Dashboard Screenshots
### Customer Segment Distribution
![Segment Distribution](screenshots/segment_distribution.png)
### Revenue by Segment
![Revenue](screenshots/revenue_by_segment.png)
### RFM Heatmap
![Heatmap](screenshots/rfm_heatmap.png)
### Frequency vs Monetary
![Scatter](screenshots/frequency_vs_monetary.png)
### Top 10 Countries
![Countries](screenshots/top10_countries.png)

## How to Run
1. Clone the repo: `git clone [https://github.com/Itzmemanish01/rfm-customer-segmentation]`
2. Open `notebooks/rfm_analysis.ipynb` in Jupyter
3. Run all cells
4. SQL queries available in `sql/rfm_queries.sql`

## Dataset
Online Retail II Dataset — UCI Machine Learning Repository  
Available on Kaggle: https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci

## Author
Manish Dangi  
B.Tech, Mathematics and Computing — IIIT Bhagalpur  
[LinkedIn](https://www.linkedin.com/in/manish-dangi-b26802272/) | [GitHub](https://github.com/Itzmemanish01/)