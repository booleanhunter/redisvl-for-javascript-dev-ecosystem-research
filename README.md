# Should We Build RedisVL for TypeScript?

A data-driven market research analysis using the Stack Overflow 2025 Developer Survey to determine if there's sufficient demand for a TypeScript/JavaScript version of [RedisVL](https://github.com/redis/redis-vl-python).

## 🎯 Key Findings

- **54.4%** of Node.js developers use AI tools daily (highest among all groups)
- **54.0%** of TypeScript developers use AI daily
- **JS/TS + Redis market is 1.5x larger** than Python + Redis market
- **63.2%** of Node.js developers have favorable sentiment toward AI
- **Redis ranks #6** in database usage among Node.js developers

## 📊 View the Analysis

**Live Site:** [https://booleanhunter.github.io/should-we-build-redisvl-typescript/](https://booleanhunter.github.io/should-we-build-redisvl-typescript/)

The analysis includes interactive Plotly visualizations covering:
- Market size comparison across developer groups
- Redis adoption rates and database preferences
- Node.js + Redis developer profiles and tech stacks
- AI/ML usage patterns and sentiment analysis

## 🚀 Running Locally

### Prerequisites

- Python 3.8+
- Jupyter Notebook or JupyterLab

### Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/booleanhunter/should-we-build-redisvl-typescript.git
   cd should-we-build-redisvl-typescript
   ```

2. **Download the dataset:**
   
   The survey dataset (~135MB) is not included in this repository. Download it from:
   
   **[Stack Overflow 2025 Developer Survey Dataset](https://survey.stackoverflow.co/datasets/stack-overflow-developer-survey-2025.zip)**
   
   Extract the contents to a `survey-data/` directory in the project root:
   ```bash
   mkdir survey-data
   cd survey-data
   # Download and extract the zip file here
   # You should have:
   # - survey_results_public.csv
   # - survey_results_schema.csv
   # - 2025_Developer_Survey_Tool.pdf
   ```

3. **Create a virtual environment:**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

4. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

5. **Run the analysis:**
   ```bash
   jupyter notebook stackoverflow_survey_analysis_plotly.ipynb
   ```

## 📁 Project Structure

```
should-we-build-redisvl-typescript/
├── stackoverflow_survey_analysis_plotly.ipynb  # Main analysis notebook
├── requirements.txt                            # Python dependencies
├── _quarto.yml                                 # Quarto configuration
├── index.qmd                                   # Landing page
├── styles.css                                  # Custom styles
├── survey-data/                                # Dataset (not in git)
│   ├── survey_results_public.csv               # Download separately
│   ├── survey_results_schema.csv               # Download separately
│   └── 2025_Developer_Survey_Tool.pdf          # Download separately
└── README.md                                   # This file
```

## 🛠️ Technologies Used

- **Python** - Data analysis
- **Pandas** - Data manipulation
- **Plotly** - Interactive visualizations
- **Jupyter** - Notebook environment
- **Quarto** - Documentation site generator
- **GitHub Pages** - Hosting

## 📚 About RedisVL

[RedisVL](https://github.com/redis/redis-vl-python) is a Python client library for Redis as a Vector Database. It provides:

- Vector similarity search
- Semantic caching
- RAG (Retrieval Augmented Generation) support
- Integration with popular AI/ML frameworks

Currently available for:
- ✅ Python
- ✅ Java
- ❓ **TypeScript/JavaScript** (This analysis explores the opportunity)

## 📖 Data Source

**Stack Overflow 2025 Developer Survey**
- Sample Size: 49,191 responses
- Fields: 172 columns
- Download: [https://survey.stackoverflow.co/datasets/stack-overflow-developer-survey-2025.zip](https://survey.stackoverflow.co/datasets/stack-overflow-developer-survey-2025.zip)

## 📄 License

This analysis is provided for educational and research purposes. The Stack Overflow Developer Survey data is subject to the [Open Database License (ODbL)](https://opendatacommons.org/licenses/odbl/1-0/).

## 🤝 Contributing

Found an issue or have suggestions? Feel free to [open an issue](https://github.com/booleanhunter/should-we-build-redisvl-typescript/issues) or submit a pull request!

## 👤 Author

**Ashwin Hariharan** ([@booleanhunter](https://github.com/booleanhunter))

---

*Built with [Quarto](https://quarto.org/) • Data from [Stack Overflow](https://stackoverflow.com/)*

