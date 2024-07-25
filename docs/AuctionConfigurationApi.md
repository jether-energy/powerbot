# powerbot_client.AuctionConfigurationApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_auction_config**](AuctionConfigurationApi.md#get_auction_config) | **GET** /auction/{exchange_id}/config | Get Exchange Configuration
[**get_auction_portfolio_currency**](AuctionConfigurationApi.md#get_auction_portfolio_currency) | **GET** /auction/{exchange_id}/config/{powerbot_portfolio_id}/{delivery_area} | Get Portfolio Currency
[**set_portfolio_mapping**](AuctionConfigurationApi.md#set_portfolio_mapping) | **POST** /auction/{exchange_id}/config/portfolio | Set Portfolio Mapping


# **get_auction_config**
> AuctionConfig get_auction_config(exchange_id)

Get Exchange Configuration

Return information regarding the configuration of the auction module and the logged in exchange user. This includes the exchange portfolios with their corresponding PowerBot portfolio mapping.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_config import AuctionConfig
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
    api_instance = powerbot_client.AuctionConfigurationApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 

    try:
        # Get Exchange Configuration
        api_response = api_instance.get_auction_config(exchange_id)
        print("The response of AuctionConfigurationApi->get_auction_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionConfigurationApi->get_auction_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 

### Return type

[**AuctionConfig**](AuctionConfig.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_auction_portfolio_currency**
> AuctionExchangePortfolioCurrency get_auction_portfolio_currency(exchange_id, powerbot_portfolio_id, delivery_area)

Get Portfolio Currency

Returns the exchange portfolio name and currency associated with the provided PowerBot portfolio ID and delivery area.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_exchange_portfolio_currency import AuctionExchangePortfolioCurrency
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
    api_instance = powerbot_client.AuctionConfigurationApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    powerbot_portfolio_id = 'powerbot_portfolio_id_example' # str | 
    delivery_area = 'delivery_area_example' # str | 

    try:
        # Get Portfolio Currency
        api_response = api_instance.get_auction_portfolio_currency(exchange_id, powerbot_portfolio_id, delivery_area)
        print("The response of AuctionConfigurationApi->get_auction_portfolio_currency:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionConfigurationApi->get_auction_portfolio_currency: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **powerbot_portfolio_id** | **str**|  | 
 **delivery_area** | **str**|  | 

### Return type

[**AuctionExchangePortfolioCurrency**](AuctionExchangePortfolioCurrency.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |
**404** | Not Found |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_portfolio_mapping**
> set_portfolio_mapping(exchange_id, auction_exchange_portfolio_mapping=auction_exchange_portfolio_mapping)

Set Portfolio Mapping

Map the exchange portfolio that should be used for the given PowerBot portfolio ID. The mapping is applied to per delivery area and exchange portfolio basis. By providing a list of delivery areas one can restrict the mapping for the given delivery area(s), otherwise all accessible areas of the exchange portfolio are mapped. Following restriction are to be considered: - One PowerBot portfolio can only be mapped to one exchange portfolio + area, e.g. mapping   an already mapped powerbot portfolio to another exchange portfolio would remove the existing   mapping and set the provided one. - This operation always overwrites the existing mappings, meaning if an additional area for   the same exchange portfolio is desired, the currently mapped areas plus the new one have to   be provided. - The exchange portfolio must have access to the delivery area(s) provided in the mapping. - If a exchange portfolio has access to the same area multiple times, for example with different   currencies, the currency mapping must also be provided for those areas. - Note that when the exchange portfolio has access to multiple areas, the restrictions of   the PowerBot portfolio regarding delivery area access are prioritized.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_exchange_portfolio_mapping import AuctionExchangePortfolioMapping
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
    api_instance = powerbot_client.AuctionConfigurationApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    auction_exchange_portfolio_mapping = powerbot_client.AuctionExchangePortfolioMapping() # AuctionExchangePortfolioMapping | The exchange portfolio mapping to be set. (optional)

    try:
        # Set Portfolio Mapping
        api_instance.set_portfolio_mapping(exchange_id, auction_exchange_portfolio_mapping=auction_exchange_portfolio_mapping)
    except Exception as e:
        print("Exception when calling AuctionConfigurationApi->set_portfolio_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **auction_exchange_portfolio_mapping** | [**AuctionExchangePortfolioMapping**](AuctionExchangePortfolioMapping.md)| The exchange portfolio mapping to be set. | [optional] 

### Return type

void (empty response body)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Successful portfolio set. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

