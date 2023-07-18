*** Settings ***
Library     Collections
Library     RequestsLibrary
Library     OperatingSystem


*** Keywords ***
Get Weather For Hungarian City ${city}
    Variable Should Exist    ${WEATHER}    msg=WEATHER Dictionary Need To Be Defined
    Create Session    alias=weather    url=${WEATHER}[URL]    verify=${TRUE}
    ${API_KEY_WEATHER} =    Get Environment Variable    API_KEY_WEATHER
    ${params} =    Create Dictionary    q=${city},HU    appid=${API_KEY_WEATHER}    units=metric
    ${resp} =    Get On Session    alias=weather    url=/data/2.5/forecast    params=${params}
    Should Be Equal As Strings    ${resp.status_code}    200
    Log To Console    ${\n} Tempreture in ${city} is ${resp.json()}[list][0][main][temp]

