# makefile

install:
	python -m pip install --upgrade pip &&\
		pip install -r requirements/requirements.txt &&\
		pip install -r requirements/test_requirements.txt

train:
	python titanic_model/train_pipeline.py

format:
	black *.py

lint:
	pylint --disable=R,C setup.py

test:
	python -m pytest tests/test_*.py

all : install train lint test format