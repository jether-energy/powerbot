# powerbot_client.ContractApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**calculate_bulk_statistics**](ContractApi.md#calculate_bulk_statistics) | **GET** /contracts/bulkstatistics | Get contract statistics in bulk
[**calculate_statistics**](ContractApi.md#calculate_statistics) | **GET** /contracts/statistics | Get contract statistics
[**find_contracts**](ContractApi.md#find_contracts) | **GET** /contracts | Find contracts
[**get_contract_history**](ContractApi.md#get_contract_history) | **GET** /contract/{contract_id}/{delivery_area}/history | Get contract history
[**get_contract_signals**](ContractApi.md#get_contract_signals) | **GET** /contract/{contract_id}/{delivery_area}/signals | Get contract signals
[**get_limits**](ContractApi.md#get_limits) | **GET** /contract/{contract_id}/{delivery_area}/portfolio-information | Get contract portfolio information
[**get_order_book_statistics**](ContractApi.md#get_order_book_statistics) | **GET** /contracts/orderbookbulkstatistics | Get order book statistics
[**get_order_books**](ContractApi.md#get_order_books) | **GET** /orderbooks | Get all orderbooks
[**get_orders**](ContractApi.md#get_orders) | **GET** /contract/{contract_id}/{delivery_area}/orders | Get contract full depth orderbook
[**get_public_trades**](ContractApi.md#get_public_trades) | **GET** /contract/{contract_id}/{delivery_area}/publictrades | Get contract public trades


# **calculate_bulk_statistics**
> BulkContractStatistics calculate_bulk_statistics(contract_duration_minutes, delivery_area, delivery_from, delivery_to, execution_from_offset_minutes=execution_from_offset_minutes, execution_to_offset_minutes=execution_to_offset_minutes, limit_to_last_mw=limit_to_last_mw, include_historic_data=include_historic_data)

Get contract statistics in bulk

Calculates the average price and volume of public trades executed for a given delivery interval for reference price and index calculation. Allows you to filter for public trades executed within a certain time period to restrict the calculation to a given amount of last traded quantity. Per default, only active or recently active contracts will be included in the calculation. Historic contracts matching the given delivery period can be included with setting the respective toggle. Please note that delivery_start and delivery_end have to be within 24 hours. Cross border trades are taken into account if either the buy or sell leg of the trade is in the specified delivery area(s). The quantity of only one of those trades will be taken into account, if a trade matches.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.bulk_contract_statistics import BulkContractStatistics
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
    api_instance = powerbot_client.ContractApi(api_client)
    contract_duration_minutes = 15 # int | the duration of the contracts to calculate statistics for
    delivery_area = ['delivery_area_example'] # List[str] | 
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | 
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | 
    execution_from_offset_minutes = 60 # int | only consider trades that happened after or at (delivery start - n minutes) (optional)
    execution_to_offset_minutes = 15 # int | only consider trades that happened before (delivery start - n minutes) (optional)
    limit_to_last_mw = 3.4 # float |  (optional)
    include_historic_data = False # bool | If this option is enabled, statistics will also be calculated for expired contracts that match the given delivery period. (optional) (default to False)

    try:
        # Get contract statistics in bulk
        api_response = api_instance.calculate_bulk_statistics(contract_duration_minutes, delivery_area, delivery_from, delivery_to, execution_from_offset_minutes=execution_from_offset_minutes, execution_to_offset_minutes=execution_to_offset_minutes, limit_to_last_mw=limit_to_last_mw, include_historic_data=include_historic_data)
        print("The response of ContractApi->calculate_bulk_statistics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->calculate_bulk_statistics: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_duration_minutes** | **int**| the duration of the contracts to calculate statistics for | 
 **delivery_area** | [**List[str]**](str.md)|  | 
 **delivery_from** | **datetime**|  | 
 **delivery_to** | **datetime**|  | 
 **execution_from_offset_minutes** | **int**| only consider trades that happened after or at (delivery start - n minutes) | [optional] 
 **execution_to_offset_minutes** | **int**| only consider trades that happened before (delivery start - n minutes) | [optional] 
 **limit_to_last_mw** | **float**|  | [optional] 
 **include_historic_data** | **bool**| If this option is enabled, statistics will also be calculated for expired contracts that match the given delivery period. | [optional] [default to False]

### Return type

[**BulkContractStatistics**](BulkContractStatistics.md)

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

# **calculate_statistics**
> ContractStatistics calculate_statistics(delivery_area, delivery_start, delivery_end, execution_from=execution_from, execution_to=execution_to, limit_to_last_mw=limit_to_last_mw, include_historic_data=include_historic_data)

Get contract statistics

Calculates the average price and volume of public trades executed for a given delivery interval for reference price and index calculation. Allows you to filter for public trades executed within a certain time period to restrict the calculation to a given amount of last traded quantity. Per default, only active or recently active contracts will be included in the calculation. Historic contracts matching the given delivery period can be included with setting the respective toggle. Please note that delivery_start and delivery_end have to be within 24 hours. Cross border trades are taken into account if either the buy or sell leg of the trade is in the specified delivery area(s). The quantity of only one of those trades will be taken into account, if a trades matches.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.contract_statistics import ContractStatistics
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
    api_instance = powerbot_client.ContractApi(api_client)
    delivery_area = ['delivery_area_example'] # List[str] | 
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | 
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | 
    execution_from = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    execution_to = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    limit_to_last_mw = 3.4 # float |  (optional)
    include_historic_data = False # bool | If this option is enabled, statistics will also be calculated for expired contracts that match the given delivery period. (optional) (default to False)

    try:
        # Get contract statistics
        api_response = api_instance.calculate_statistics(delivery_area, delivery_start, delivery_end, execution_from=execution_from, execution_to=execution_to, limit_to_last_mw=limit_to_last_mw, include_historic_data=include_historic_data)
        print("The response of ContractApi->calculate_statistics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->calculate_statistics: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_area** | [**List[str]**](str.md)|  | 
 **delivery_start** | **datetime**|  | 
 **delivery_end** | **datetime**|  | 
 **execution_from** | **datetime**|  | [optional] 
 **execution_to** | **datetime**|  | [optional] 
 **limit_to_last_mw** | **float**|  | [optional] 
 **include_historic_data** | **bool**| If this option is enabled, statistics will also be calculated for expired contracts that match the given delivery period. | [optional] [default to False]

### Return type

[**ContractStatistics**](ContractStatistics.md)

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

# **find_contracts**
> List[ContractItem] find_contracts(contract_id=contract_id, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to, delivery_areas=delivery_areas)

Find contracts

This method allows you to find active or historical contracts based on their exact delivery_start and delivery_end time (UTC) and lets you determine their contract_id. Using delivery_from and delivery_to, the contracts can be further limited to a given timespan.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.contract_item import ContractItem
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
    api_instance = powerbot_client.ContractApi(api_client)
    contract_id = [] # List[str] |  (optional) (default to [])
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | Limit the contracts to those with the given delivery start date. (optional)
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | Limit the contracts to those with the given delivery end date. (optional)
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | Limits the contracts to those with a delivery start date >= delivery_from. (optional)
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | Limits the contracts to those with a delivery end date <= delivery_to. (optional)
    delivery_areas = ['delivery_areas_example'] # List[str] | Limit the search to contracts that belong to any of the specified delivery areas. (optional)

    try:
        # Find contracts
        api_response = api_instance.find_contracts(contract_id=contract_id, delivery_start=delivery_start, delivery_end=delivery_end, delivery_from=delivery_from, delivery_to=delivery_to, delivery_areas=delivery_areas)
        print("The response of ContractApi->find_contracts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->find_contracts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | [**List[str]**](str.md)|  | [optional] [default to []]
 **delivery_start** | **datetime**| Limit the contracts to those with the given delivery start date. | [optional] 
 **delivery_end** | **datetime**| Limit the contracts to those with the given delivery end date. | [optional] 
 **delivery_from** | **datetime**| Limits the contracts to those with a delivery start date &gt;&#x3D; delivery_from. | [optional] 
 **delivery_to** | **datetime**| Limits the contracts to those with a delivery end date &lt;&#x3D; delivery_to. | [optional] 
 **delivery_areas** | [**List[str]**](str.md)| Limit the search to contracts that belong to any of the specified delivery areas. | [optional] 

### Return type

[**List[ContractItem]**](ContractItem.md)

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

# **get_contract_history**
> List[ContractHistoryItem] get_contract_history(contract_id, delivery_area, offset=offset, page_token=page_token, limit=limit, portfolio_id=portfolio_id, from_revision=from_revision, to_revision=to_revision, from_time=from_time, to_time=to_time, as_of=as_of, with_owntrades=with_owntrades, with_signals=with_signals, with_orders=with_orders, sort_by=sort_by)

Get contract history

This method allows you to retrieve the history of a contract in a delivery area in the form of revisions (which include delta and sometimes full orderbook updates). When querying with a list of portfolios, you can retrieve all your own trades and signals that belong to the contract. When querying with a timestamp in \"as_of\", you can retrieve the contract history at a given point in time, or you can request a set of revisions.  If with_orders is set to true, the revisions will include new and deleted orders that belong to the revision (if requesting revisions) in delta-format or the full orderbook if requesting a historical version using \"as_of\".  Please note that this feature uses pagination.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.contract_history_item import ContractHistoryItem
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
    api_instance = powerbot_client.ContractApi(api_client)
    contract_id = 'contract_id_example' # str | The unique id of the contract
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area
    offset = 56 # int | DEPRECATED: use page_token instead.  Offset when loading a list of items (optional)
    page_token = 'page_token_example' # str | Used for request pagination. For every retrieved page, the header `X-Next-Page-Token` will be set. Provide this value as the `page_token` parameter to retrieve the next page of results. The first request does not need to have the `page_token` parameter set.  This value can only be used in conjunction with `limit`. (optional)
    limit = 56 # int | Limits the number of loaded items (optional)
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    from_revision = 56 # int | Revisions start with 0, each change increments it by 1. Please note that only up to 500 revisions at a time can be fetched. (optional)
    to_revision = 56 # int | Revisions start with 0, each change increments it by 1. Please note that only up to 500 revisions at a time can be fetched. (optional)
    from_time = '2013-10-20T19:20:30+01:00' # datetime | The time of the first revision to retrieve (inclusive) (optional)
    to_time = '2013-10-20T19:20:30+01:00' # datetime | The time of the last revision to retrieve (inclusive) (optional)
    as_of = '2013-10-20T19:20:30+01:00' # datetime | Contract history as_of given point in time. Cannot be combined together with from_revision and to_revision. (optional)
    with_owntrades = False # bool | If set to true, the own trades which happened on that revision are returned. (optional) (default to False)
    with_signals = False # bool | If set to true, the signals valid for that revision are returned. (optional) (default to False)
    with_orders = False # bool | If set to true, details about bids/asks are returned (optional) (default to False)
    sort_by = 'revisionNo ASC' # str | DEPRECATED: sorting manually by time or revision can lead to inconsistent results. Leaving this blank will always return revisions exactly as received by the exchange. If you require the revisions in descending order, please reverse the returned list manually. (optional) (default to 'revisionNo ASC')

    try:
        # Get contract history
        api_response = api_instance.get_contract_history(contract_id, delivery_area, offset=offset, page_token=page_token, limit=limit, portfolio_id=portfolio_id, from_revision=from_revision, to_revision=to_revision, from_time=from_time, to_time=to_time, as_of=as_of, with_owntrades=with_owntrades, with_signals=with_signals, with_orders=with_orders, sort_by=sort_by)
        print("The response of ContractApi->get_contract_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->get_contract_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **str**| The unique id of the contract | 
 **delivery_area** | **str**| The EIC of the delivery area | 
 **offset** | **int**| DEPRECATED: use page_token instead.  Offset when loading a list of items | [optional] 
 **page_token** | **str**| Used for request pagination. For every retrieved page, the header &#x60;X-Next-Page-Token&#x60; will be set. Provide this value as the &#x60;page_token&#x60; parameter to retrieve the next page of results. The first request does not need to have the &#x60;page_token&#x60; parameter set.  This value can only be used in conjunction with &#x60;limit&#x60;. | [optional] 
 **limit** | **int**| Limits the number of loaded items | [optional] 
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **from_revision** | **int**| Revisions start with 0, each change increments it by 1. Please note that only up to 500 revisions at a time can be fetched. | [optional] 
 **to_revision** | **int**| Revisions start with 0, each change increments it by 1. Please note that only up to 500 revisions at a time can be fetched. | [optional] 
 **from_time** | **datetime**| The time of the first revision to retrieve (inclusive) | [optional] 
 **to_time** | **datetime**| The time of the last revision to retrieve (inclusive) | [optional] 
 **as_of** | **datetime**| Contract history as_of given point in time. Cannot be combined together with from_revision and to_revision. | [optional] 
 **with_owntrades** | **bool**| If set to true, the own trades which happened on that revision are returned. | [optional] [default to False]
 **with_signals** | **bool**| If set to true, the signals valid for that revision are returned. | [optional] [default to False]
 **with_orders** | **bool**| If set to true, details about bids/asks are returned | [optional] [default to False]
 **sort_by** | **str**| DEPRECATED: sorting manually by time or revision can lead to inconsistent results. Leaving this blank will always return revisions exactly as received by the exchange. If you require the revisions in descending order, please reverse the returned list manually. | [optional] [default to &#39;revisionNo ASC&#39;]

### Return type

[**List[ContractHistoryItem]**](ContractHistoryItem.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  * X-Total-Revisions - DEPRECATED: the number of revisions of a contract change constantly, so this is not reliable for pagination. <br>  * X-Next-Page-Token - Provide this value as the &#39;page_token&#39; parameter to retrieve the next page of results.  If this header is blank, there is no more data to retrieve. <br>  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contract_signals**
> List[Signal] get_contract_signals(contract_id, delivery_area, portfolio_id=portfolio_id)

Get contract signals

This method allows you to retrieve your trading signals (your positions or custom data like weather, fundamental data etc.) valid for a contract in a delivery area for one or more portfolios.

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
    api_instance = powerbot_client.ContractApi(api_client)
    contract_id = 'contract_id_example' # str | The unique id of the contract
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)

    try:
        # Get contract signals
        api_response = api_instance.get_contract_signals(contract_id, delivery_area, portfolio_id=portfolio_id)
        print("The response of ContractApi->get_contract_signals:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->get_contract_signals: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **str**| The unique id of the contract | 
 **delivery_area** | **str**| The EIC of the delivery area | 
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 

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
**200** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_limits**
> RiskSettingsAndPortfolioInformation get_limits(contract_id, delivery_area, portfolio_id=portfolio_id, with_auction_positions=with_auction_positions)

Get contract portfolio information

Calculates the current positions (portfolio-information) for a given contract. The response contains information about   - the currency of all parameters   - order-to-trade-ratios for the exchange, tenant and portfolio (DEPRECATED: replaced by order action quota)   - cash-positions   - net-positions   - order-action-quota-limits

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.risk_settings_and_portfolio_information import RiskSettingsAndPortfolioInformation
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
    api_instance = powerbot_client.ContractApi(api_client)
    contract_id = 'contract_id_example' # str | The unique id of the contract
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    with_auction_positions = False # bool | If set to true, the returned portfolio information will contain the auction positions (optional) (default to False)

    try:
        # Get contract portfolio information
        api_response = api_instance.get_limits(contract_id, delivery_area, portfolio_id=portfolio_id, with_auction_positions=with_auction_positions)
        print("The response of ContractApi->get_limits:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->get_limits: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **str**| The unique id of the contract | 
 **delivery_area** | **str**| The EIC of the delivery area | 
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **with_auction_positions** | **bool**| If set to true, the returned portfolio information will contain the auction positions | [optional] [default to False]

### Return type

[**RiskSettingsAndPortfolioInformation**](RiskSettingsAndPortfolioInformation.md)

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

# **get_order_book_statistics**
> OrderBookBulkStatistics get_order_book_statistics(delivery_area, contract_duration_minutes=contract_duration_minutes, order_book_depth=order_book_depth, products=products, delivery_from=delivery_from, delivery_to=delivery_to, exclude_own_orders=exclude_own_orders, portfolio_id=portfolio_id)

Get order book statistics

Provides a summary of statistics for each contract which is currently active in the order book. Additionally, the average price for given order book depths can be calculated.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.order_book_bulk_statistics import OrderBookBulkStatistics
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
    api_instance = powerbot_client.ContractApi(api_client)
    delivery_area = 'delivery_area_example' # str | The EIC of the requested delivery area.
    contract_duration_minutes = 15 # int | The duration of the contracts to calculate statistics for. Must be a multiple of 15 minutes. (optional)
    order_book_depth = [3.4] # List[float] | List of order book depths (in MW) to calculate the average price for each contract. (optional)
    products = ['products_example'] # List[str] | List of products (e.g. Intraday_Power_D,XBID_Hour_Power) to consider in the calculation. Leave blank if you want all available products considered. (optional)
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | Limits the order book to those contracts with a delivery start date >= delivery_from. (optional)
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | Limits the order book to those contracts with a delivery end date <= delivery_to. (optional)
    exclude_own_orders = False # bool | If true, own orders are not considered in the calculation of the order book vwaps. (optional) (default to False)
    portfolio_id = 'portfolio_id_example' # str | Providing a portfolio ID that corresponds with a shadow trading portfolio will result in the application of order book changes according to shadow trades made with the given portfolio. Shadow orders will also be added to the respective side of the order book and included in the calculation. An error is returned if a non shadow trading portfolio ID is given. (optional)

    try:
        # Get order book statistics
        api_response = api_instance.get_order_book_statistics(delivery_area, contract_duration_minutes=contract_duration_minutes, order_book_depth=order_book_depth, products=products, delivery_from=delivery_from, delivery_to=delivery_to, exclude_own_orders=exclude_own_orders, portfolio_id=portfolio_id)
        print("The response of ContractApi->get_order_book_statistics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->get_order_book_statistics: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_area** | **str**| The EIC of the requested delivery area. | 
 **contract_duration_minutes** | **int**| The duration of the contracts to calculate statistics for. Must be a multiple of 15 minutes. | [optional] 
 **order_book_depth** | [**List[float]**](float.md)| List of order book depths (in MW) to calculate the average price for each contract. | [optional] 
 **products** | [**List[str]**](str.md)| List of products (e.g. Intraday_Power_D,XBID_Hour_Power) to consider in the calculation. Leave blank if you want all available products considered. | [optional] 
 **delivery_from** | **datetime**| Limits the order book to those contracts with a delivery start date &gt;&#x3D; delivery_from. | [optional] 
 **delivery_to** | **datetime**| Limits the order book to those contracts with a delivery end date &lt;&#x3D; delivery_to. | [optional] 
 **exclude_own_orders** | **bool**| If true, own orders are not considered in the calculation of the order book vwaps. | [optional] [default to False]
 **portfolio_id** | **str**| Providing a portfolio ID that corresponds with a shadow trading portfolio will result in the application of order book changes according to shadow trades made with the given portfolio. Shadow orders will also be added to the respective side of the order book and included in the calculation. An error is returned if a non shadow trading portfolio ID is given. | [optional] 

### Return type

[**OrderBookBulkStatistics**](OrderBookBulkStatistics.md)

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

# **get_order_books**
> OrderBooks get_order_books(portfolio_id=portfolio_id, product=product, products=products, with_bid_or_ask_only=with_bid_or_ask_only, with_signals=with_signals, contract_id=contract_id, contract_name=contract_name, delivery_start=delivery_start, delivery_end=delivery_end, delivery_within=delivery_within, past_hours=past_hours, delivery_area=delivery_area, delivery_from=delivery_from, delivery_to=delivery_to, with_order_details=with_order_details, contract_type=contract_type, with_portfolio_information=with_portfolio_information, with_risk_settings=with_risk_settings, with_products=with_products, active_only=active_only, with_auction_positions=with_auction_positions)

Get all orderbooks

Shows the public order book for the requested products (or all available products) for a given delivery_area. Default delivery area will be applied if left blank and default is set. This request will by default only deliver the order book statistics (best bid, best ask, last etc.) and does not include the full orderbook depth. If you wish to retrieve the full order book you can set with_order_details to \"true\". However, this should only be done if absolutely necessary, as it will negatively impact the performance. Alternatively you can request the full order book with GET /contract/contract_id/delivery_area/orders.  The order book contains portfolio relevant data (like net_position, signals etc.) and can thus be filtered by a list of portfolio IDs. Setting the limit parameter allows to limit the number of entries returned per request (sorted by ascending delivery time).  The filter with_bid_or_ask_only returns only non empty order books. If past_hours is set, the orderbook will include historical contracts that have been closed in the last X hours.  Using delivery_from and delivery_to, the order book can be further limited to a given timespan.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.contract_type import ContractType
from powerbot_client.models.order_books import OrderBooks
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
    api_instance = powerbot_client.ContractApi(api_client)
    portfolio_id = ['portfolio_id_example'] # List[str] | Providing a portfolio ID that corresponds with a shadow trading portfolio will result in the application of order book changes according to shadow trades made with the given portfolio. Shadow orders will also be added to the respective side of the order book.  **Note**: you must set this parameter if you want to see shadow trading changes applied. (optional)
    product = 'product_example' # str | DEPRECATED, use `products` instead. The list of products (e.g. Intraday_Power_D,XBID_Hour_Power) *separated by a comma*, for which the orderbook(s) should be retrieved; leave blank if you want all available orderbooks (optional)
    products = ['products_example'] # List[str] | The list of products (e.g. Intraday_Power_D,XBID_Hour_Power), for which the orderbook(s) should be retrieved; leave blank if you want all available orderbooks (optional)
    with_bid_or_ask_only = False # bool | If set to true, the returned orderbook will contain only contracts which contain at least one active bid or ask (optional) (default to False)
    with_signals = False # bool | If set to true, the returned orderbook will contain the signals applicable for the contracts (optional) (default to False)
    contract_id = [] # List[str] | limit the orderbook to an array of certain contracts only (optional) (default to [])
    contract_name = 'contract_name_example' # str | limit the orderbook to a certain contract name only (optional)
    delivery_start = '2013-10-20T19:20:30+01:00' # datetime | limit the orderbook to those contracts with the given delivery start date (optional)
    delivery_end = '2013-10-20T19:20:30+01:00' # datetime | limit the orderbook to those contracts with the given delivery end date (optional)
    delivery_within = '2013-10-20T19:20:30+01:00' # datetime | limit the orderbook to those contracts having a delivery start/end date which starts before and ends after the given parameter (optional)
    past_hours = 56 # int | DEPRECATED: Please use `delivery_from` in combination with `active_only=false`. The number of hours to look into the past in the orderbook. If this parameter is set, historic closed contracts are contained in the orderbook as well. Cannot be used in conjunction with delivery_from. (optional)
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area of the orderbook (optional)
    delivery_from = '2013-10-20T19:20:30+01:00' # datetime | Limits the orderbook to those contracts with a delivery start date >= delivery_from. Cannot be used in conjunction with past_hours. (optional)
    delivery_to = '2013-10-20T19:20:30+01:00' # datetime | Limits the orderbook to those contracts with a delivery end date <= delivery_to. (optional)
    with_order_details = False # bool | If set to true, the returned orderbook will contain all current bids and asks of each contract (full orderbook depth). *Heads up* We generally recommend to request the full orderbook depth on a per contract basis when orderbook-changed notifications are received via websocket. If you need the full orderbook depth for all contracts at once more frequently, please consider using full orderbook snapshots via websocket. (optional) (default to False)
    contract_type = PDC # ContractType | **PDC**: (default) the order book only includes predefined contracts, i.e. the normal contracts generated by the backend  UDC: the order book only includes block products, which were created as the result of a block order submitted by a member  ALL: the order book contains both, PDC and UDC contracts (optional) (default to PDC)
    with_portfolio_information = True # bool | If set to true, the portfolio_information is included in the response. (optional) (default to True)
    with_risk_settings = True # bool | If set to true, the risk_setting of the portfolio are included in the response. (optional) (default to True)
    with_products = True # bool | If set to true, the available products are included in the response. (optional) (default to True)
    active_only = True # bool | Setting this to false will also return order books for expired/inactive contracts. (optional) (default to True)
    with_auction_positions = False # bool | If set to true, the auction positions are included in the response. (optional) (default to False)

    try:
        # Get all orderbooks
        api_response = api_instance.get_order_books(portfolio_id=portfolio_id, product=product, products=products, with_bid_or_ask_only=with_bid_or_ask_only, with_signals=with_signals, contract_id=contract_id, contract_name=contract_name, delivery_start=delivery_start, delivery_end=delivery_end, delivery_within=delivery_within, past_hours=past_hours, delivery_area=delivery_area, delivery_from=delivery_from, delivery_to=delivery_to, with_order_details=with_order_details, contract_type=contract_type, with_portfolio_information=with_portfolio_information, with_risk_settings=with_risk_settings, with_products=with_products, active_only=active_only, with_auction_positions=with_auction_positions)
        print("The response of ContractApi->get_order_books:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->get_order_books: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | [**List[str]**](str.md)| Providing a portfolio ID that corresponds with a shadow trading portfolio will result in the application of order book changes according to shadow trades made with the given portfolio. Shadow orders will also be added to the respective side of the order book.  **Note**: you must set this parameter if you want to see shadow trading changes applied. | [optional] 
 **product** | **str**| DEPRECATED, use &#x60;products&#x60; instead. The list of products (e.g. Intraday_Power_D,XBID_Hour_Power) *separated by a comma*, for which the orderbook(s) should be retrieved; leave blank if you want all available orderbooks | [optional] 
 **products** | [**List[str]**](str.md)| The list of products (e.g. Intraday_Power_D,XBID_Hour_Power), for which the orderbook(s) should be retrieved; leave blank if you want all available orderbooks | [optional] 
 **with_bid_or_ask_only** | **bool**| If set to true, the returned orderbook will contain only contracts which contain at least one active bid or ask | [optional] [default to False]
 **with_signals** | **bool**| If set to true, the returned orderbook will contain the signals applicable for the contracts | [optional] [default to False]
 **contract_id** | [**List[str]**](str.md)| limit the orderbook to an array of certain contracts only | [optional] [default to []]
 **contract_name** | **str**| limit the orderbook to a certain contract name only | [optional] 
 **delivery_start** | **datetime**| limit the orderbook to those contracts with the given delivery start date | [optional] 
 **delivery_end** | **datetime**| limit the orderbook to those contracts with the given delivery end date | [optional] 
 **delivery_within** | **datetime**| limit the orderbook to those contracts having a delivery start/end date which starts before and ends after the given parameter | [optional] 
 **past_hours** | **int**| DEPRECATED: Please use &#x60;delivery_from&#x60; in combination with &#x60;active_only&#x3D;false&#x60;. The number of hours to look into the past in the orderbook. If this parameter is set, historic closed contracts are contained in the orderbook as well. Cannot be used in conjunction with delivery_from. | [optional] 
 **delivery_area** | **str**| The EIC of the delivery area of the orderbook | [optional] 
 **delivery_from** | **datetime**| Limits the orderbook to those contracts with a delivery start date &gt;&#x3D; delivery_from. Cannot be used in conjunction with past_hours. | [optional] 
 **delivery_to** | **datetime**| Limits the orderbook to those contracts with a delivery end date &lt;&#x3D; delivery_to. | [optional] 
 **with_order_details** | **bool**| If set to true, the returned orderbook will contain all current bids and asks of each contract (full orderbook depth). *Heads up* We generally recommend to request the full orderbook depth on a per contract basis when orderbook-changed notifications are received via websocket. If you need the full orderbook depth for all contracts at once more frequently, please consider using full orderbook snapshots via websocket. | [optional] [default to False]
 **contract_type** | [**ContractType**](.md)| **PDC**: (default) the order book only includes predefined contracts, i.e. the normal contracts generated by the backend  UDC: the order book only includes block products, which were created as the result of a block order submitted by a member  ALL: the order book contains both, PDC and UDC contracts | [optional] [default to PDC]
 **with_portfolio_information** | **bool**| If set to true, the portfolio_information is included in the response. | [optional] [default to True]
 **with_risk_settings** | **bool**| If set to true, the risk_setting of the portfolio are included in the response. | [optional] [default to True]
 **with_products** | **bool**| If set to true, the available products are included in the response. | [optional] [default to True]
 **active_only** | **bool**| Setting this to false will also return order books for expired/inactive contracts. | [optional] [default to True]
 **with_auction_positions** | **bool**| If set to true, the auction positions are included in the response. | [optional] [default to False]

### Return type

[**OrderBooks**](OrderBooks.md)

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

# **get_orders**
> Orders get_orders(contract_id, delivery_area, portfolio_id=portfolio_id)

Get contract full depth orderbook

This method allows you to retrieve the full public orderbook of a contract (all bids and asks) in a specific delivery area.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.orders import Orders
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
    api_instance = powerbot_client.ContractApi(api_client)
    contract_id = 'contract_id_example' # str | 
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area
    portfolio_id = 'portfolio_id_example' # str | An optional parameter that can be used by tenants with shadow trading portfolios. If the provided portfolio ID corresponds with a shadow trading portfolio, the order book changes resulting from shadow trading will be applied to the returned orders list. (optional)

    try:
        # Get contract full depth orderbook
        api_response = api_instance.get_orders(contract_id, delivery_area, portfolio_id=portfolio_id)
        print("The response of ContractApi->get_orders:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->get_orders: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **str**|  | 
 **delivery_area** | **str**| The EIC of the delivery area | 
 **portfolio_id** | **str**| An optional parameter that can be used by tenants with shadow trading portfolios. If the provided portfolio ID corresponds with a shadow trading portfolio, the order book changes resulting from shadow trading will be applied to the returned orders list. | [optional] 

### Return type

[**Orders**](Orders.md)

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

# **get_public_trades**
> List[PublicTrade] get_public_trades(contract_id, delivery_area, offset=offset, limit=limit, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp, from_execution_time=from_execution_time, to_execution_time=to_execution_time)

Get contract public trades

This method allows you to retrieve all public trades that were executed at the exchange for a given contract_id and delivery area. Please note that this function uses pagination.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.public_trade import PublicTrade
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
    api_instance = powerbot_client.ContractApi(api_client)
    contract_id = 'contract_id_example' # str | 
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area
    offset = 0 # int | Offset when loading a list of items (optional) (default to 0)
    limit = 150 # int | Limits the number of loaded items (optional) (default to 150)
    from_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=) (optional)
    to_api_timestamp = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <) (optional)
    from_execution_time = '2013-10-20T19:20:30+01:00' # datetime | from timestamp is 'inclusive' (i.e. >=) (optional)
    to_execution_time = '2013-10-20T19:20:30+01:00' # datetime | to timestamp is 'exclusive' (i.e. <) (optional)

    try:
        # Get contract public trades
        api_response = api_instance.get_public_trades(contract_id, delivery_area, offset=offset, limit=limit, from_api_timestamp=from_api_timestamp, to_api_timestamp=to_api_timestamp, from_execution_time=from_execution_time, to_execution_time=to_execution_time)
        print("The response of ContractApi->get_public_trades:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractApi->get_public_trades: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **str**|  | 
 **delivery_area** | **str**| The EIC of the delivery area | 
 **offset** | **int**| Offset when loading a list of items | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded items | [optional] [default to 150]
 **from_api_timestamp** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;) | [optional] 
 **to_api_timestamp** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;) | [optional] 
 **from_execution_time** | **datetime**| from timestamp is &#39;inclusive&#39; (i.e. &gt;&#x3D;) | [optional] 
 **to_execution_time** | **datetime**| to timestamp is &#39;exclusive&#39; (i.e. &lt;) | [optional] 

### Return type

[**List[PublicTrade]**](PublicTrade.md)

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

