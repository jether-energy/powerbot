# powerbot_client.PortfoliosApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_portfolio**](PortfoliosApi.md#add_portfolio) | **POST** /portfolios | Create portfolio
[**delete_portfolio**](PortfoliosApi.md#delete_portfolio) | **DELETE** /portfolio/{id} | Delete portfolio
[**get_portfolio_risk_management_settings**](PortfoliosApi.md#get_portfolio_risk_management_settings) | **GET** /portfolio/{id}/risk-management | Get portfolio risk management settings
[**get_portfolio_status**](PortfoliosApi.md#get_portfolio_status) | **GET** /portfolio/{id}/status | Get current state of the portfolio
[**get_portfolios**](PortfoliosApi.md#get_portfolios) | **GET** /portfolios | List portfolios
[**get_trading_activity_statistics**](PortfoliosApi.md#get_trading_activity_statistics) | **GET** /portfolios/activity | Statistics related to trading activity
[**update_portfolio**](PortfoliosApi.md#update_portfolio) | **PUT** /portfolio/{id} | Update portfolio
[**update_portfolio_risk_management_settings**](PortfoliosApi.md#update_portfolio_risk_management_settings) | **PUT** /portfolio/{id}/risk-management | Update portfolio risk management settings


# **add_portfolio**
> add_portfolio(value)

Create portfolio

Create a new portfolio for a tenant (company). A portfolio can have access to several combinations of exchange and delivery area, but only to those the tenant has access to.  The creation and modification of a portfolio is only possible when using the master-API-key or the tenant-master-API-key of the tenant which the portfolio belongs to. Portfolios which are not of regular type cannot interact with the auction module.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.new_portfolio import NewPortfolio
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
    api_instance = powerbot_client.PortfoliosApi(api_client)
    value = powerbot_client.NewPortfolio() # NewPortfolio | 

    try:
        # Create portfolio
        api_instance.add_portfolio(value)
    except Exception as e:
        print("Exception when calling PortfoliosApi->add_portfolio: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**NewPortfolio**](NewPortfolio.md)|  | 

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

# **delete_portfolio**
> delete_portfolio(id)

Delete portfolio

Delete a portfolio from the system. **Heads up** - In production, a portfolio can only be deleted if there are no trades executed in the last 7 days. This 7 day restriction does not apply to the staging environment. Trades from deleted portfolios are automatically moved to the 'PDEF' portfolio.

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
    api_instance = powerbot_client.PortfoliosApi(api_client)
    id = 'id_example' # str | id of the portfolio (not equal to the portfolio's name)

    try:
        # Delete portfolio
        api_instance.delete_portfolio(id)
    except Exception as e:
        print("Exception when calling PortfoliosApi->delete_portfolio: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| id of the portfolio (not equal to the portfolio&#39;s name) | 

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

# **get_portfolio_risk_management_settings**
> RiskManagementSettings get_portfolio_risk_management_settings(id)

Get portfolio risk management settings

Retrieves the risk management settings for a specific portfolio.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.risk_management_settings import RiskManagementSettings
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
    api_instance = powerbot_client.PortfoliosApi(api_client)
    id = 'id_example' # str | id of the portfolio (not equal to portfolio's name)

    try:
        # Get portfolio risk management settings
        api_response = api_instance.get_portfolio_risk_management_settings(id)
        print("The response of PortfoliosApi->get_portfolio_risk_management_settings:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PortfoliosApi->get_portfolio_risk_management_settings: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| id of the portfolio (not equal to portfolio&#39;s name) | 

### Return type

[**RiskManagementSettings**](RiskManagementSettings.md)

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

# **get_portfolio_status**
> PortfolioStatus get_portfolio_status(id)

Get current state of the portfolio

Returns information about the current order-counts for rolling-windows defined in order-count-limits in this portfolio and its tenant. The counts contain all orders placed or modified by this portfolio.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.portfolio_status import PortfolioStatus
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
    api_instance = powerbot_client.PortfoliosApi(api_client)
    id = 'id_example' # str | ID of the portfolio (not equal to portfolio's name)

    try:
        # Get current state of the portfolio
        api_response = api_instance.get_portfolio_status(id)
        print("The response of PortfoliosApi->get_portfolio_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PortfoliosApi->get_portfolio_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| ID of the portfolio (not equal to portfolio&#39;s name) | 

### Return type

[**PortfolioStatus**](PortfolioStatus.md)

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

# **get_portfolios**
> List[Portfolio] get_portfolios()

List portfolios

Retrieve a list of all portfolios your API key has access to. When performing this request using a master API key, all portfolios of all tenants are listed without risk settings. To retrieve the risk settings please use `GET /portfolio/{id}/risk-management`.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.portfolio import Portfolio
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
    api_instance = powerbot_client.PortfoliosApi(api_client)

    try:
        # List portfolios
        api_response = api_instance.get_portfolios()
        print("The response of PortfoliosApi->get_portfolios:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PortfoliosApi->get_portfolios: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[Portfolio]**](Portfolio.md)

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

# **get_trading_activity_statistics**
> OwnOrderTradingStatistics get_trading_activity_statistics(var_from, to, portfolio_id=portfolio_id, time_series_bucket_size_seconds=time_series_bucket_size_seconds)

Statistics related to trading activity

Gets the total count of orders added or modified at the exchange and the sum of trade volume in MWh for the time period specified. If a bucket size is specified, the time span will be segmented in buckets of that size and individual results for those time buckets will be provided in a list.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.own_order_trading_statistics import OwnOrderTradingStatistics
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
    api_instance = powerbot_client.PortfoliosApi(api_client)
    var_from = '2013-10-20T19:20:30+01:00' # datetime | start of the time period
    to = '2013-10-20T19:20:30+01:00' # datetime | end of the time period
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    time_series_bucket_size_seconds = 56 # int | bucket length in seconds, to aggregate statistics in (optional)

    try:
        # Statistics related to trading activity
        api_response = api_instance.get_trading_activity_statistics(var_from, to, portfolio_id=portfolio_id, time_series_bucket_size_seconds=time_series_bucket_size_seconds)
        print("The response of PortfoliosApi->get_trading_activity_statistics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PortfoliosApi->get_trading_activity_statistics: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_from** | **datetime**| start of the time period | 
 **to** | **datetime**| end of the time period | 
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **time_series_bucket_size_seconds** | **int**| bucket length in seconds, to aggregate statistics in | [optional] 

### Return type

[**OwnOrderTradingStatistics**](OwnOrderTradingStatistics.md)

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

# **update_portfolio**
> update_portfolio(id, value)

Update portfolio

Update the configuration of a portfolio

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.updated_portfolio import UpdatedPortfolio
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
    api_instance = powerbot_client.PortfoliosApi(api_client)
    id = 'id_example' # str | id of the portfolio
    value = powerbot_client.UpdatedPortfolio() # UpdatedPortfolio | 

    try:
        # Update portfolio
        api_instance.update_portfolio(id, value)
    except Exception as e:
        print("Exception when calling PortfoliosApi->update_portfolio: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| id of the portfolio | 
 **value** | [**UpdatedPortfolio**](UpdatedPortfolio.md)|  | 

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

# **update_portfolio_risk_management_settings**
> update_portfolio_risk_management_settings(id, value)

Update portfolio risk management settings

Change the risk management settings for a specific portfolio. You need to use the master-API-key or tenant-master-API-key to perform this operation.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.risk_management_settings import RiskManagementSettings
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
    api_instance = powerbot_client.PortfoliosApi(api_client)
    id = 'id_example' # str | id of the portfolio (not equal to the portfolio's name)
    value = powerbot_client.RiskManagementSettings() # RiskManagementSettings | 

    try:
        # Update portfolio risk management settings
        api_instance.update_portfolio_risk_management_settings(id, value)
    except Exception as e:
        print("Exception when calling PortfoliosApi->update_portfolio_risk_management_settings: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| id of the portfolio (not equal to the portfolio&#39;s name) | 
 **value** | [**RiskManagementSettings**](RiskManagementSettings.md)|  | 

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

