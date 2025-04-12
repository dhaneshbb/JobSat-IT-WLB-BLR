
# Job Satisfaction and Work-Life Balance Analysis in Bangalore's IT Sector

## Project Overview
This study investigates job satisfaction and work-life balance among IT professionals in Bangalore, India. Using a mixed-methods approach, it analyzes factors such as remote work dynamics, stress management, gender differences, and organizational support. The project combines quantitative surveys (205 respondents) with qualitative insights to provide actionable recommendations for employers and policymakers.

---

## Directory Structure
```
├── Root Files/
│   ├── data/                   # Raw and processed datasets
│   │   └── data.csv            # Primary survey data
│   ├── project summary/        
│   │   └── analysis_summary.md # Key insights and executive summary
│   │   └── report.pdf          # Full project report (85 pages)
│   └── src/                    # Analysis scripts
│       └── R code.R            # Statistical analysis and visualization code
├── README
└── LICENSE                     # Project license
```

---

## Key Findings
### 1. **Remote Work Dynamics**
- **55.6%** of respondents worked <10 remote hours/week.
- **56.6%** reported improved productivity with remote work (no gender disparity, p=0.447).

### 2. **Health and Well-being**
- **23.4%** experienced work-related burnout.
- Females had **1.52x higher odds** of burnout (non-significant, p=0.248).

### 3. **Job Satisfaction**
- **54.1%** rated satisfaction ≥7/10.
- Top dissatisfaction drivers: insufficient compensation (17.1%), limited skill development (17.1%).

### 4. **Gender Neutrality**
- No significant gender differences in work experience (p=0.309), marital status (p=1), or stress management strategies (p=0.847).

---

## Methodology
### Data Collection
- **Sample:** 205 IT professionals (111 male, 94 female) via stratified random sampling.
- **Tools:** Google Forms questionnaire with Likert-scale and categorical questions.

### Statistical Techniques
- **Chi-Squared Tests:** Assessed associations between gender and variables (e.g., experience, marital status).
- **Odds Ratios:** Analyzed health outcomes (e.g., burnout).
- **Visualizations:** Mosaic plots, fourfold plots (R packages `vcd`, `ggplot2`).

### Software
- **R Programming:** Hypothesis testing (`chisq.test`), visualization (`mosaicplot`).
- **MS Excel:** Data cleaning and preliminary analysis.

---

## How to Use This Repository
1. **Data Analysis**
   - Run `R code.R` for statistical tests and visualizations.
   - Required R packages: `vcd`, `DescTools`, `epitools`, `lsr`.

2. **Report Navigation**
   - `analysis_summary.md`: Concise executive summary.
   - `report.pdf`: Full methodology, literature review, and detailed findings.

3. **Data Limitations**
   - Raw data (`data.csv`) is pre-processed; original survey responses not included.

---

## References
Cited literature includes:
- Herzberg’s Two-Factor Theory, Boundary Theory.
- *"Work-Life Balance in Bangalore’s IT Sector"* (Josmitha & Gunaseelan, 2018).
- *"Impact of Remote Work on Productivity"* (Hadapad & Battur, 2020).

Full references: See `report.pdf` (Pages 57–59).

---

## Future Work
1. **Longitudinal Studies:** Track changes post-policy interventions.
2. **Skill Development Frameworks:** Partner with platforms like Coursera for IT upskilling.
3. **Urban Infrastructure Analysis:** Address Bangalore’s traffic congestion impact.

---

**License**  
MIT License (see [LICENSE](LICENSE)).
