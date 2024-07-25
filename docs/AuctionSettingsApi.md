# powerbot_client.AuctionSettingsApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_settings**](AuctionSettingsApi.md#get_settings) | **GET** /auction/settings | Get settings
[**save_settings**](AuctionSettingsApi.md#save_settings) | **PUT** /auction/settings | Save settings


# **get_settings**
> AuctionSettings get_settings()

Get settings

Get the current settings of the auction module.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_settings import AuctionSettings
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
    api_instance = powerbot_client.AuctionSettingsApi(api_client)

    try:
        # Get settings
        api_response = api_instance.get_settings()
        print("The response of AuctionSettingsApi->get_settings:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionSettingsApi->get_settings: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**AuctionSettings**](AuctionSettings.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | todo |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **save_settings**
> save_settings(save_settings=save_settings)

Save settings

Save the settings of the auction module.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.save_settings import SaveSettings
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
    api_instance = powerbot_client.AuctionSettingsApi(api_client)
    save_settings = powerbot_client.SaveSettings() # SaveSettings |  (optional)

    try:
        # Save settings
        api_instance.save_settings(save_settings=save_settings)
    except Exception as e:
        print("Exception when calling AuctionSettingsApi->save_settings: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **save_settings** | [**SaveSettings**](SaveSettings.md)|  | [optional] 

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
**204** | Successful save. |  -  |
**400** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

