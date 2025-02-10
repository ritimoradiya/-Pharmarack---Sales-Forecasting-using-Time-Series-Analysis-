## Methodology  

1️⃣ **Data Collection**  
- Historical sales data from **2018 to 2023** was used.  
- Sales were split into **training (80%) and testing (20%) datasets**.  

2️⃣ **Time Series Models Applied**  
- **ARIMA (AutoRegressive Integrated Moving Average)**: Captures trends and seasonality.  
- **Holt’s Model**: Best suited for sales with a linear trend.  
- **Holt-Winters Model**: Effective for **seasonal** data with recurring patterns.  

3️⃣ **Forecasting with and without COVID Data**  
- **Phase 1:** Included COVID data to analyze its impact on sales.  
- **Phase 2:** Excluded COVID data to forecast future trends without pandemic influence.  

4️⃣ **Performance Evaluation**  
- **Mean Squared Error (MSE)** was used to compare models.  
- Lower MSE values indicated better forecasting accuracy.  

5️⃣ **Insights & Business Recommendations**  
- Evaluated demand fluctuations across **Cardiac, Anti-Diabetics, Respiratory, Gastro, Pain, and Vitamins** categories.  
- Identified periods of **high uncertainty** and **seasonal variations** for better inventory planning.  

---

## Key Findings  

✔️ **COVID-19 significantly impacted sales patterns**, especially for respiratory and anti-infective drugs.  
✔️ **Post-pandemic sales normalization** led to deviations between actual and forecasted values.  
✔️ **Holt-Winters Model** performed better for **seasonal products** like **Vitamins & Respiratory** categories.  
✔️ **Using forecasted COVID sales resulted in lower MSE**, making it a better predictor for future trends.  
