
#!/usr/bin/env bash
set -e

# Upgrade pip and install dependencies.
python -m pip install --upgrade pip

if [ -f "pyproject.toml" ]; then
	if command -v poetry >/dev/null 2>&1; then
		poetry install --no-interaction --no-ansi
	else
		echo "pyproject.toml found but poetry not available; falling back to requirements.txt"
		pip install -r requirements.txt
	fi
else
	pip install -r requirements.txt
fi

# Collect static files (safe to ignore failures during build)
python manage.py collectstatic --noinput || true
