# powerbot_client.AuthenticationApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_api_key**](AuthenticationApi.md#add_api_key) | **POST** /api-keys | Create API key
[**delete_api_key**](AuthenticationApi.md#delete_api_key) | **DELETE** /api-key/{name} | Delete API key
[**get_api_keys**](AuthenticationApi.md#get_api_keys) | **GET** /api-keys | List API keys
[**get_current_api_key_portfolios**](AuthenticationApi.md#get_current_api_key_portfolios) | **GET** /api-key | Get API key settings
[**update_api_key**](AuthenticationApi.md#update_api_key) | **PUT** /api-key/{name} | Rename API key
[**update_api_key_portfolios**](AuthenticationApi.md#update_api_key_portfolios) | **PUT** /api-key/{name}/portfolios | Change API key portfolio access


# **add_api_key**
> ApiKey add_api_key(value, x_exchange_password=x_exchange_password)

Create API key

Use this method to generate a new API key for access to the system, e.g. for your trading algorithms, dashboard users or deal capture system. Requires that you are authenticated with your master-API-key or a tenant-master-API-key. Please note that you need to create an API key when getting started, as master-API-keys cannot be used for trading.  You can create different types of API keys with this method - A standard-API-key needs to have a name and a type and belong to a tenant. In addition, an API key **can** be limited to a number of portfolios. Also you can control if the API key is allowed to actively trade, read the order book or to create new signals. - Tenant-master-API-key is an administrator API key you can give to a tenant, which can use it to create own portfolios and standard-API-keys. - Scheduling-API-key is a special key for deal capture and scheduling, which can retrieve all trades of all tenants and generate reports, but nothing else. The txt-field in orders and trades is hidden from this type of API key.  If you are creating API keys using the master-API-key, you need to confirm this action using your exchange user password due to security reasons (you need to be in possession of the master-API-key and the exchange user password to create a key to trade).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.api_key import ApiKey
from powerbot_client.models.new_api_key import NewApiKey
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
    api_instance = powerbot_client.AuthenticationApi(api_client)
    value = powerbot_client.NewApiKey() # NewApiKey | 
    x_exchange_password = 'x_exchange_password_example' # str | Password for the exchange user the server is using to connect to the exchange - **ONLY REQUIRED IN PRODUCTION and if you are connected with a master-API-key** (optional)

    try:
        # Create API key
        api_response = api_instance.add_api_key(value, x_exchange_password=x_exchange_password)
        print("The response of AuthenticationApi->add_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuthenticationApi->add_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**NewApiKey**](NewApiKey.md)|  | 
 **x_exchange_password** | **str**| Password for the exchange user the server is using to connect to the exchange - **ONLY REQUIRED IN PRODUCTION and if you are connected with a master-API-key** | [optional] 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**409** | An API key with the provided name already exists. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_api_key**
> delete_api_key(name)

Delete API key

Use this method to delete an API key with a given name. You need to use the master-API-key or the tenant-master-API-key to call this method.

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
    api_instance = powerbot_client.AuthenticationApi(api_client)
    name = 'name_example' # str | Name of API key

    try:
        # Delete API key
        api_instance.delete_api_key(name)
    except Exception as e:
        print("Exception when calling AuthenticationApi->delete_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of API key | 

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
**204** | Success |  -  |
**404** | No API key for the given name was found. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_api_keys**
> List[ApiKeyDetails] get_api_keys()

List API keys

You can use this method to list the name of all API keys that where created and you have access to.  Please note that this method will return only the name, description and type of the API keys, not the key itself (which are encrypted and can't be restored)

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.api_key_details import ApiKeyDetails
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
    api_instance = powerbot_client.AuthenticationApi(api_client)

    try:
        # List API keys
        api_response = api_instance.get_api_keys()
        print("The response of AuthenticationApi->get_api_keys:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuthenticationApi->get_api_keys: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[ApiKeyDetails]**](ApiKeyDetails.md)

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

# **get_current_api_key_portfolios**
> ApiKeyDetails get_current_api_key_portfolios()

Get API key settings

Returns the base data, the available portfolios and the risk settings for the API key you are using.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.api_key_details import ApiKeyDetails
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
    api_instance = powerbot_client.AuthenticationApi(api_client)

    try:
        # Get API key settings
        api_response = api_instance.get_current_api_key_portfolios()
        print("The response of AuthenticationApi->get_current_api_key_portfolios:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuthenticationApi->get_current_api_key_portfolios: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiKeyDetails**](ApiKeyDetails.md)

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

# **update_api_key**
> update_api_key(name, value)

Rename API key

Update the base data (name) of an API key

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.updated_api_key import UpdatedApiKey
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
    api_instance = powerbot_client.AuthenticationApi(api_client)
    name = 'name_example' # str | name of the API key
    value = powerbot_client.UpdatedApiKey() # UpdatedApiKey | 

    try:
        # Rename API key
        api_instance.update_api_key(name, value)
    except Exception as e:
        print("Exception when calling AuthenticationApi->update_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| name of the API key | 
 **value** | [**UpdatedApiKey**](UpdatedApiKey.md)|  | 

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

# **update_api_key_portfolios**
> update_api_key_portfolios(name, portfolio_access_change)

Change API key portfolio access

Allows you to change the portfolios to which the API key has access to (you need to use the master-API-key or tenant-master-API-key to call this method).  **Heads up** - If the list of portfolios is empty, the API key has access to all portfolios to which the tenant has access to (portfolios are inherited).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.api_key_portfolio_update import ApiKeyPortfolioUpdate
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
    api_instance = powerbot_client.AuthenticationApi(api_client)
    name = 'name_example' # str | Name of API key
    portfolio_access_change = powerbot_client.ApiKeyPortfolioUpdate() # ApiKeyPortfolioUpdate | 

    try:
        # Change API key portfolio access
        api_instance.update_api_key_portfolios(name, portfolio_access_change)
    except Exception as e:
        print("Exception when calling AuthenticationApi->update_api_key_portfolios: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of API key | 
 **portfolio_access_change** | [**ApiKeyPortfolioUpdate**](ApiKeyPortfolioUpdate.md)|  | 

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

