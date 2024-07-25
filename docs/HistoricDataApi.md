# powerbot_client.HistoricDataApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_historic_orders**](HistoricDataApi.md#get_historic_orders) | **GET** /historic/publicorders | Get order book revisions for historic contracts
[**get_historic_trades**](HistoricDataApi.md#get_historic_trades) | **GET** /historic/publictrades | Get trades for historic contracts


# **get_historic_orders**
> HistoricOrdersResponse get_historic_orders(delivery_area, page_size=page_size, page_token=page_token, exchange=exchange, delivery_start=delivery_start, delivery_end=delivery_end, product=product, contract_id=contract_id)

Get order book revisions for historic contracts

Allows to retrieve all order revisions of historic contracts.  Note that this endpoint returns order revisions, and not orders. This means that the same order ID will appear multiple times, once for each update (creation, update or deletion).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.exchange import Exchange
from powerbot_client.models.historic_orders_response import HistoricOrdersResponse
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
    api_instance = powerbot_client.HistoricDataApi(api_client)
    delivery_area = '10YDE-RWENET---I' # str | The delivery area of the target contract.
    page_size = 56 # int | The number of order book revisions to return in one page. (optional)
    page_token = 'page_token_example' # str | Used for request pagination. If a response has the field `next_page_token` set, you can provide that value as the `page_token` parameter to retrieve the next page of results. The first request does not need to have the `page_token` parameter set. (optional)
    exchange = powerbot_client.Exchange() # Exchange | This value can be used to retrieve data from other exchanges. This is only possible for exchanges you are actively using, or have used in the past.  It defaults to the current exchange if no value is specified. (optional)
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | The delivery start time of the target contract. Must be used together with `delivery_end` and `product`. Alternatively, `contract_id` can be used. (optional)
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | The delivery end time of the target contract. Must be used together with `delivery_start` and `product`. Alternatively, `contract_id` can be used. (optional)
    product = 'XBID_Hour_Power' # str | The product of the target contract. Must be used together with  `delivery_start` and `delivery_end`. Alternatively, `contract_id` can be used. (optional)
    contract_id = 'contract_id_example' # str | The ID of the target contract. Alternatively, `delivery_start`, `delivery_end` and `contract_id` can be used. (optional)

    try:
        # Get order book revisions for historic contracts
        api_response = api_instance.get_historic_orders(delivery_area, page_size=page_size, page_token=page_token, exchange=exchange, delivery_start=delivery_start, delivery_end=delivery_end, product=product, contract_id=contract_id)
        print("The response of HistoricDataApi->get_historic_orders:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling HistoricDataApi->get_historic_orders: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_area** | **str**| The delivery area of the target contract. | 
 **page_size** | **int**| The number of order book revisions to return in one page. | [optional] 
 **page_token** | **str**| Used for request pagination. If a response has the field &#x60;next_page_token&#x60; set, you can provide that value as the &#x60;page_token&#x60; parameter to retrieve the next page of results. The first request does not need to have the &#x60;page_token&#x60; parameter set. | [optional] 
 **exchange** | [**Exchange**](.md)| This value can be used to retrieve data from other exchanges. This is only possible for exchanges you are actively using, or have used in the past.  It defaults to the current exchange if no value is specified. | [optional] 
 **delivery_start** | **datetime**| The delivery start time of the target contract. Must be used together with &#x60;delivery_end&#x60; and &#x60;product&#x60;. Alternatively, &#x60;contract_id&#x60; can be used. | [optional] 
 **delivery_end** | **datetime**| The delivery end time of the target contract. Must be used together with &#x60;delivery_start&#x60; and &#x60;product&#x60;. Alternatively, &#x60;contract_id&#x60; can be used. | [optional] 
 **product** | **str**| The product of the target contract. Must be used together with  &#x60;delivery_start&#x60; and &#x60;delivery_end&#x60;. Alternatively, &#x60;contract_id&#x60; can be used. | [optional] 
 **contract_id** | **str**| The ID of the target contract. Alternatively, &#x60;delivery_start&#x60;, &#x60;delivery_end&#x60; and &#x60;contract_id&#x60; can be used. | [optional] 

### Return type

[**HistoricOrdersResponse**](HistoricOrdersResponse.md)

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

# **get_historic_trades**
> HistoricTradesResponse get_historic_trades(page_size=page_size, page_token=page_token, exchange=exchange, period_start=period_start, period_end=period_end, period_match_exact=period_match_exact, delivery_period_duration_minutes=delivery_period_duration_minutes, delivery_area_buy=delivery_area_buy, delivery_area_sell=delivery_area_sell, delivery_area_match_exact=delivery_area_match_exact, contract_ids=contract_ids, products=products, execution_from_offset_minutes=execution_from_offset_minutes, execution_to_offset_minutes=execution_to_offset_minutes, self_trades=self_trades)

Get trades for historic contracts

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.exchange import Exchange
from powerbot_client.models.historic_trades_response import HistoricTradesResponse
from powerbot_client.models.self_trade_selector import SelfTradeSelector
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
    api_instance = powerbot_client.HistoricDataApi(api_client)
    page_size = 56 # int | The number of trades to return in one page. Setting this field to `0` will return all trades if `period_match_exact` is set to `true` or only one contract ID is provided. (optional)
    page_token = 'page_token_example' # str | Used for request pagination. If a response has the field `next_page_token` set, you can provide that value as the `page_token` parameter to retrieve the next page of results. The first request does not need to have the `page_token` parameter set. (optional)
    exchange = powerbot_client.Exchange() # Exchange | This value can be used to retrieve data from other exchanges. This is only possible for exchanges you are actively using, or have used in the past.  It defaults to the current exchange if no value is specified. (optional)
    period_start = '2013-10-20T19:20:30+01:00' # datetime | The lower limit (inclusive) of contract delivery periods. Can be set to match contract `delivery_start` exactly with `period_match_exact` (optional)
    period_end = '2013-10-20T19:20:30+01:00' # datetime | The upper limit (inclusive) of contract delivery periods. Can be set to match contract `delivery_end` exactly with `period_match_exact` (optional)
    period_match_exact = False # bool | If set to true, only trades for contract with a delivery period that exactly matches `period_start` and `period_end` will be returned. Otherwise, trades for all contracts with a delivery period that fully falls between `period_start` and `period_end` will be considered. (optional) (default to False)
    delivery_period_duration_minutes = 56 # int |  (optional)
    delivery_area_buy = 'delivery_area_buy_example' # str |  (optional)
    delivery_area_sell = 'delivery_area_sell_example' # str |  (optional)
    delivery_area_match_exact = True # bool | If set to true, only trades where the buy **and** sell delivery areas exactly match `delivery_area_buy` and `delivery_area_sell` will be returned. Otherwise, trades where the buy **or** sell delivery areas match `delivery_area_buy` or `delivery_area_sell` will be returned. (optional)
    contract_ids = ['contract_ids_example'] # List[str] |  (optional)
    products = ['products_example'] # List[str] |  (optional)
    execution_from_offset_minutes = 56 # int | Excludes trades that were executed before `delivery_period_start - execution_from_offset_minutes` (optional)
    execution_to_offset_minutes = 56 # int | Excludes trades that were executed after `delivery_period_start - execution_to_offset_minutes` (optional)
    self_trades = INCLUDED # SelfTradeSelector |  (optional) (default to INCLUDED)

    try:
        # Get trades for historic contracts
        api_response = api_instance.get_historic_trades(page_size=page_size, page_token=page_token, exchange=exchange, period_start=period_start, period_end=period_end, period_match_exact=period_match_exact, delivery_period_duration_minutes=delivery_period_duration_minutes, delivery_area_buy=delivery_area_buy, delivery_area_sell=delivery_area_sell, delivery_area_match_exact=delivery_area_match_exact, contract_ids=contract_ids, products=products, execution_from_offset_minutes=execution_from_offset_minutes, execution_to_offset_minutes=execution_to_offset_minutes, self_trades=self_trades)
        print("The response of HistoricDataApi->get_historic_trades:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling HistoricDataApi->get_historic_trades: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **int**| The number of trades to return in one page. Setting this field to &#x60;0&#x60; will return all trades if &#x60;period_match_exact&#x60; is set to &#x60;true&#x60; or only one contract ID is provided. | [optional] 
 **page_token** | **str**| Used for request pagination. If a response has the field &#x60;next_page_token&#x60; set, you can provide that value as the &#x60;page_token&#x60; parameter to retrieve the next page of results. The first request does not need to have the &#x60;page_token&#x60; parameter set. | [optional] 
 **exchange** | [**Exchange**](.md)| This value can be used to retrieve data from other exchanges. This is only possible for exchanges you are actively using, or have used in the past.  It defaults to the current exchange if no value is specified. | [optional] 
 **period_start** | **datetime**| The lower limit (inclusive) of contract delivery periods. Can be set to match contract &#x60;delivery_start&#x60; exactly with &#x60;period_match_exact&#x60; | [optional] 
 **period_end** | **datetime**| The upper limit (inclusive) of contract delivery periods. Can be set to match contract &#x60;delivery_end&#x60; exactly with &#x60;period_match_exact&#x60; | [optional] 
 **period_match_exact** | **bool**| If set to true, only trades for contract with a delivery period that exactly matches &#x60;period_start&#x60; and &#x60;period_end&#x60; will be returned. Otherwise, trades for all contracts with a delivery period that fully falls between &#x60;period_start&#x60; and &#x60;period_end&#x60; will be considered. | [optional] [default to False]
 **delivery_period_duration_minutes** | **int**|  | [optional] 
 **delivery_area_buy** | **str**|  | [optional] 
 **delivery_area_sell** | **str**|  | [optional] 
 **delivery_area_match_exact** | **bool**| If set to true, only trades where the buy **and** sell delivery areas exactly match &#x60;delivery_area_buy&#x60; and &#x60;delivery_area_sell&#x60; will be returned. Otherwise, trades where the buy **or** sell delivery areas match &#x60;delivery_area_buy&#x60; or &#x60;delivery_area_sell&#x60; will be returned. | [optional] 
 **contract_ids** | [**List[str]**](str.md)|  | [optional] 
 **products** | [**List[str]**](str.md)|  | [optional] 
 **execution_from_offset_minutes** | **int**| Excludes trades that were executed before &#x60;delivery_period_start - execution_from_offset_minutes&#x60; | [optional] 
 **execution_to_offset_minutes** | **int**| Excludes trades that were executed after &#x60;delivery_period_start - execution_to_offset_minutes&#x60; | [optional] 
 **self_trades** | [**SelfTradeSelector**](.md)|  | [optional] [default to INCLUDED]

### Return type

[**HistoricTradesResponse**](HistoricTradesResponse.md)

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

