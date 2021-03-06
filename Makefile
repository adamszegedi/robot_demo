MAIN_TAG=google

.Phony: clean
clean:
	@rm -f -r ./demo/log ./demo/screenshots/ ./demo/*.png ./demo/*.xml ./demo/*html;

.Phony: run
run:
	poetry run robot --outputdir ./demo/log --include $(TAGS) ./    \

.Phony: run-all
run-all:
	poetry run robot --outputdir ./demo/log --xunit xunit.xml ./    \

.Phony: install
install:
	poetry install --no-dev;    \
