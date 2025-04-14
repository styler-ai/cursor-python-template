<#
.SYNOPSIS
Sets up the Python development environment for the project.

.DESCRIPTION
Checks for Python/pip, creates a virtual environment (if needed),
and provides instructions for installing dependencies.
#>

Write-Host "Setting up development environment..."

# Check if Python 3 is available
$pythonExe = Get-Command python3 -ErrorAction SilentlyContinue
if (-not $pythonExe) {
    $pythonExe = Get-Command python -ErrorAction SilentlyContinue
    if (-not $pythonExe) {
        Write-Error "Error: python or python3 is not found in PATH."
        exit 1
    }
}
$pythonPath = $pythonExe.Source
Write-Host "Using Python at: $pythonPath"

# Check if pip is available
try {
    & $pythonPath -m pip --version | Out-Null
    Write-Host "pip is available."
} catch {
    Write-Error "Error: pip for $pythonPath is not installed or accessible."
    exit 1
}

# Create virtual environment if it doesn't exist
$venvDir = "venv"
if (-not (Test-Path -Path $venvDir -PathType Container)) {
    Write-Host "Creating virtual environment in $venvDir..."
    try {
        & $pythonPath -m venv $venvDir
    } catch {
        Write-Error "Failed to create virtual environment. Error: $($_.Exception.Message)"
        exit 1
    }
} else {
    Write-Host "Virtual environment $venvDir already exists."
}

# Provide activation instructions
Write-Host "To activate the virtual environment, run:"
Write-Host ".\$venvDir\Scripts\Activate.ps1"

# --- Dependency Installation (Commented Out) ---
# Write-Host "Upgrading pip..."
# & $pythonPath -m pip install --upgrade pip

# Install dependencies from requirements.txt
if (Test-Path -Path "requirements.txt" -PathType Leaf) {
    Write-Host "Installing dependencies from requirements.txt..."
    # & $pythonPath -m pip install -r requirements.txt
    Write-Host "(Skipping pip install for now - uncomment in script to enable)"
} else {
    Write-Host "requirements.txt not found. Skipping dependency installation."
}

# Install optional development dependencies from pyproject.toml
if (Test-Path -Path "pyproject.toml" -PathType Leaf) {
    Write-Host "Installing development dependencies from pyproject.toml..."
    # & $pythonPath -m pip install -e ".[dev]"
    Write-Host "(Skipping pip install -e .[dev] for now - uncomment in script to enable)"
} else {
    Write-Host "pyproject.toml not found. Skipping dev dependency installation."
}

# Setup pre-commit hooks if configured
$preCommitConfig = ".pre-commit-config.yaml"
$preCommitExe = Get-Command pre-commit -ErrorAction SilentlyContinue
if (Test-Path -Path $preCommitConfig -PathType Leaf) {
    if ($preCommitExe) {
        Write-Host "Installing pre-commit hooks..."
        # & $preCommitExe.Source install
        Write-Host "(Skipping pre-commit install for now - uncomment in script to enable)"
    } else {
        Write-Host "pre-commit is configured (found $preCommitConfig) but not installed or not in PATH."
        Write-Host "Install with 'pip install pre-commit' and run 'pre-commit install'."
    }
}

Write-Host "Development environment setup script finished."
Write-Host "Remember to activate the virtual environment: .\$venvDir\Scripts\Activate.ps1" 