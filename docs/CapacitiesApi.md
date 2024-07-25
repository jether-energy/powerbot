# powerbot_client.CapacitiesApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_capacities**](CapacitiesApi.md#get_capacities) | **GET** /capacities | Get Hub-to-ATC matrix from SIDC


# **get_capacities**
> List[Capacity] get_capacities(delivery_area, delivery_from, delivery_to, delivery_area_to=delivery_area_to)

Get Hub-to-ATC matrix from SIDC

The hub-to-hub matrix (capacity matrix) shows available transfer capacity (ATC) at requested delivery-areas in Europe that are connected via SIDC (XBID). Updates are sent every 30 seconds, containing parts of the matrix in varying size. Updates can also be received via web socket subscription. Please note that access to capacity data needs the be activated by market operations for your exchange API user and that you will only have access to borders of the delivery areas active in PowerBot. If you require access to other borders, please reach out to PowerBot support for manual activation.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.capacity import Capacity
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
    api_instance = powerbot_client.CapacitiesApi(api_client)
    delivery_area = ['delivery_area_example'] # List[str] | The EICs of the outgoing delivery area(s). Filter is applied to \"from_delivery_area\".
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | The beginning of the requested timeframe.
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | The end of the requested timeframe.
    delivery_area_to = [] # List[str] | The EICs of the incoming delivery area(s). Filter is applied to \"to_delivery_area\". (optional) (default to [])

    try:
        # Get Hub-to-ATC matrix from SIDC
        api_response = api_instance.get_capacities(delivery_area, delivery_from, delivery_to, delivery_area_to=delivery_area_to)
        print("The response of CapacitiesApi->get_capacities:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CapacitiesApi->get_capacities: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_area** | [**List[str]**](str.md)| The EICs of the outgoing delivery area(s). Filter is applied to \&quot;from_delivery_area\&quot;. | 
 **delivery_from** | **datetime**| The beginning of the requested timeframe. | 
 **delivery_to** | **datetime**| The end of the requested timeframe. | 
 **delivery_area_to** | [**List[str]**](str.md)| The EICs of the incoming delivery area(s). Filter is applied to \&quot;to_delivery_area\&quot;. | [optional] [default to []]

### Return type

[**List[Capacity]**](Capacity.md)

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

