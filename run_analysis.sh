#!/bin/bash

# RedisVL Market Analysis - Setup and Run Script

set -e  # Exit on error

echo "=================================================="
echo "RedisVL TypeScript/JavaScript Market Analysis"
echo "Stack Overflow Developer Survey 2025"
echo "=================================================="
echo ""

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "📦 Creating Python virtual environment..."
    python3 -m venv venv
    if [ $? -eq 0 ]; then
        echo "✅ Virtual environment created successfully"
    else
        echo "❌ Failed to create virtual environment"
        exit 1
    fi
else
    echo "✅ Virtual environment already exists"
fi

# Activate virtual environment
echo ""
echo "🔧 Activating virtual environment..."
source venv/bin/activate

if [ -z "$VIRTUAL_ENV" ]; then
    echo "❌ Failed to activate virtual environment"
    exit 1
fi

echo "✅ Virtual environment activated: $VIRTUAL_ENV"

# Upgrade pip
echo ""
echo "⬆️  Upgrading pip..."
pip install --upgrade pip --quiet

# Install requirements
echo ""
echo "📥 Installing required packages (this may take a minute)..."
echo "   - pandas"
echo "   - numpy"
echo "   - matplotlib"
echo "   - seaborn"
echo "   - jupyter"
echo "   - notebook"
echo ""

pip install -r requirements.txt --quiet

if [ $? -eq 0 ]; then
    echo "✅ All packages installed successfully"
else
    echo "❌ Failed to install packages"
    exit 1
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "=================================================="
echo "Starting Jupyter Notebook..."
echo "=================================================="
echo ""
echo "📓 The notebook will open in your browser."
echo "📊 Run all cells to see the complete analysis."
echo ""
echo "💡 Tips:"
echo "   - Use 'Cell → Run All' to execute all cells"
echo "   - Analysis takes ~5-10 minutes to complete"
echo "   - Results will be saved to survey-data/"
echo ""
echo "🛑 Press Ctrl+C to stop the notebook server when done."
echo ""

# Start Jupyter Notebook
jupyter notebook stackoverflow_survey_analysis.ipynb

