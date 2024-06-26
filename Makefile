flake8:
	@poetry run flake8 --show-source .

check-python-import:
	@poetry run isort --check-only .

fix-python-import:
	@poetry run isort .

clean:
	@find . -name "*.pyc" | xargs rm -rf
	@find . -name "*.pyo" | xargs rm -rf
	@find . -name "__pycache__" -type d | xargs rm -rf
	@find . -name ".pytest_cache" -type d | xargs rm -rf
	@find . -name ".cache" -type d | xargs rm -rf
	@rm -rf dist/

lint: clean flake8 check-python-import

requirements:
	@poetry install

release-patch:
	@poetry run bumpversion patch

release-minor:
	@poetry run bumpversion minor

release-major:
	@poetry run bumpversion major

run-server:
	@poetry run gunicorn wsgi -w 4 -b 0.0.0.0:8080
