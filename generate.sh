poetry new $1
touch .pre-commit-config.yaml
pre-commit install
echo """repos:
-   repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v4.0.1
    hooks:
    -   id: trailing-whitespace
    -   id: end-of-file-fixer
    -   id: check-yaml""" >> .pre-commit-config.yaml

git add .pre-commit-config.yaml
git commit -m "Standard python project folder setup is Done."
