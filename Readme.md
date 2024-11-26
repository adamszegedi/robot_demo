# Introduction to Robotframework

Goal of the repository is to showcase some feature of Robotframework.

## Prerequisites

### Tool
Recomended tool for editing robotframework test is [Visiual Studio Code](https://code.visualstudio.com/).   
Extension to use:
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [Robot Framework Intellisnese](https://marketplace.visualstudio.com/items?itemName=TomiTurtiainen.rf-intellisense)
- [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)

### Config
The API test need a key from [Openweathermap](https://openweathermap.org/appid) what you need to configure through the [./.env](.env) file.

```
API_KEY_WEATHER=api_key_goes_here
```


## Run Test

### Locally

You can use the justfile to run a copule of preconfigured commands to create a working environment with podman.

```
$ just -l
Available recipes:
    add-selenium-standalone
    build
    clean
    create-pod
    run
    run-interactively
```

* Create the testing environment

```
$ just create-pod

$ just add-selenium-standalone
```

* Build the robotframework runner container

```
$ just build
```

* You can start the testing enviroment in an interactive shell.

```
$ just run-interactively

$ python3 run.py
```

Or run it automatically

```
$ just run
```

## Congartualations you have successfully executed you first Robotframework tests! :clap:

## Coding Style

EditorConfig helps maintain consistent coding style.

[./.editorconfig](.editorconfig)

## Used Technologies

* [Robotframework](https://robotframework.org)
* [EditorConfig](https://editorconfig.org)
* [Podman](https://podman.io/)
* [Just](https://github.com/casey/just)

## Author

* **Szegedi Ádám** - *Initial work* - [adamszegedi](https://github.com/adamszegedi)

## Licence

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
