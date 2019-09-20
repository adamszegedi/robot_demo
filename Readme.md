# Introduction to Robotframework

Goal of the repository is to showcase some feature of Robotframework.

## Prerequisites

### Tool
Recomended tool for editing robotframework test is [Visiual Studio Code](https://code.visualstudio.com/).   
Extension to use:
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [Robot Framework Intellisnese](https://marketplace.visualstudio.com/items?itemName=TomiTurtiainen.rf-intellisense)
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)

### Config
The API test need a key from [Openweathermap](https://openweathermap.org/appid) what you need to configure through the [./.env](.env) file.

```
API_KEY_WEATHER=api_key_goes_here
```


## Run Test

### Locally
In order the run test on your local machine you need to:
- Install [python^3.7](https://www.python.org/downloads/)
- Install [Poetry](https://poetry.eustace.io/docs/#installation)
- Add [Chromedriver](https://chromedriver.chromium.org/getting-started) to Path.

Then from the root folder of the repository install dependencies (poetry will create a
[virtualenviroment](https://docs.python.org/3/tutorial/venv.html) in order to not to mess with the system installed python):

```
>poetry install
Installing dependencies from lock file
```

From the [.env](./.env) file remove REMOTE_URL value, but just the value you must leave the key in the file!

Then run the run.py script via poetry after a while you will see chrome to flicker on your screen:
```
>poetry run python run.py
```
Log files will be created under ./demo/log

## Congartualations you have successfully executed you first Robotframework tests! :clap:

### Docker

In order to use this project with docker you need to [install](https://docs.docker.com/install/) it first.

To verify the installation:

```
>docker --version
Docker version 18.09.2, build 6247962
```

Start selenium hub and chrome node, change directory into selenium_hub,
it is a git submodule, you can find the original repository [here](https://grgitlab.grepton.hu/qa/selenium_hub).

```
selenium_hub>docker-compose up -d
Starting selenium-hub ... done
Starting selenium_chrome_1 ... done
```

Build the docker container from the root folder of the repositry:
```
>docker-compose build
Building demo
Step 1/9 : FROM python:3.7.3

.......

Successfully built 88d55fb42689
Successfully tagged demo:latest
```

To run the test via docker execute this from the root folder of the repositry.
```
>docker-compose run --rm demo
poetry run robot --outputdir ./demo/log --xunit xunit.xml ./    \

==============================================================================
App
==============================================================================
App.Demo
==============================================================================
App.Demo.Test
==============================================================================
App.Demo.Test.01 Basic
==============================================================================
App.Demo.Test.01 Basic.01 Basic :: Basic Usage Examples
==============================================================================
FakerLibrary Words Generation                                         | PASS |
------------------------------------------------------------------------------

.......

App                                                                   | PASS |
11 critical tests, 11 passed, 0 failed
11 tests total, 11 passed, 0 failed
==============================================================================
Output:  /app/demo/log/output.xml
XUnit:   /app/demo/log/xunit.xml
Log:     /app/demo/log/log.html
Report:  /app/demo/log/report.html

```
The logfiles will be created under ./demo/log

After yout finished with running the tests you should shut down the selenium hub and node.
Change directory into selenium_hub
```
>docker-compose down
Stopping selenium_chrome_1 ... done
Stopping selenium-hub      ... done
Removing selenium_chrome_1 ... done
Removing selenium-hub      ... done
Removing network selenium_hub
Removing network selenium_default
```

## Coding Style

EditorConfig helps maintain consistent coding style.

[./.editorconfig](.editorconfig)

## Used Technologies

* [Docker](https://docker.com)
* [Robotframework](https://robotframework.org)
* [EditorConfig](https://editorconfig.org)

## Author

* **Szegedi Ádám** - *Initial work* - [adamszegedi](https://github.com/adamszegedi)

## Licence

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
