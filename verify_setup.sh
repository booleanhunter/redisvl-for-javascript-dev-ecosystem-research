#!/bin/bash

# Verification script for RedisVL Market Analysis setup

echo "=================================================="
echo "RedisVL Market Analysis - Setup Verification"
echo "=================================================="
echo ""

# Check Python
echo "🔍 Checking Python installation..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version)
    echo "✅ Python found: $PYTHON_VERSION"
else
    echo "❌ Python 3 not found. Please install Python 3.8 or higher."
    exit 1
fi

# Check if data files exist
echo ""
echo "🔍 Checking data files..."
if [ -f "survey-data/survey_results_public.csv" ]; then
    FILE_SIZE=$(du -h survey-data/survey_results_public.csv | cut -f1)
    echo "✅ Survey data found: $FILE_SIZE"
else
    echo "❌ Survey data not found: survey-data/survey_results_public.csv"
    exit 1
fi

if [ -f "survey-data/survey_results_schema.csv" ]; then
    echo "✅ Schema file found"
else
    echo "❌ Schema file not found: survey-data/survey_results_schema.csv"
    exit 1
fi

# Check if notebook exists
echo ""
echo "🔍 Checking notebook file..."
if [ -f "stackoverflow_survey_analysis.ipynb" ]; then
    echo "✅ Analysis notebook found"
else
    echo "❌ Notebook not found: stackoverflow_survey_analysis.ipynb"
    exit 1
fi

# Check if requirements.txt exists
echo ""
echo "🔍 Checking requirements file..."
if [ -f "requirements.txt" ]; then
    echo "✅ Requirements file found"
    echo ""
    echo "📦 Required packages:"
    cat requirements.txt | grep -v "^#" | grep -v "^$"
else
    echo "❌ Requirements file not found: requirements.txt"
    exit 1
fi

# Check virtual environment
echo ""
echo "🔍 Checking virtual environment..."
if [ -d "venv" ]; then
    echo "✅ Virtual environment exists"
    
    # Check if packages are installed
    if [ -f "venv/bin/python" ]; then
        echo ""
        echo "🔍 Checking installed packages..."
        source venv/bin/activate
        
        PACKAGES=("pandas" "numpy" "matplotlib" "seaborn" "jupyter")
        ALL_INSTALLED=true
        
        for pkg in "${PACKAGES[@]}"; do
            if python -c "import $pkg" 2>/dev/null; then
                echo "✅ $pkg installed"
            else
                echo "⚠️  $pkg not installed"
                ALL_INSTALLED=false
            fi
        done
        
        deactivate
        
        if [ "$ALL_INSTALLED" = false ]; then
            echo ""
            echo "⚠️  Some packages are missing. Run ./run_analysis.sh to install them."
        fi
    fi
else
    echo "⚠️  Virtual environment not found"
    echo "   Run ./run_analysis.sh to create it"
fi

echo ""
echo "=================================================="
echo "✅ Setup verification complete!"
echo "=================================================="
echo ""
echo "📝 Next steps:"
echo "   1. Run: ./run_analysis.sh"
echo "   2. Wait for Jupyter to open in your browser"
echo "   3. Click 'Cell → Run All' to execute the analysis"
echo "   4. Review the results and visualizations"
echo ""
echo "📚 Documentation:"
echo "   - README.md - Main documentation"
echo "   - QUICK_START.md - Quick reference"
echo "   - ANALYSIS_README.md - Detailed guide"
echo ""

