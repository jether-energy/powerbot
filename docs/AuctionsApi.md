# powerbot_client.AuctionsApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_auction_constraints**](AuctionsApi.md#get_auction_constraints) | **GET** /auction/{exchange_id}/{auction_id}/{delivery_area}/{portfolio_id}/constraints | Get auction constraints
[**get_auction_results**](AuctionsApi.md#get_auction_results) | **GET** /auction/{exchange_id}/auctions/results | Get Auction Results
[**list_auctions**](AuctionsApi.md#list_auctions) | **GET** /auction/{exchange_id}/auctions | List Auctions


# **get_auction_constraints**
> AuctionConstraints get_auction_constraints(exchange_id, auction_id, delivery_area, portfolio_id)

Get auction constraints

Returns the price constraints of the specified auction

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_constraints import AuctionConstraints
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
    api_instance = powerbot_client.AuctionsApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    auction_id = 'auction_id_example' # str | 
    delivery_area = 'delivery_area_example' # str | 
    portfolio_id = 'portfolio_id_example' # str | 

    try:
        # Get auction constraints
        api_response = api_instance.get_auction_constraints(exchange_id, auction_id, delivery_area, portfolio_id)
        print("The response of AuctionsApi->get_auction_constraints:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionsApi->get_auction_constraints: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **auction_id** | **str**|  | 
 **delivery_area** | **str**|  | 
 **portfolio_id** | **str**|  | 

### Return type

[**AuctionConstraints**](AuctionConstraints.md)

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

# **get_auction_results**
> List[AuctionResult] get_auction_results(exchange_id, auction_ids, delivery_areas=delivery_areas)

Get Auction Results

Returns the auction results for the provided parameters

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_result import AuctionResult
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
    api_instance = powerbot_client.AuctionsApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    auction_ids = ['auction_ids_example'] # List[str] | The IDs of the auctions
    delivery_areas = ['delivery_areas_example'] # List[str] | The delivery areas that should be contained by the auctions (optional)

    try:
        # Get Auction Results
        api_response = api_instance.get_auction_results(exchange_id, auction_ids, delivery_areas=delivery_areas)
        print("The response of AuctionsApi->get_auction_results:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionsApi->get_auction_results: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **auction_ids** | [**List[str]**](str.md)| The IDs of the auctions | 
 **delivery_areas** | [**List[str]**](str.md)| The delivery areas that should be contained by the auctions | [optional] 

### Return type

[**List[AuctionResult]**](AuctionResult.md)

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

# **list_auctions**
> List[Auction] list_auctions(exchange_id, delivery_areas=delivery_areas, delivery_from=delivery_from, delivery_to=delivery_to, auction_ids=auction_ids, gate_closure_from=gate_closure_from, gate_closure_to=gate_closure_to, portfolio_ids=portfolio_ids)

List Auctions

Returns all auctions for the provided parameters.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction import Auction
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
    api_instance = powerbot_client.AuctionsApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    delivery_areas = ['delivery_areas_example'] # List[str] | This filter applies to auctions and auction contracts. (optional)
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | The starting point of the delivery period. (optional)
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | The end point of the delivery period. (optional)
    auction_ids = ['auction_ids_example'] # List[str] | The IDs of the auctions. (optional)
    gate_closure_from = '2013-10-20T19:20:30+01:00' # datetime | The start time in which the auctions gate closure time should be contained. (optional)
    gate_closure_to = '2013-10-20T19:20:30+01:00' # datetime | The end time in which the auctions gate closure time should be contained. (optional)
    portfolio_ids = ['portfolio_ids_example'] # List[str] | limit the results to auctions that are available to the provided portfolios (optional)

    try:
        # List Auctions
        api_response = api_instance.list_auctions(exchange_id, delivery_areas=delivery_areas, delivery_from=delivery_from, delivery_to=delivery_to, auction_ids=auction_ids, gate_closure_from=gate_closure_from, gate_closure_to=gate_closure_to, portfolio_ids=portfolio_ids)
        print("The response of AuctionsApi->list_auctions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionsApi->list_auctions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **delivery_areas** | [**List[str]**](str.md)| This filter applies to auctions and auction contracts. | [optional] 
 **delivery_from** | **datetime**| The starting point of the delivery period. | [optional] 
 **delivery_to** | **datetime**| The end point of the delivery period. | [optional] 
 **auction_ids** | [**List[str]**](str.md)| The IDs of the auctions. | [optional] 
 **gate_closure_from** | **datetime**| The start time in which the auctions gate closure time should be contained. | [optional] 
 **gate_closure_to** | **datetime**| The end time in which the auctions gate closure time should be contained. | [optional] 
 **portfolio_ids** | [**List[str]**](str.md)| limit the results to auctions that are available to the provided portfolios | [optional] 

### Return type

[**List[Auction]**](Auction.md)

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

