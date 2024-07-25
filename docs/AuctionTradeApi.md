# powerbot_client.AuctionTradeApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_auction_trades**](AuctionTradeApi.md#find_auction_trades) | **GET** /auction/{exchange_id}/trades | Find trades
[**get_auction_trades**](AuctionTradeApi.md#get_auction_trades) | **GET** /auction/{exchange_id}/{auction_id}/{delivery_area}/{portfolio_id}/trades | Get trades for auction


# **find_auction_trades**
> List[AuctionTrade] find_auction_trades(exchange_id, portfolio_ids, auction_ids=auction_ids, delivery_areas=delivery_areas, delivery_from=delivery_from, delivery_to=delivery_to, state=state, processed_from=processed_from, processed_to=processed_to)

Find trades

Return a list of auction trades for the search criteria.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_trade import AuctionTrade
from powerbot_client.models.auction_trade_state import AuctionTradeState
from powerbot_client.models.exchange import Exchange
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
    api_instance = powerbot_client.AuctionTradeApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    portfolio_ids = ['portfolio_ids_example'] # List[str] | At least one portfolio has to be provided.
    auction_ids = ['auction_ids_example'] # List[str] |  (optional)
    delivery_areas = ['delivery_areas_example'] # List[str] |  (optional)
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    state = powerbot_client.AuctionTradeState() # AuctionTradeState |  (optional)
    processed_from = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    processed_to = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        # Find trades
        api_response = api_instance.find_auction_trades(exchange_id, portfolio_ids, auction_ids=auction_ids, delivery_areas=delivery_areas, delivery_from=delivery_from, delivery_to=delivery_to, state=state, processed_from=processed_from, processed_to=processed_to)
        print("The response of AuctionTradeApi->find_auction_trades:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionTradeApi->find_auction_trades: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **portfolio_ids** | [**List[str]**](str.md)| At least one portfolio has to be provided. | 
 **auction_ids** | [**List[str]**](str.md)|  | [optional] 
 **delivery_areas** | [**List[str]**](str.md)|  | [optional] 
 **delivery_from** | **datetime**|  | [optional] 
 **delivery_to** | **datetime**|  | [optional] 
 **state** | [**AuctionTradeState**](.md)|  | [optional] 
 **processed_from** | **datetime**|  | [optional] 
 **processed_to** | **datetime**|  | [optional] 

### Return type

[**List[AuctionTrade]**](AuctionTrade.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | No trades found. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_auction_trades**
> List[AuctionTrade] get_auction_trades(exchange_id, auction_id, delivery_area, portfolio_id)

Get trades for auction

Return a list of trades for the given auction, delivery area and portfolio.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_trade import AuctionTrade
from powerbot_client.models.exchange import Exchange
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
    api_instance = powerbot_client.AuctionTradeApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    auction_id = 'auction_id_example' # str | The ID of the auction.
    delivery_area = 'delivery_area_example' # str | The delivery area used for the request.
    portfolio_id = 'portfolio_id_example' # str | The ID of the portfolio.

    try:
        # Get trades for auction
        api_response = api_instance.get_auction_trades(exchange_id, auction_id, delivery_area, portfolio_id)
        print("The response of AuctionTradeApi->get_auction_trades:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionTradeApi->get_auction_trades: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **auction_id** | **str**| The ID of the auction. | 
 **delivery_area** | **str**| The delivery area used for the request. | 
 **portfolio_id** | **str**| The ID of the portfolio. | 

### Return type

[**List[AuctionTrade]**](AuctionTrade.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | No trades found. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

