MAIN_TAG=google

.Phony: clean
clean:
	@rm -f -r ./demo/log ./demo/screenshots/ ./demo/*.png ./demo/*.xml ./demo/*html;

run-all:
	python -m robot --outputdir ./demo/log --xunit xunit.xml ./    \

