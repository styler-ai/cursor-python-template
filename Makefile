.PHONY: help install lint test docs clean

help:
	@echo "Available commands:"
	@echo "  install     - Install package and development dependencies"
	@echo "  lint        - Run linters (flake8, black check, isort check)"
	@echo "  test        - Run tests with pytest"
	@echo "  docs        - Build documentation using Sphinx"
	@echo "  clean       - Remove build artifacts and cache files"

install:
	@echo "Installing dependencies..."
	python -m pip install --upgrade pip
	python -m pip install -r requirements.txt
	python -m pip install -e ".[dev]"

lint:
	@echo "Running linters..."
	flake8 src tests
	black --check src tests
	isort --check-only src tests

test:
	@echo "Running tests..."
	pytest

docs:
	@echo "Building documentation..."
	$(MAKE) -C docs html

clean:
	@echo "Cleaning up..."
	find . -type f -name '*.py[co]' -delete
	find . -type d -name '__pycache__' -delete
	rm -rf build dist *.egg-info .pytest_cache .coverage htmlcov
	$(MAKE) -C docs clean

# Default target
default: help 