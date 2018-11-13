MAIN_TAG=google

clean:
	@rm -f -r ./log ./screenshots/ ./*.png ./*.xml ./*html;

run:
	pipenv run robot --outputdir ./log --include $(TAGS) ./    \

run-all:
	pipenv run robot --outputdir ./log --include $(MAIN_TAG) --xunit xunit.xml ./    \

install:
	pipenv --rm;    \
	pipenv install;    \

.Phony: clean run run-all install