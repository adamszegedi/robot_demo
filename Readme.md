# Introduction to Robotframework

Goal of the repository is to showcase some feature from the Robotframework.

### Prerequisites

In order to use this project you need to install docker.

To verify the installation:

```
docker --version
```

The API test need a key from [Openweathermap](https://openweathermap.org/appid) what you need to configure through the ./.env file.

```
API_KEY_WEATHER=api_key_goes_here
```

### Installation

Build the docker containers:

```
docker-compose up --build --no-start
```

## Run Test

The logfiles will be created under ./demo/log
```
docker-compose start
```


### Coding Style

EditorConfig helps maintain consistent coding style.

./.editorconfig

## Használt Technológiák

* [Docker](https://docker.com) - Konténerizáció
* [Robotframework](https://robotframework.org) - Tesztframework
* [EditorConfig](https://editorconfig.org)

## Author

* **Szegedi Ádám** - *Initial work* - [adamszegedi](https://github.com/adamszegedi)

## Licensz

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
