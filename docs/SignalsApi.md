# powerbot_client.SignalsApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_signals**](SignalsApi.md#delete_signals) | **DELETE** /signals/{source}/{delivery_start}/{delivery_end} | Delete signals
[**delete_time_slice**](SignalsApi.md#delete_time_slice) | **DELETE** /trading-signal/{source}/{delivery_area}/{portfolio_id}/{delivery_start}/{delivery_end}/{minutes_to_delivery} | Delete a time slice
[**delete_trading_signal**](SignalsApi.md#delete_trading_signal) | **DELETE** /trading-signal/{source}/{delivery_area}/{portfolio_id}/{delivery_start}/{delivery_end} | Delete a trading signal
[**find_trading_signals**](SignalsApi.md#find_trading_signals) | **GET** /trading-signals | Find trading signals
[**get_signals**](SignalsApi.md#get_signals) | **GET** /signals | List signals
[**get_signals_history**](SignalsApi.md#get_signals_history) | **GET** /signals/history | List signals history
[**get_sources_durations**](SignalsApi.md#get_sources_durations) | **GET** /trading-signals/sources | Get sources and durations
[**save_trading_signals**](SignalsApi.md#save_trading_signals) | **PUT** /trading-signals | Save trading signals
[**update_signals**](SignalsApi.md#update_signals) | **POST** /signals | Add signals


# **delete_signals**
> delete_signals(source, delivery_start, delivery_end, delivery_areas=delivery_areas, portfolio_id=portfolio_id, exact=exact)

Delete signals

DEPRECATED. Signals are replaced by Trading Signals. Allows you to delete signals. By setting the optional delivery_areas and/or portfolio_ids parameters, you can delete signals for selected cases only. Without specifying these parameters, the signal is removed completely. **Heads up** The \"source\" of a signal containing position_long and position_short is always \"POSITION\".

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
    api_instance = powerbot_client.SignalsApi(api_client)
    source = 'source_example' # str | 
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | 
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | 
    delivery_areas = [] # List[str] |  (optional) (default to [])
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    exact = False # bool | only delete signals matching `delivery_start` and `delivery_end` exactly (optional) (default to False)

    try:
        # Delete signals
        api_instance.delete_signals(source, delivery_start, delivery_end, delivery_areas=delivery_areas, portfolio_id=portfolio_id, exact=exact)
    except Exception as e:
        print("Exception when calling SignalsApi->delete_signals: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **str**|  | 
 **delivery_start** | **datetime**|  | 
 **delivery_end** | **datetime**|  | 
 **delivery_areas** | [**List[str]**](str.md)|  | [optional] [default to []]
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **exact** | **bool**| only delete signals matching &#x60;delivery_start&#x60; and &#x60;delivery_end&#x60; exactly | [optional] [default to False]

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
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_time_slice**
> delete_time_slice(source, delivery_area, portfolio_id, delivery_start, delivery_end, minutes_to_delivery)

Delete a time slice

Deletes a single time slice of a trading signal. Will not increase the revision of a time slice.

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
    api_instance = powerbot_client.SignalsApi(api_client)
    source = 'source_example' # str | The source of the signal
    delivery_area = 'delivery_area_example' # str | The delivery area of the signal
    portfolio_id = 'portfolio_id_example' # str | The portfolio ID of the signal
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | The delivery start of the signal
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | The delivery end of the signal
    minutes_to_delivery = 56 # int | The offset until delivery start

    try:
        # Delete a time slice
        api_instance.delete_time_slice(source, delivery_area, portfolio_id, delivery_start, delivery_end, minutes_to_delivery)
    except Exception as e:
        print("Exception when calling SignalsApi->delete_time_slice: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **str**| The source of the signal | 
 **delivery_area** | **str**| The delivery area of the signal | 
 **portfolio_id** | **str**| The portfolio ID of the signal | 
 **delivery_start** | **datetime**| The delivery start of the signal | 
 **delivery_end** | **datetime**| The delivery end of the signal | 
 **minutes_to_delivery** | **int**| The offset until delivery start | 

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
**404** | No such signal |  -  |
**409** | Concurrent access to the same signal |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_trading_signal**
> delete_trading_signal(source, delivery_area, portfolio_id, delivery_start, delivery_end)

Delete a trading signal

Delete a trading signal with all of its time slices, meaning all signals which have the same source, delivery area, portfolio ID and delivery period. Deletion will not increase the revision of a time slice.

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
    api_instance = powerbot_client.SignalsApi(api_client)
    source = 'source_example' # str | The source of the signal
    delivery_area = 'delivery_area_example' # str | The delivery area of the signal
    portfolio_id = 'portfolio_id_example' # str | The portfolio ID of the signal
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | The delivery start of the signal
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | The delivery end of the signal

    try:
        # Delete a trading signal
        api_instance.delete_trading_signal(source, delivery_area, portfolio_id, delivery_start, delivery_end)
    except Exception as e:
        print("Exception when calling SignalsApi->delete_trading_signal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **str**| The source of the signal | 
 **delivery_area** | **str**| The delivery area of the signal | 
 **portfolio_id** | **str**| The portfolio ID of the signal | 
 **delivery_start** | **datetime**| The delivery start of the signal | 
 **delivery_end** | **datetime**| The delivery end of the signal | 

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
**404** | No such signal |  -  |
**409** | Concurrent access to the same signal |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_trading_signals**
> SignalSearchResult find_trading_signals(delivery_area, portfolio_id, source=source, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to, minutes_to_delivery_gte=minutes_to_delivery_gte, minutes_to_delivery_lte=minutes_to_delivery_lte, received_from=received_from, received_to=received_to, revision_from=revision_from, revision_to=revision_to, offset=offset, limit=limit, include_historic=include_historic, include_deleted=include_deleted, active_only=active_only)

Find trading signals

Retrieves trading signals based on the given filter criteria. This endpoint also provides historic signal data when the `include_historic` parameter is set to true. The response object will contain the list of all unique sources and the actual signals, grouped by their source, delivery area, portfolio ID and delivery period. Signals will be sorted in ascending order by the aforementioned parameters — time slices are in descending order based on their minutes to delivery. Note that you have to either specify 'delivery_start' and 'delivery_end' or 'delivery_from' and 'delivery_to'. The maximum timespan is limited to 48 hours.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.signal_search_result import SignalSearchResult
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
    api_instance = powerbot_client.SignalsApi(api_client)
    delivery_area = 'delivery_area_example' # str | The delivery area of the trading signal.
    portfolio_id = 'portfolio_id_example' # str | The portfolio ID of the trading signal.
    source = 'source_example' # str | The source of the trading signal. (optional)
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | The 'delivery_start' of the signal in UTC. Has be used together with 'delivery_end' and cannot be combined with 'delivery_from' or 'delivery_to'. (optional)
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | The 'delivery_end' of the signal in UTC. Has be used together with 'delivery_start' and cannot be combined with 'delivery_from' or 'delivery_to'. (optional)
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | Limit trading signals to those that have a 'delivery_start' greater or equal to the given value. Has be used together with 'delivery_to' and cannot be combined with 'delivery_start' or 'delivery_end'. The maximum timespan is limited to 48 hours. (optional)
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | Limit trading signals to those that have a delivery end less than or equal to the given value. Has be used together with 'delivery_from' and cannot be combined with 'delivery_start' or 'delivery_end'. The maximum timespan is limited to 48 hours. (optional)
    minutes_to_delivery_gte = 56 # int | The value of `minutes_to_delivery` which is greater than or equal to input parameter. Has to be used together with `minutes_to_delivery_lte` and cannot be combined with `active_only`. (optional)
    minutes_to_delivery_lte = 56 # int | The value of `minutes_to_delivery` which is less than or equal to input parameter. Has to be used together with `minutes_to_delivery_gte` and cannot be combined with `active_only`. (optional)
    received_from = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=), use UTC timezone (optional)
    received_to = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <), use UTC timezone (optional)
    revision_from = 56 # int | The starting revision from 0 (optional)
    revision_to = 56 # int | The ending revision (non-inclusive) (optional)
    offset = 0 # int | Offset when loading a list of items. (optional) (default to 0)
    limit = 150 # int | Limits the number of loaded items. (optional) (default to 150)
    include_historic = False # bool | Setting this to `true` will also return old (overwritten) signal revisions. Cannot be combined with `active_only=true`. (optional) (default to False)
    include_deleted = False # bool | Setting this to `true` will also return deleted time slices. Cannot be combined with `active_only=true`. (optional) (default to False)
    active_only = True # bool | Filter for only currently active time slices. Cannot be combined with `include_historic=true`. (optional) (default to True)

    try:
        # Find trading signals
        api_response = api_instance.find_trading_signals(delivery_area, portfolio_id, source=source, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to, minutes_to_delivery_gte=minutes_to_delivery_gte, minutes_to_delivery_lte=minutes_to_delivery_lte, received_from=received_from, received_to=received_to, revision_from=revision_from, revision_to=revision_to, offset=offset, limit=limit, include_historic=include_historic, include_deleted=include_deleted, active_only=active_only)
        print("The response of SignalsApi->find_trading_signals:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SignalsApi->find_trading_signals: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_area** | **str**| The delivery area of the trading signal. | 
 **portfolio_id** | **str**| The portfolio ID of the trading signal. | 
 **source** | **str**| The source of the trading signal. | [optional] 
 **delivery_start** | **datetime**| The &#39;delivery_start&#39; of the signal in UTC. Has be used together with &#39;delivery_end&#39; and cannot be combined with &#39;delivery_from&#39; or &#39;delivery_to&#39;. | [optional] 
 **delivery_end** | **datetime**| The &#39;delivery_end&#39; of the signal in UTC. Has be used together with &#39;delivery_start&#39; and cannot be combined with &#39;delivery_from&#39; or &#39;delivery_to&#39;. | [optional] 
 **delivery_from** | **datetime**| Limit trading signals to those that have a &#39;delivery_start&#39; greater or equal to the given value. Has be used together with &#39;delivery_to&#39; and cannot be combined with &#39;delivery_start&#39; or &#39;delivery_end&#39;. The maximum timespan is limited to 48 hours. | [optional] 
 **delivery_to** | **datetime**| Limit trading signals to those that have a delivery end less than or equal to the given value. Has be used together with &#39;delivery_from&#39; and cannot be combined with &#39;delivery_start&#39; or &#39;delivery_end&#39;. The maximum timespan is limited to 48 hours. | [optional] 
 **minutes_to_delivery_gte** | **int**| The value of &#x60;minutes_to_delivery&#x60; which is greater than or equal to input parameter. Has to be used together with &#x60;minutes_to_delivery_lte&#x60; and cannot be combined with &#x60;active_only&#x60;. | [optional] 
 **minutes_to_delivery_lte** | **int**| The value of &#x60;minutes_to_delivery&#x60; which is less than or equal to input parameter. Has to be used together with &#x60;minutes_to_delivery_gte&#x60; and cannot be combined with &#x60;active_only&#x60;. | [optional] 
 **received_from** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;), use UTC timezone | [optional] 
 **received_to** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;), use UTC timezone | [optional] 
 **revision_from** | **int**| The starting revision from 0 | [optional] 
 **revision_to** | **int**| The ending revision (non-inclusive) | [optional] 
 **offset** | **int**| Offset when loading a list of items. | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded items. | [optional] [default to 150]
 **include_historic** | **bool**| Setting this to &#x60;true&#x60; will also return old (overwritten) signal revisions. Cannot be combined with &#x60;active_only&#x3D;true&#x60;. | [optional] [default to False]
 **include_deleted** | **bool**| Setting this to &#x60;true&#x60; will also return deleted time slices. Cannot be combined with &#x60;active_only&#x3D;true&#x60;. | [optional] [default to False]
 **active_only** | **bool**| Filter for only currently active time slices. Cannot be combined with &#x60;include_historic&#x3D;true&#x60;. | [optional] [default to True]

### Return type

[**SignalSearchResult**](SignalSearchResult.md)

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

# **get_signals**
> List[Signal] get_signals(portfolio_id=portfolio_id, offset=offset, limit=limit, received_from=received_from, received_to=received_to, delivery_area=delivery_area, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to)

List signals

DEPRECATED. Signals are replaced by Trading Signals. Allows you to retrieve signals you have previously sent to the system.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.signal import Signal
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
    api_instance = powerbot_client.SignalsApi(api_client)
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    offset = 0 # int | Offset when loading a list of items (optional) (default to 0)
    limit = 150 # int | Limits the number of loaded items (optional) (default to 150)
    received_from = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=), use UTC timezone (optional)
    received_to = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <), use UTC timezone (optional)
    delivery_area = 'delivery_area_example' # str | filter by delivery area (optional)
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | filter by delivery_start, use UTC timezone (optional)
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | filter by delivery_end, use UTC timezone (optional)
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | limit signals to those that have a delivery start greater or equal to the given value (optional)
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | limit signals to those that have a delivery end less than or equal to the given value (optional)

    try:
        # List signals
        api_response = api_instance.get_signals(portfolio_id=portfolio_id, offset=offset, limit=limit, received_from=received_from, received_to=received_to, delivery_area=delivery_area, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to)
        print("The response of SignalsApi->get_signals:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SignalsApi->get_signals: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **offset** | **int**| Offset when loading a list of items | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded items | [optional] [default to 150]
 **received_from** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;), use UTC timezone | [optional] 
 **received_to** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;), use UTC timezone | [optional] 
 **delivery_area** | **str**| filter by delivery area | [optional] 
 **delivery_start** | **datetime**| filter by delivery_start, use UTC timezone | [optional] 
 **delivery_end** | **datetime**| filter by delivery_end, use UTC timezone | [optional] 
 **delivery_from** | **datetime**| limit signals to those that have a delivery start greater or equal to the given value | [optional] 
 **delivery_to** | **datetime**| limit signals to those that have a delivery end less than or equal to the given value | [optional] 

### Return type

[**List[Signal]**](Signal.md)

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

# **get_signals_history**
> List[Signal] get_signals_history(portfolio_id=portfolio_id, offset=offset, limit=limit, received_from=received_from, received_to=received_to, delivery_area=delivery_area, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to, source=source, revision_from=revision_from, revision_to=revision_to)

List signals history

DEPRECATED. Signals are replaced by Trading Signals. Allows you to retrieve the signal history.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.signal import Signal
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
    api_instance = powerbot_client.SignalsApi(api_client)
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    offset = 0 # int | Offset when loading a list of items (optional) (default to 0)
    limit = 150 # int | Limits the number of loaded items (optional) (default to 150)
    received_from = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=), use UTC timezone (optional)
    received_to = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <), use UTC timezone (optional)
    delivery_area = 'delivery_area_example' # str | filter by delivery area (optional)
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | filter by delivery_start, use UTC timezone (optional)
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | filter by delivery_end, use UTC timezone (optional)
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | limit signals to those that have a delivery start greater or equal to the given value (optional)
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | limit signals to those that have a delivery end less than or equal to the given value (optional)
    source = 'source_example' # str | filter by signal source (optional)
    revision_from = 56 # int | limit to revisions greater or equal to the given value (optional)
    revision_to = 56 # int | limit to revisions greater or equal to the given value (optional)

    try:
        # List signals history
        api_response = api_instance.get_signals_history(portfolio_id=portfolio_id, offset=offset, limit=limit, received_from=received_from, received_to=received_to, delivery_area=delivery_area, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to, source=source, revision_from=revision_from, revision_to=revision_to)
        print("The response of SignalsApi->get_signals_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SignalsApi->get_signals_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **offset** | **int**| Offset when loading a list of items | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded items | [optional] [default to 150]
 **received_from** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;), use UTC timezone | [optional] 
 **received_to** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;), use UTC timezone | [optional] 
 **delivery_area** | **str**| filter by delivery area | [optional] 
 **delivery_start** | **datetime**| filter by delivery_start, use UTC timezone | [optional] 
 **delivery_end** | **datetime**| filter by delivery_end, use UTC timezone | [optional] 
 **delivery_from** | **datetime**| limit signals to those that have a delivery start greater or equal to the given value | [optional] 
 **delivery_to** | **datetime**| limit signals to those that have a delivery end less than or equal to the given value | [optional] 
 **source** | **str**| filter by signal source | [optional] 
 **revision_from** | **int**| limit to revisions greater or equal to the given value | [optional] 
 **revision_to** | **int**| limit to revisions greater or equal to the given value | [optional] 

### Return type

[**List[Signal]**](Signal.md)

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

# **get_sources_durations**
> List[SignalSourceDurations] get_sources_durations(delivery_area, portfolio_id, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to, minutes_to_delivery_gte=minutes_to_delivery_gte, minutes_to_delivery_lte=minutes_to_delivery_lte, received_from=received_from, received_to=received_to, revision_from=revision_from, revision_to=revision_to)

Get sources and durations

Retrieves all unique sources and durations of a trading signals delivery period. Note that you have to either specify 'delivery_start' and 'delivery_end' or 'delivery_from' and 'delivery_to'. The maximum timespan is limited to 48 hours.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.signal_source_durations import SignalSourceDurations
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
    api_instance = powerbot_client.SignalsApi(api_client)
    delivery_area = 'delivery_area_example' # str | The delivery area of the trading signal.
    portfolio_id = 'portfolio_id_example' # str | The portfolio ID of the trading signal.
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | filter by delivery_start, use UTC timezone (optional)
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | filter by delivery_end, use UTC timezone (optional)
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | limit signals to those that have a delivery start greater or equal to the given value (optional)
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | limit signals to those that have a delivery end less than or equal to the given value (optional)
    minutes_to_delivery_gte = 56 # int | The value of `minutes_to_delivery` which is greater than or equal to input parameter. Has to be used together with `minutes_to_delivery_lte` and cannot be combined with `active_only`. (optional)
    minutes_to_delivery_lte = 56 # int | The value of `minutes_to_delivery` which is less than or equal to input parameter. Has to be used together with `minutes_to_delivery_gte` and cannot be combined with `active_only`. (optional)
    received_from = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=), use UTC timezone (optional)
    received_to = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <), use UTC timezone (optional)
    revision_from = 56 # int | The starting revision from 0 (optional)
    revision_to = 56 # int | The ending revision (non-inclusive) (optional)

    try:
        # Get sources and durations
        api_response = api_instance.get_sources_durations(delivery_area, portfolio_id, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to, minutes_to_delivery_gte=minutes_to_delivery_gte, minutes_to_delivery_lte=minutes_to_delivery_lte, received_from=received_from, received_to=received_to, revision_from=revision_from, revision_to=revision_to)
        print("The response of SignalsApi->get_sources_durations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SignalsApi->get_sources_durations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_area** | **str**| The delivery area of the trading signal. | 
 **portfolio_id** | **str**| The portfolio ID of the trading signal. | 
 **delivery_start** | **datetime**| filter by delivery_start, use UTC timezone | [optional] 
 **delivery_end** | **datetime**| filter by delivery_end, use UTC timezone | [optional] 
 **delivery_from** | **datetime**| limit signals to those that have a delivery start greater or equal to the given value | [optional] 
 **delivery_to** | **datetime**| limit signals to those that have a delivery end less than or equal to the given value | [optional] 
 **minutes_to_delivery_gte** | **int**| The value of &#x60;minutes_to_delivery&#x60; which is greater than or equal to input parameter. Has to be used together with &#x60;minutes_to_delivery_lte&#x60; and cannot be combined with &#x60;active_only&#x60;. | [optional] 
 **minutes_to_delivery_lte** | **int**| The value of &#x60;minutes_to_delivery&#x60; which is less than or equal to input parameter. Has to be used together with &#x60;minutes_to_delivery_gte&#x60; and cannot be combined with &#x60;active_only&#x60;. | [optional] 
 **received_from** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;), use UTC timezone | [optional] 
 **received_to** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;), use UTC timezone | [optional] 
 **revision_from** | **int**| The starting revision from 0 | [optional] 
 **revision_to** | **int**| The ending revision (non-inclusive) | [optional] 

### Return type

[**List[SignalSourceDurations]**](SignalSourceDurations.md)

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

# **save_trading_signals**
> SignalEntryResponse save_trading_signals(signal_entry, ignore_lock=ignore_lock, delete_related=delete_related, algorithm_id=algorithm_id, disable_history=disable_history)

Save trading signals

This endpoint allows you to add or update trading signals. A trading signal can consist of multiple time slices, each with its individual validity period and set of parameters. The validity of a time slice is defined by an offset (in minutes) relative to the respective delivery start. For each trading signal only one time slice can be active at any given point in time. For a time slice to be considered active, the current time to delivery start must have passed the offset configuration. Moreover, only the time slice closest to the current time takes effect. For instance, suppose a trading signal has two time slices with their respective offsets set to 45 and 75 minutes relative to delivery start. Assuming that there are still 60 minutes until delivery start, then the active time slice would be one with an offset of 75 minutes. Eventually, as the time to delivery start passes the 45 minute mark the active time slice is switched.  Sending multiple time slices with the same offset is not allowed and will return an error message for each time slice affected. When sending multiple time slices, you can use the `delete_related` parameter to remove existing related time slices. Related time slices in this context are defined as those which have the same source, area, portfolio ID and delivery period. Only unlocked slices will be deleted when set. Updating the parameters of an existing time slice always completely override existing data.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.signal_entry import SignalEntry
from powerbot_client.models.signal_entry_response import SignalEntryResponse
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
    api_instance = powerbot_client.SignalsApi(api_client)
    signal_entry = [powerbot_client.SignalEntry()] # List[SignalEntry] | Signal payload
    ignore_lock = False # bool | Setting this parameter to true allows for modification of locked signals. Unlocking a signal also requires this parameter to be true. (optional) (default to False)
    delete_related = False # bool | Set this to `true`, if related slices, meaning slices with the same source, delivery area, portfolio ID and delivery period should be overridden and replaced by the newly sent items. (optional) (default to False)
    algorithm_id = 'algorithm_id_example' # str | The algorithm associated with the posted signals. When set, the parameters of the signals will be validated against the schema of the algorithm. (optional)
    disable_history = False # bool | Setting this value to true disables the persistence and historization feature for signals, meaning that only the latest revisions of updated signals will be stored. We strongly encourage you to enable this if you plan on submitting more than a few dozen revisions per signal source, as it improves performance of subsequent requests that use signals significantly. (optional) (default to False)

    try:
        # Save trading signals
        api_response = api_instance.save_trading_signals(signal_entry, ignore_lock=ignore_lock, delete_related=delete_related, algorithm_id=algorithm_id, disable_history=disable_history)
        print("The response of SignalsApi->save_trading_signals:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SignalsApi->save_trading_signals: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signal_entry** | [**List[SignalEntry]**](SignalEntry.md)| Signal payload | 
 **ignore_lock** | **bool**| Setting this parameter to true allows for modification of locked signals. Unlocking a signal also requires this parameter to be true. | [optional] [default to False]
 **delete_related** | **bool**| Set this to &#x60;true&#x60;, if related slices, meaning slices with the same source, delivery area, portfolio ID and delivery period should be overridden and replaced by the newly sent items. | [optional] [default to False]
 **algorithm_id** | **str**| The algorithm associated with the posted signals. When set, the parameters of the signals will be validated against the schema of the algorithm. | [optional] 
 **disable_history** | **bool**| Setting this value to true disables the persistence and historization feature for signals, meaning that only the latest revisions of updated signals will be stored. We strongly encourage you to enable this if you plan on submitting more than a few dozen revisions per signal source, as it improves performance of subsequent requests that use signals significantly. | [optional] [default to False]

### Return type

[**SignalEntryResponse**](SignalEntryResponse.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**409** | Concurrent access to the same signal |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_signals**
> List[BulkSignalResponse] update_signals(value, ignore_lock=ignore_lock)

Add signals

DEPRECATED. Signals are replaced by Trading Signals. Any request to this endpoint will also add a trading signal with a offset from now until delivery start. Allows you to send trading signals to the system, e.g. positions, fundamental data, weather data or outputs of an optimization software. This data is then aligned to contracts at the market and delivered with the orderbook. This way, trading signals are automatically archived for ex-post analysis and algorithms do not need to import data themselves. In addition, signals are displayed in the dashboard.  This methods can receive a collection of signals at once and each signal has a freely defined source (e.g. ETRM_system).  Note that it is not possible to post signals for a defined contract. All contracts which have the specified \"delivery_start\" and \"delivery_end\" field will receive the signal (e.g. XBID and local contracts), limited to the specified delivery areas and portfolios.  A signal can contain EITHER a position_long and position_short (the MWs to be traded, both need to be equal or greater than zero) OR a freely defined JSON object containing key/value pairs, but not both at once.  **Heads up** The \"source\" of a signal containing position_long and position_short will always be \"POSITION\", no matter what is defined in the request body.  * \"position_long\" indicates the surplus in MW that should or can be sold at the market (equal or greater than zero)  * \"position_short\" indicates the deficiency in MW that should or can be bought at the market (equal or greater than zero)  * \"value\" should contain the freely defined JSON object with key/value pairs. Please be aware that a signal-key for each contract is unique and data is overwritten, if sent from multiple sources.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.bulk_signal import BulkSignal
from powerbot_client.models.bulk_signal_response import BulkSignalResponse
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
    api_instance = powerbot_client.SignalsApi(api_client)
    value = [powerbot_client.BulkSignal()] # List[BulkSignal] | Signals payload
    ignore_lock = False # bool | Setting this parameter to true allows for modification of locked signals. Unlocking a signal also requires this parameter to be true. (optional) (default to False)

    try:
        # Add signals
        api_response = api_instance.update_signals(value, ignore_lock=ignore_lock)
        print("The response of SignalsApi->update_signals:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SignalsApi->update_signals: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**List[BulkSignal]**](BulkSignal.md)| Signals payload | 
 **ignore_lock** | **bool**| Setting this parameter to true allows for modification of locked signals. Unlocking a signal also requires this parameter to be true. | [optional] [default to False]

### Return type

[**List[BulkSignalResponse]**](BulkSignalResponse.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**409** | Concurrent access to the same signal |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

