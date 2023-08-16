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
In order the run test on your local machine you need to:
- Install [python^3.11.4](https://www.python.org/downloads/)

Then from the root folder of the repository install dependencies inside a 
[virtualenviroment](https://docs.python.org/3/tutorial/venv.html) in order to not to mess with the system installed python):

```
> python -m venv .venv
```

Activate the newly created virtualenvironment

| Type   |      Command      |
| ---    |      ---          |
| POSIX       | `> source .venv/bin/activate` |
| PowerShell  | `> .venv/bin/Activate.ps1` |
| cmd.exe     | `C:\> .venv\Scripts\activate.bat` |


Install packages    
```
> pip install -r requirements.txt
```

Then run the run.py script:
```
>python run.py
```
Log files will be created under ./demo/log

## Congartualations you have successfully executed you first Robotframework tests! :clap:

## Coding Style

EditorConfig helps maintain consistent coding style.

[./.editorconfig](.editorconfig)

## Used Technologies

* [Robotframework](https://robotframework.org)
* [EditorConfig](https://editorconfig.org)

## Author

* **Szegedi Ádám** - *Initial work* - [adamszegedi](https://github.com/adamszegedi)

## Licence

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
