# powerbot_client.MessagesApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_messages**](MessagesApi.md#get_messages) | **GET** /messages | Get exchange communication history


# **get_messages**
> List[Message] get_messages(offset=offset, limit=limit, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp, message_class_is=message_class_is, message_class_is_not=message_class_is_not, correlation_id=correlation_id, sort_by=sort_by)

Get exchange communication history

Deprecated: this operation will be removed in the near future  Allows you to retrieve communication from the exchange's backend system with the trading server backend for debugging purposes. Only master-API-keys can call this method.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.message import Message
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
    api_instance = powerbot_client.MessagesApi(api_client)
    offset = 0 # int | Offset when loading a list of items (optional) (default to 0)
    limit = 150 # int | Limits the number of loaded items (optional) (default to 150)
    from_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=) (optional)
    to_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <) (optional)
    message_class_is = 'message_class_is_example' # str | A comma separated list of message classes. You can either use the fully qualified name (e.g. com.deutscheboerse.m7.trading.api.v6.PblcOrdrBooksDeltaRprt) or parts of it (e.g. PblcOrdrBooksDeltaRprt) (optional)
    message_class_is_not = 'message_class_is_not_example' # str |  (optional)
    correlation_id = 'correlation_id_example' # str |  (optional)
    sort_by = 'time ASC' # str |  (optional) (default to 'time ASC')

    try:
        # Get exchange communication history
        api_response = api_instance.get_messages(offset=offset, limit=limit, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp, message_class_is=message_class_is, message_class_is_not=message_class_is_not, correlation_id=correlation_id, sort_by=sort_by)
        print("The response of MessagesApi->get_messages:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MessagesApi->get_messages: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Offset when loading a list of items | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded items | [optional] [default to 150]
 **from_api_timestamp** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;) | [optional] 
 **to_api_timestamp** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;) | [optional] 
 **message_class_is** | **str**| A comma separated list of message classes. You can either use the fully qualified name (e.g. com.deutscheboerse.m7.trading.api.v6.PblcOrdrBooksDeltaRprt) or parts of it (e.g. PblcOrdrBooksDeltaRprt) | [optional] 
 **message_class_is_not** | **str**|  | [optional] 
 **correlation_id** | **str**|  | [optional] 
 **sort_by** | **str**|  | [optional] [default to &#39;time ASC&#39;]

### Return type

[**List[Message]**](Message.md)

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

