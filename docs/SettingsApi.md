# powerbot_client.SettingsApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_ip_allowlist**](SettingsApi.md#get_ip_allowlist) | **GET** /settings/ip-allowlist | Get current IP allowlist
[**set_ip_allowlist**](SettingsApi.md#set_ip_allowlist) | **PUT** /settings/ip-allowlist | Set IP allowlist


# **get_ip_allowlist**
> List[IPAllowlistEntry] get_ip_allowlist()

Get current IP allowlist

Get the list of currently allowlisted IPs. An empty list means no filters (all IPs allowed).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.ip_allowlist_entry import IPAllowlistEntry
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
    api_instance = powerbot_client.SettingsApi(api_client)

    try:
        # Get current IP allowlist
        api_response = api_instance.get_ip_allowlist()
        print("The response of SettingsApi->get_ip_allowlist:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SettingsApi->get_ip_allowlist: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[IPAllowlistEntry]**](IPAllowlistEntry.md)

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

# **set_ip_allowlist**
> set_ip_allowlist(ip_allowlist_entry)

Set IP allowlist

Configure a list of IPs that are allowed to interact with PowerBot. Subnet masks are also supported. The configured list must include the IP that is sending the request to prevent accidentally locking yourself out. An empty list means no filters (all IPs allowed).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.ip_allowlist_entry import IPAllowlistEntry
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
    api_instance = powerbot_client.SettingsApi(api_client)
    ip_allowlist_entry = [powerbot_client.IPAllowlistEntry()] # List[IPAllowlistEntry] | 

    try:
        # Set IP allowlist
        api_instance.set_ip_allowlist(ip_allowlist_entry)
    except Exception as e:
        print("Exception when calling SettingsApi->set_ip_allowlist: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ip_allowlist_entry** | [**List[IPAllowlistEntry]**](IPAllowlistEntry.md)|  | 

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

