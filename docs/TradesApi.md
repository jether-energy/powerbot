# powerbot_client.TradesApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_internal_trade**](TradesApi.md#add_internal_trade) | **POST** /internal-trades | Add internal trade
[**get_internal_trades**](TradesApi.md#get_internal_trades) | **GET** /internal-trades | List internal trades
[**get_trades**](TradesApi.md#get_trades) | **GET** /trades | List external trades
[**recall_trade**](TradesApi.md#recall_trade) | **DELETE** /trade/{trade_id} | Recall external trade


# **add_internal_trade**
> InternalTrade add_internal_trade(new_internal_trade)

Add internal trade

This method allows you to manually register an internal trade between two portfolios. Internal trades are usually created by the system to prevent cross-trades, but this method allows you to register them manually.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.internal_trade import InternalTrade
from powerbot_client.models.new_internal_trade import NewInternalTrade
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
    api_instance = powerbot_client.TradesApi(api_client)
    new_internal_trade = powerbot_client.NewInternalTrade() # NewInternalTrade | 

    try:
        # Add internal trade
        api_response = api_instance.add_internal_trade(new_internal_trade)
        print("The response of TradesApi->add_internal_trade:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TradesApi->add_internal_trade: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_internal_trade** | [**NewInternalTrade**](NewInternalTrade.md)|  | 

### Return type

[**InternalTrade**](InternalTrade.md)

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

# **get_internal_trades**
> List[InternalTrade] get_internal_trades(portfolio_id=portfolio_id, offset=offset, limit=limit, internal_trade_id=internal_trade_id, contract_id=contract_id, from_execution_time=from_execution_time, to_execution_time=to_execution_time, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp, delivery_within_start=delivery_within_start, delivery_within_end=delivery_within_end, delivery_area=delivery_area, sort_by=sort_by)

List internal trades

List the internal trades you have carried out. Internal trades occur when the server detects a cross-trade between two of your orders and the option \"internal trading\" in market options is activated (either \"default_yes\" or \"default_no\").  The server checks for cross-trades before an order is sent to the market. If the order matches with one of your orders at the market, this order is (partially) taken from the market and the server registers an internal trade, for which an internal_trade_id is created.  It depends on the field \"internal trading\" being true for the orders involved and the setting internal_trading in market options not being set to inactive, if the server detects cross-trades.  As with GET /trades, this method allows you to filter for a wide range of parameters and uses pagination. Please be aware that you may see only one leg of the internal trade, if the other leg belongs to another tenant or portfolio.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.internal_trade import InternalTrade
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
    api_instance = powerbot_client.TradesApi(api_client)
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    offset = 0 # int | Offset when loading a list of items (optional) (default to 0)
    limit = 150 # int | Limits the number of loaded items (optional) (default to 150)
    internal_trade_id = 'internal_trade_id_example' # str | Filters request to only show the internal trade with this id (i.e. shows a single internal trade or none) (optional)
    contract_id = [] # List[str] | Show only those trades related to a specific contract (optional) (default to [])
    from_execution_time = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=) (optional)
    to_execution_time = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <) (optional)
    from_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=) (optional)
    to_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <) (optional)
    delivery_within_start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    delivery_within_end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    delivery_area = 'delivery_area_example' # str | The delivery area. (optional)
    sort_by = 'api_timestamp DESC' # str | Sorts by the given field and order. Separate multiple sorting options with a comma (\",\") (optional) (default to 'api_timestamp DESC')

    try:
        # List internal trades
        api_response = api_instance.get_internal_trades(portfolio_id=portfolio_id, offset=offset, limit=limit, internal_trade_id=internal_trade_id, contract_id=contract_id, from_execution_time=from_execution_time, to_execution_time=to_execution_time, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp, delivery_within_start=delivery_within_start, delivery_within_end=delivery_within_end, delivery_area=delivery_area, sort_by=sort_by)
        print("The response of TradesApi->get_internal_trades:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TradesApi->get_internal_trades: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **offset** | **int**| Offset when loading a list of items | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded items | [optional] [default to 150]
 **internal_trade_id** | **str**| Filters request to only show the internal trade with this id (i.e. shows a single internal trade or none) | [optional] 
 **contract_id** | [**List[str]**](str.md)| Show only those trades related to a specific contract | [optional] [default to []]
 **from_execution_time** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;) | [optional] 
 **to_execution_time** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;) | [optional] 
 **from_api_timestamp** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;) | [optional] 
 **to_api_timestamp** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;) | [optional] 
 **delivery_within_start** | **datetime**|  | [optional] 
 **delivery_within_end** | **datetime**|  | [optional] 
 **delivery_area** | **str**| The delivery area. | [optional] 
 **sort_by** | **str**| Sorts by the given field and order. Separate multiple sorting options with a comma (\&quot;,\&quot;) | [optional] [default to &#39;api_timestamp DESC&#39;]

### Return type

[**List[InternalTrade]**](InternalTrade.md)

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

# **get_trades**
> List[Trade] get_trades(portfolio_id=portfolio_id, offset=offset, limit=limit, trade_id=trade_id, ord_id=ord_id, active_only=active_only, cl_ordr_id=cl_ordr_id, txt=txt, contract_id=contract_id, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp, delivery_within_start=delivery_within_start, delivery_within_end=delivery_within_end, delivery_area=delivery_area, user_code=user_code, from_execution_time=from_execution_time, to_execution_time=to_execution_time, sort_by=sort_by)

List external trades

Allows you to retrieve the trades (deals) you have executed at the exchange. Each trade at the exchange consists of a buy and sell leg (based on the buy and sell order that were involved in the trade), whereby usually only one leg belongs to you and is therefore visible. In case of a cros-trade, both legs are visible.  This method provides a wide range of filtering options (array of portfolios, trade_id, order_id, txt etc). Please note that this method uses pagination. To fetch trades executed in a given time window, please use from_execution_time and to_execution_time (UTC), not api_timestamp (which indicates the time the server has received the trade confirmation, which can be delayed and might be updated).  Please be aware that some exchange systems may report executed trades slightly delayed. If you would like to know in real time if you have made a trade or not, we recommend to rely on the execution status of orders instead of trades or to use the NetPos attribute.  The option \"active_only\" (default yes) filters for trades that are market active by the exchange system, meaning no recalled or cancelled trades are delivered. The filter \"txt\" allows you to filter for trades that involve an order with a custom text in the txt attribute.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.trade import Trade
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
    api_instance = powerbot_client.TradesApi(api_client)
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    offset = 0 # int | Offset when loading a list of items (optional) (default to 0)
    limit = 150 # int | Limits the number of loaded items (optional) (default to 150)
    trade_id = 'trade_id_example' # str | Filters request to only show the trade with this trade_id (shows a single trade or none) (optional)
    ord_id = 'ord_id_example' # str | Limit the trades to those which are related to a particular order_id (optional)
    active_only = True # bool | Show only those trades which are active (no rejected, recalled or cancelled trades) (optional) (default to True)
    cl_ordr_id = 'cl_ordr_id_example' # str | Show only those trades related to orders with a specific 'client order id' (something like 'your reference' which you can submit) together with an order (optional)
    txt = 'txt_example' # str | Show only those trades related to orders with a specific 'custom text'. Similar to the clOrdrId, you can submit a string inside the 'txt' attribute of an order which helps you to identify trades originating from a specific order at a later point in time (optional)
    contract_id = [] # List[str] | Show only those trades related to a specific contract (optional) (default to [])
    from_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | from timestamp when system has received the trade; from timestamp is 'inclusive' (i.e. >=) (optional)
    to_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <) (optional)
    delivery_within_start = '2013-10-20T19:20:30+01:00' # datetime | can only be used together with delivery_within_end (optional)
    delivery_within_end = '2013-10-20T19:20:30+01:00' # datetime | can only be used together with delivery_within_start (optional)
    delivery_area = 'delivery_area_example' # str | The delivery area. (optional)
    user_code = 'user_code_example' # str | the exchange's user code (optional)
    from_execution_time = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=) (optional)
    to_execution_time = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <) (optional)
    sort_by = 'api_timestamp DESC' # str | Sorts by the given field and order. Separate multiple sorting options with a comma (\",\") (optional) (default to 'api_timestamp DESC')

    try:
        # List external trades
        api_response = api_instance.get_trades(portfolio_id=portfolio_id, offset=offset, limit=limit, trade_id=trade_id, ord_id=ord_id, active_only=active_only, cl_ordr_id=cl_ordr_id, txt=txt, contract_id=contract_id, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp, delivery_within_start=delivery_within_start, delivery_within_end=delivery_within_end, delivery_area=delivery_area, user_code=user_code, from_execution_time=from_execution_time, to_execution_time=to_execution_time, sort_by=sort_by)
        print("The response of TradesApi->get_trades:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TradesApi->get_trades: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **offset** | **int**| Offset when loading a list of items | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded items | [optional] [default to 150]
 **trade_id** | **str**| Filters request to only show the trade with this trade_id (shows a single trade or none) | [optional] 
 **ord_id** | **str**| Limit the trades to those which are related to a particular order_id | [optional] 
 **active_only** | **bool**| Show only those trades which are active (no rejected, recalled or cancelled trades) | [optional] [default to True]
 **cl_ordr_id** | **str**| Show only those trades related to orders with a specific &#39;client order id&#39; (something like &#39;your reference&#39; which you can submit) together with an order | [optional] 
 **txt** | **str**| Show only those trades related to orders with a specific &#39;custom text&#39;. Similar to the clOrdrId, you can submit a string inside the &#39;txt&#39; attribute of an order which helps you to identify trades originating from a specific order at a later point in time | [optional] 
 **contract_id** | [**List[str]**](str.md)| Show only those trades related to a specific contract | [optional] [default to []]
 **from_api_timestamp** | **datetime**| from timestamp when system has received the trade; from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;) | [optional] 
 **to_api_timestamp** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;) | [optional] 
 **delivery_within_start** | **datetime**| can only be used together with delivery_within_end | [optional] 
 **delivery_within_end** | **datetime**| can only be used together with delivery_within_start | [optional] 
 **delivery_area** | **str**| The delivery area. | [optional] 
 **user_code** | **str**| the exchange&#39;s user code | [optional] 
 **from_execution_time** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;) | [optional] 
 **to_execution_time** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;) | [optional] 
 **sort_by** | **str**| Sorts by the given field and order. Separate multiple sorting options with a comma (\&quot;,\&quot;) | [optional] [default to &#39;api_timestamp DESC&#39;]

### Return type

[**List[Trade]**](Trade.md)

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

# **recall_trade**
> List[Trade] recall_trade(trade_id)

Recall external trade

Attempts to recall a trade. Note that this may fail depending on the conditions set by the market operations. Check the trade's state after attempting to recall a trade.  Please be aware of the exchange market rules on trade recall. Usually, trade recalls are limited to a short time frame and are subject to high fees.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.trade import Trade
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
    api_instance = powerbot_client.TradesApi(api_client)
    trade_id = 'trade_id_example' # str | The unique trade_id of the trade you would like to recall

    try:
        # Recall external trade
        api_response = api_instance.recall_trade(trade_id)
        print("The response of TradesApi->recall_trade:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TradesApi->recall_trade: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trade_id** | **str**| The unique trade_id of the trade you would like to recall | 

### Return type

[**List[Trade]**](Trade.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success, returns the list of affected trades |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

