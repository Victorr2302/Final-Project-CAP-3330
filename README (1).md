# Hospital Equipment Reliability & Maintenance Risk Assistant

**Student Name:** Victor Rangel  
**Implementation Level:** Level 1 - Quarto Report  
**Industry:** Healthcare / Clinical Engineering  
**Intended User:** Hospital Equipment Operations Manager  
**Problem:** Unplanned downtime of diagnostic devices delays treatments and increases costs.  
**Decision Supported:** Prioritize equipment for immediate preventive maintenance vs. routine checks.  
**Dataset Source:** Synthetic clinical engineering equipment log (300 records).  

---

## Skill Summary Table

| Skill | User Question | Method | Main Output | Decision Supported |
|---|---|---|---|---|
| Explore | What is the distribution of downtime? | Histogram & summary stats | Downtime distribution chart | Identify skew in downtime hours |
| Compare | Does high usage increase downtime? | Welch 2-sample t-test | Group means & p-value | Determine operational usage impact |
| Model | Which machines will fail unexpectedly? | Logistic Regression (GLM) | Failure probabilities & accuracy | Predict unexpected failure risk |
| Custom 1 | Are there missing data quality issues? | NA summary audit (`colSums`) | Missing value counts | Validate data completeness |
| Custom 2 | Which devices are top priority for maintenance? | Model risk probability ranking | Top 10 high-risk queue | Target immediate repair list |
| Custom 3 | How do failures trend over time? | Monthly aggregation & barplot | Failure counts per month | Inform long-term maintenance capacity |

---

## How Google Antigravity and Agent Skills Were Used

### Requests Given
* Requested assistance structuring a 10-section Quarto report to analyze diagnostic medical equipment downtime.
* Asked for an operational dataset (300 rows) tracking device age, usage hours, downtime, and failure events.
* Asked to construct R code blocks for univariate exploration, group comparison, logistic regression modeling, data quality auditing, risk ranking, and trend analysis.

### Skill Files Created
* Configured 6 individual `SKILL.md` markdown files under the `skills/` directory (`skills/explore/SKILL.md`, `skills/compare/SKILL.md`, `skills/model/SKILL.md`, `skills/data-quality-audit/SKILL.md`, `skills/risk-ranking/SKILL.md`, and `skills/trend-analysis/SKILL.md`).
* Documented each skill using the 10 required headings (`Purpose`, `When to Use`, `Required Inputs`, `Files Used`, `Method`, `Procedure`, `Validation`, `Output`, `Interpretation`, `Limitation`).

### Review & Corrections
* **Model Evaluation Enhancement:** Added confusion matrix calculations (`table()`) and exact classification accuracy metrics to the logistic regression skill after reviewing initial raw regression summaries.
* **Data Visualization Additions:** Added an explicit `barplot()` for monthly failure aggregation to ensure visual outputs accompanied summary tables.
* **Package Management:** Identified missing `knitr` and `rmarkdown` dependencies in Posit Cloud environment and ran `install.packages()` to resolve rendering blocks.

---

## Setup Instructions

### Required R Packages
```R
install.packages(c("knitr", "rmarkdown"))