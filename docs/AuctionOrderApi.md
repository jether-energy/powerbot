# powerbot_client.AuctionOrderApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirm_order**](AuctionOrderApi.md#confirm_order) | **PUT** /auction/{exchange_id}/{order_id} | Confirm order
[**get_auction_order_history**](AuctionOrderApi.md#get_auction_order_history) | **GET** /auction/{exchange_id}/{auction_id}/{delivery_area}/{portfolio_id}/{order_type}/history | Get Order History
[**get_auction_orders**](AuctionOrderApi.md#get_auction_orders) | **GET** /auction/{exchange_id}/{auction_id}/{delivery_area}/{portfolio_id} | Get Orders
[**save_order**](AuctionOrderApi.md#save_order) | **PUT** /auction/{exchange_id}/order | Save Order


# **confirm_order**
> AuctionOrder confirm_order(exchange_id, order_id)

Confirm order

Allows you to confirmation a staged order, after which it will be submitted to the exchange. In case that the order was rejected by the exchange, a modification by the user to the current order is required, after which it may be confirmed again to submit to the market. 

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_order import AuctionOrder
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
    api_instance = powerbot_client.AuctionOrderApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    order_id = 'order_id_example' # str | 

    try:
        # Confirm order
        api_response = api_instance.confirm_order(exchange_id, order_id)
        print("The response of AuctionOrderApi->confirm_order:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionOrderApi->confirm_order: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **order_id** | **str**|  | 

### Return type

[**AuctionOrder**](AuctionOrder.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The result of the confirmation. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_auction_order_history**
> List[AuctionOrder] get_auction_order_history(exchange_id, auction_id, portfolio_id, delivery_area, order_type, revision_from=revision_from, revision_to=revision_to)

Get Order History

Return a list of order revisions for the given auction, delivery area and portfolio and order type.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_order import AuctionOrder
from powerbot_client.models.auction_order_type import AuctionOrderType
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
    api_instance = powerbot_client.AuctionOrderApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    auction_id = 'auction_id_example' # str | The ID of the auction.
    portfolio_id = 'portfolio_id_example' # str | The ID of the portfolio.
    delivery_area = 'delivery_area_example' # str | The delivery area of the order.
    order_type = powerbot_client.AuctionOrderType() # AuctionOrderType | The type of the order. Either curve or block.
    revision_from = 56 # int | Specify the starting revision (optional)
    revision_to = 56 # int | Specify the ending revision (optional)

    try:
        # Get Order History
        api_response = api_instance.get_auction_order_history(exchange_id, auction_id, portfolio_id, delivery_area, order_type, revision_from=revision_from, revision_to=revision_to)
        print("The response of AuctionOrderApi->get_auction_order_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionOrderApi->get_auction_order_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **auction_id** | **str**| The ID of the auction. | 
 **portfolio_id** | **str**| The ID of the portfolio. | 
 **delivery_area** | **str**| The delivery area of the order. | 
 **order_type** | [**AuctionOrderType**](.md)| The type of the order. Either curve or block. | 
 **revision_from** | **int**| Specify the starting revision | [optional] 
 **revision_to** | **int**| Specify the ending revision | [optional] 

### Return type

[**List[AuctionOrder]**](AuctionOrder.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**403** | Returned in case the user provides an portfolio ID or delivery area they do not have access to. |  -  |
**404** | No order revisions found. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_auction_orders**
> List[AuctionOrder] get_auction_orders(exchange_id, auction_id, portfolio_id, delivery_area)

Get Orders

Return the latest revision of curve and block orders for the given auction, delivery area and portfolio.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_order import AuctionOrder
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
    api_instance = powerbot_client.AuctionOrderApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    auction_id = 'auction_id_example' # str | The ID of the auction.
    portfolio_id = 'portfolio_id_example' # str | The ID of the portfolio.
    delivery_area = 'delivery_area_example' # str | The delivery area used for the request.

    try:
        # Get Orders
        api_response = api_instance.get_auction_orders(exchange_id, auction_id, portfolio_id, delivery_area)
        print("The response of AuctionOrderApi->get_auction_orders:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionOrderApi->get_auction_orders: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **auction_id** | **str**| The ID of the auction. | 
 **portfolio_id** | **str**| The ID of the portfolio. | 
 **delivery_area** | **str**| The delivery area used for the request. | 

### Return type

[**List[AuctionOrder]**](AuctionOrder.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**403** | Returned in case the user provides an portfolio ID or delivery area they do not have access to. |  -  |
**404** | No orders found. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **save_order**
> AuctionOrder save_order(exchange_id, auction_order_entry=auction_order_entry)

Save Order

This endpoint allows for the addition or modification of an order. Each order is uniquely identified by the auction ID, delivery area and portfolio ID. It contains either curves or blocks, but not both. Only one of them can be provided at a time. In case there is no existing order, a new order will be created, otherwise the existing order will be updated. To deactivate an order, provide an empty curves or blocks array.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_order import AuctionOrder
from powerbot_client.models.auction_order_entry import AuctionOrderEntry
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
    api_instance = powerbot_client.AuctionOrderApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    auction_order_entry = powerbot_client.AuctionOrderEntry() # AuctionOrderEntry |  (optional)

    try:
        # Save Order
        api_response = api_instance.save_order(exchange_id, auction_order_entry=auction_order_entry)
        print("The response of AuctionOrderApi->save_order:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionOrderApi->save_order: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **auction_order_entry** | [**AuctionOrderEntry**](AuctionOrderEntry.md)|  | [optional] 

### Return type

[**AuctionOrder**](AuctionOrder.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The results of the order entry. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

