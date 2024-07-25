# powerbot_client.SubscriptionsApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_subscription_endpoints**](SubscriptionsApi.md#get_subscription_endpoints) | **GET** /subscriptions | List websocket endpoints


# **get_subscription_endpoints**
> List[SubscriptionEndpoint] get_subscription_endpoints()

List websocket endpoints

Allows you to retrieve a list of all possible websockets endpoints you can subscribe to. Please note that you need to use a different technology to do this, this method only provides a list for information purposes. The response models can be found in the full openAPI specification. Each websocket message contains a sequence number within the header, which can be utilized to check for missing messages. Note that this number resets on application restart. <p> You can test websocket subscriptions [here](https://websockets.powerbot-trading.com/)

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.subscription_endpoint import SubscriptionEndpoint
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
    api_instance = powerbot_client.SubscriptionsApi(api_client)

    try:
        # List websocket endpoints
        api_response = api_instance.get_subscription_endpoints()
        print("The response of SubscriptionsApi->get_subscription_endpoints:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SubscriptionsApi->get_subscription_endpoints: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[SubscriptionEndpoint]**](SubscriptionEndpoint.md)

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

