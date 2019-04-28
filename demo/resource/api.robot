*** Settings ***
Library	   Collections
Library    RequestsLibrary

*** Keywords ***
Get Weather For Hungarian City ${city}
    Variable Should Exist  ${WEATHER}  msg=WEATHER Dictionary Need To Be Defined
    Create Session   weather  ${WEATHER}[URL]  verify=${TRUE}
    ${API_KEY_WEATHER} =    Get Environment Variable    API_KEY_WEATHER
    ${params} =  Create Dictionary  q=${city},HU  appid=${API_KEY_WEATHER}  units=metric
    ${resp} =  Get Request  weather  uri=/data/2.5/forecast  params=${params}
    Should Be Equal As Strings  ${resp.status_code}	200
    Log To Console  ${\n} Tempreture in ${city} is ${resp.json()}[list][0][main][temp]