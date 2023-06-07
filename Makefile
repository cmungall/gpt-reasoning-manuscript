all: combine-tables compile

compile:
	sh build/build.sh

combine-tables:
	python util/combine_tables.py


activate:
	conda activate manubot

ue:
	conda env update --file build/environment.yml --prune

nb:
	jupyter notebook
