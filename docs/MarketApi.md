# powerbot_client.MarketApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_exchange_password**](MarketApi.md#change_exchange_password) | **PUT** /market | Update exchange password
[**get_delivery_area**](MarketApi.md#get_delivery_area) | **GET** /delivery-area/{area_id} | Get delivery area information
[**get_delivery_areas**](MarketApi.md#get_delivery_areas) | **GET** /delivery-areas | Get delivery areas
[**get_health**](MarketApi.md#get_health) | **GET** /market/health | Get server health
[**get_notifications**](MarketApi.md#get_notifications) | **GET** /market/notifications | Get notifications from market operations
[**get_status**](MarketApi.md#get_status) | **GET** /market | Get exchange and server status
[**login**](MarketApi.md#login) | **POST** /market | Perform exchange login
[**logout**](MarketApi.md#logout) | **DELETE** /market | Perform exchange logout
[**set_market_options**](MarketApi.md#set_market_options) | **POST** /market/options | Set exchange options
[**switch_mode**](MarketApi.md#switch_mode) | **PUT** /market/mode | Toggle market mode


# **change_exchange_password**
> change_exchange_password(credentials)

Update exchange password

Will change the exchange user's credentials and will then log out and re-login to the market with the new credentials.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.changed_credentials import ChangedCredentials
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)
    credentials = powerbot_client.ChangedCredentials() # ChangedCredentials | 

    try:
        # Update exchange password
        api_instance.change_exchange_password(credentials)
    except Exception as e:
        print("Exception when calling MarketApi->change_exchange_password: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**ChangedCredentials**](ChangedCredentials.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_delivery_area**
> DeliveryArea get_delivery_area(area_id)

Get delivery area information

Get information about a specific delivery area

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.delivery_area import DeliveryArea
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)
    area_id = '10YDE-RWENET---I' # str | The delivery area EIC

    try:
        # Get delivery area information
        api_response = api_instance.get_delivery_area(area_id)
        print("The response of MarketApi->get_delivery_area:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketApi->get_delivery_area: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **area_id** | **str**| The delivery area EIC | 

### Return type

[**DeliveryArea**](DeliveryArea.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_delivery_areas**
> List[DeliveryArea] get_delivery_areas(all=all)

Get delivery areas

Get information about delivery areas

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.delivery_area import DeliveryArea
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)
    all = False # bool | Return all delivery areas instead of just the accessible ones (optional) (default to False)

    try:
        # Get delivery areas
        api_response = api_instance.get_delivery_areas(all=all)
        print("The response of MarketApi->get_delivery_areas:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketApi->get_delivery_areas: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **all** | **bool**| Return all delivery areas instead of just the accessible ones | [optional] [default to False]

### Return type

[**List[DeliveryArea]**](DeliveryArea.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_health**
> get_health()

Get server health

Allows you to retrieve the health of this instance for failover switches. Will return a healthy state if the market status is OK and stable. Please note that this request does not require authentication.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)

    try:
        # Get server health
        api_instance.get_health()
    except Exception as e:
        print("Exception when calling MarketApi->get_health: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Service is healthy |  -  |
**503** | Service is unhealthy |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_notifications**
> List[Notification] get_notifications(offset=offset, limit=limit, severity_at_least=severity_at_least, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp)

Get notifications from market operations

Allows you to retrieve notifications from market operations (e.g. information about MARKET_HALT etc.) sent to the exchange user.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.notification import Notification
from powerbot_client.models.severity import Severity
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)
    offset = 0 # int | Offset when loading a list of items (optional) (default to 0)
    limit = 150 # int | Limits the number of loaded items (optional) (default to 150)
    severity_at_least = MED # Severity | This parameter is ignored at nordpool (optional) (default to MED)
    from_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=) (optional)
    to_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <) (optional)

    try:
        # Get notifications from market operations
        api_response = api_instance.get_notifications(offset=offset, limit=limit, severity_at_least=severity_at_least, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp)
        print("The response of MarketApi->get_notifications:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketApi->get_notifications: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Offset when loading a list of items | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded items | [optional] [default to 150]
 **severity_at_least** | [**Severity**](.md)| This parameter is ignored at nordpool | [optional] [default to MED]
 **from_api_timestamp** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;) | [optional] 
 **to_api_timestamp** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;) | [optional] 

### Return type

[**List[Notification]**](Notification.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  * X-Total-Count - total count of messages <br>  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_status**
> MarketStatus get_status()

Get exchange and server status

Delivers the status of the market and the server as well as configuration information (list of delivery areas etc.). **Heads up!** You should query if the server status is \"OK\" before starting any trading activities.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.market_status import MarketStatus
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)

    try:
        # Get exchange and server status
        api_response = api_instance.get_status()
        print("The response of MarketApi->get_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketApi->get_status: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**MarketStatus**](MarketStatus.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> MarketStatus login(credentials, force=force)

Perform exchange login

Allows you to log the server into the exchange. This usually needs to be done only once at setup or if the exchange password has changed and can only be done by a master-API-key **Heads up!** This function is NOT for you logging into this server (access to that is done via an API key) but to log the server into the exchange.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.credentials import Credentials
from powerbot_client.models.market_status import MarketStatus
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)
    credentials = powerbot_client.Credentials() # Credentials | 
    force = False # bool | It will disconnect anyone already connected with the specified account.  **Note**: Only relevant for M7 based exchanges (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM). (optional) (default to False)

    try:
        # Perform exchange login
        api_response = api_instance.login(credentials, force=force)
        print("The response of MarketApi->login:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketApi->login: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**Credentials**](Credentials.md)|  | 
 **force** | **bool**| It will disconnect anyone already connected with the specified account.  **Note**: Only relevant for M7 based exchanges (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM). | [optional] [default to False]

### Return type

[**MarketStatus**](MarketStatus.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> MarketStatus logout(delete_orders=delete_orders)

Perform exchange logout

Allows you to log the server out of the exchange. This needs to be done only on very rare occasions and can only be done by the master-API-key. **Heads up!** This function is NOT for you logging out of this server but to log out of the exchange.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.market_status import MarketStatus
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)
    delete_orders = False # bool | If this parameter is set to true, all orders will be deleted on logout. (optional) (default to False)

    try:
        # Perform exchange logout
        api_response = api_instance.logout(delete_orders=delete_orders)
        print("The response of MarketApi->logout:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketApi->logout: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_orders** | **bool**| If this parameter is set to true, all orders will be deleted on logout. | [optional] [default to False]

### Return type

[**MarketStatus**](MarketStatus.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_market_options**
> MarketStatus set_market_options(credentials)

Set exchange options

Allows you to configure options. You can set a default delivery area here (set empty string to deactivate) for the order book request.  In addition, you can activate internal trading (cross trading recognition) here by setting internal_trading to \"default_yes\" or \"default_no\" (which sets the default value for the \"internal trading\" parameter in POST /orders). Set to \"inactive\" to fully deactivate this feature (which will lead to the server ignoring the corresponding parameter in the orders). If set to \"inactive\", an error is returned when sending orders with \"internal_trading\" set to TRUE. **Note:** There is no cross-trade recognition for user defined block orders, linked orders and for iceberg orders with a peak-price-delta that is not equal to 0.  The parameter \"restrict_safe_mode\" defines which API keys can toggle the market mode via PUT /market/mode. If set to false, all master API keys, tenant master API keys and API keys with the 'can_trade' attribute set to true can toggle the market mode. If set to true, only master API keys are allowed to set the mode. **Heads up** - The scope of the safe mode includes ALL exchanges for the instance. However, it is not possible to immediately remove all orders from other exchanges, and there might be a small delay.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.market_options import MarketOptions
from powerbot_client.models.market_status import MarketStatus
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)
    credentials = powerbot_client.MarketOptions() # MarketOptions | 

    try:
        # Set exchange options
        api_response = api_instance.set_market_options(credentials)
        print("The response of MarketApi->set_market_options:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MarketApi->set_market_options: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**MarketOptions**](MarketOptions.md)|  | 

### Return type

[**MarketStatus**](MarketStatus.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **switch_mode**
> switch_mode(value, include_external_orders=include_external_orders)

Toggle market mode

Safe mode (emergency stop) has the following effects:  * all algorithm instances are stopped and can't be started  * all active orders are deleted from the market  * order entry / modification is disabled  * trades can still be recalled  This method is accessible to all master API keys, tenant master API keys and API keys with the 'can_trade' attribute set to true. If 'restrict_safe_mode' is enabled in the market options, only master API keys are allowed to set the mode. **Heads up** - The scope of the safe mode includes ALL exchanges for the instance. However, it is not possible to immediately remove all orders from other exchanges, and there might be a small delay.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.market_mode import MarketMode
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.MarketApi(api_client)
    value = powerbot_client.MarketMode() # MarketMode | 
    include_external_orders = True # bool | If set to true, PowerBot will also delete orders that were not created through PowerBot, for example orders from ComTrader. (optional) (default to True)

    try:
        # Toggle market mode
        api_instance.switch_mode(value, include_external_orders=include_external_orders)
    except Exception as e:
        print("Exception when calling MarketApi->switch_mode: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**MarketMode**](MarketMode.md)|  | 
 **include_external_orders** | **bool**| If set to true, PowerBot will also delete orders that were not created through PowerBot, for example orders from ComTrader. | [optional] [default to True]

### Return type

void (empty response body)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

