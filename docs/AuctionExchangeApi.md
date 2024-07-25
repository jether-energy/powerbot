# powerbot_client.AuctionExchangeApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auction_login**](AuctionExchangeApi.md#auction_login) | **POST** /auction/{exchange_id} | Exchange Login
[**auction_logout**](AuctionExchangeApi.md#auction_logout) | **DELETE** /auction/{exchange_id} | Exchange Logout
[**change_auction_exchange_password**](AuctionExchangeApi.md#change_auction_exchange_password) | **PUT** /auction/{exchange_id} | Change Auction Exchange Password
[**list_exchanges**](AuctionExchangeApi.md#list_exchanges) | **GET** /auction/exchanges | List Exchanges


# **auction_login**
> auction_login(exchange_id, auction_credentials=auction_credentials)

Exchange Login

Login to the exchange. A certificate is required for exchanges that use the ETS protocol.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_credentials import AuctionCredentials
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
    api_instance = powerbot_client.AuctionExchangeApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    auction_credentials = powerbot_client.AuctionCredentials() # AuctionCredentials |  (optional)

    try:
        # Exchange Login
        api_instance.auction_login(exchange_id, auction_credentials=auction_credentials)
    except Exception as e:
        print("Exception when calling AuctionExchangeApi->auction_login: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **auction_credentials** | [**AuctionCredentials**](AuctionCredentials.md)|  | [optional] 

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
**204** | successful login |  -  |
**409** | already logged in |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auction_logout**
> auction_logout(exchange_id)

Exchange Logout

Logout the from the exchange.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
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
    api_instance = powerbot_client.AuctionExchangeApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 

    try:
        # Exchange Logout
        api_instance.auction_logout(exchange_id)
    except Exception as e:
        print("Exception when calling AuctionExchangeApi->auction_logout: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 

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
**204** | Successful logout. |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **change_auction_exchange_password**
> change_auction_exchange_password(exchange_id, changed_credentials=changed_credentials)

Change Auction Exchange Password

Update the exchange login password of the currently logged-in user.  This operation is currently only supported by ETS based exchanges (EPEX, HUPX)

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.changed_credentials import ChangedCredentials
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
    api_instance = powerbot_client.AuctionExchangeApi(api_client)
    exchange_id = powerbot_client.Exchange() # Exchange | 
    changed_credentials = powerbot_client.ChangedCredentials() # ChangedCredentials |  (optional)

    try:
        # Change Auction Exchange Password
        api_instance.change_auction_exchange_password(exchange_id, changed_credentials=changed_credentials)
    except Exception as e:
        print("Exception when calling AuctionExchangeApi->change_auction_exchange_password: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | [**Exchange**](.md)|  | 
 **changed_credentials** | [**ChangedCredentials**](ChangedCredentials.md)|  | [optional] 

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
**204** | Success |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_exchanges**
> List[AuctionExchange] list_exchanges()

List Exchanges

Lists all available exchanges and their current status.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.auction_exchange import AuctionExchange
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
    api_instance = powerbot_client.AuctionExchangeApi(api_client)

    try:
        # List Exchanges
        api_response = api_instance.list_exchanges()
        print("The response of AuctionExchangeApi->list_exchanges:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuctionExchangeApi->list_exchanges: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[AuctionExchange]**](AuctionExchange.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | ok |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

