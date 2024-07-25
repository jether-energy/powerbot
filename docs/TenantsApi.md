# powerbot_client.TenantsApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_tenant**](TenantsApi.md#add_tenant) | **POST** /tenants | Create tenant
[**delete_tenant**](TenantsApi.md#delete_tenant) | **DELETE** /tenant/{id} | Delete tenant
[**get_tenant_risk_management**](TenantsApi.md#get_tenant_risk_management) | **GET** /tenant/{id}/risk-management | Get tenant risk management settings
[**get_tenants**](TenantsApi.md#get_tenants) | **GET** /tenants | List tenants
[**update_tenant**](TenantsApi.md#update_tenant) | **PUT** /tenant/{id} | Rename tenant
[**update_tenant_risk_management_settings**](TenantsApi.md#update_tenant_risk_management_settings) | **PUT** /tenant/{id}/risk-management | Update tenant risk management settings


# **add_tenant**
> add_tenant(value)

Create tenant

Use this method to create a new tenant (company), which can later own a number of portfolios. In order to create a new tenant or modify them, you need to use the master-API-key which has been provided to you (other API keys can not create a tenant).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.new_tenant import NewTenant
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
    api_instance = powerbot_client.TenantsApi(api_client)
    value = powerbot_client.NewTenant() # NewTenant | 

    try:
        # Create tenant
        api_instance.add_tenant(value)
    except Exception as e:
        print("Exception when calling TenantsApi->add_tenant: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**NewTenant**](NewTenant.md)|  | 

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

# **delete_tenant**
> delete_tenant(id)

Delete tenant

Delete a tenant (company) from the system. A tenant can only be deleted if it has no portfolios. Only master-API-keys can delete tenants.

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
    api_instance = powerbot_client.TenantsApi(api_client)
    id = 'id_example' # str | id of the tenant (not equal to the tenant's name)

    try:
        # Delete tenant
        api_instance.delete_tenant(id)
    except Exception as e:
        print("Exception when calling TenantsApi->delete_tenant: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| id of the tenant (not equal to the tenant&#39;s name) | 

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

# **get_tenant_risk_management**
> RiskManagementSettings get_tenant_risk_management(id)

Get tenant risk management settings

Retrieves the risk management settings for a specific tenant.

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
    api_instance = powerbot_client.TenantsApi(api_client)
    id = 'id_example' # str | id of the tenant (not equal to the tenant's name)

    try:
        # Get tenant risk management settings
        api_response = api_instance.get_tenant_risk_management(id)
        print("The response of TenantsApi->get_tenant_risk_management:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TenantsApi->get_tenant_risk_management: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| id of the tenant (not equal to the tenant&#39;s name) | 

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

# **get_tenants**
> List[Tenant] get_tenants()

List tenants

Use this method to retrieve a list of all tenants (companies) the API key has access to. If you want to retrieve a full list of all tenants in the system, you need to use the master-API-key.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.tenant import Tenant
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
    api_instance = powerbot_client.TenantsApi(api_client)

    try:
        # List tenants
        api_response = api_instance.get_tenants()
        print("The response of TenantsApi->get_tenants:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TenantsApi->get_tenants: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[Tenant]**](Tenant.md)

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

# **update_tenant**
> update_tenant(id, value)

Rename tenant

Update the base data (name) of a tenant

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.updated_tenant import UpdatedTenant
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
    api_instance = powerbot_client.TenantsApi(api_client)
    id = 'id_example' # str | id of the tenant
    value = powerbot_client.UpdatedTenant() # UpdatedTenant | 

    try:
        # Rename tenant
        api_instance.update_tenant(id, value)
    except Exception as e:
        print("Exception when calling TenantsApi->update_tenant: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| id of the tenant | 
 **value** | [**UpdatedTenant**](UpdatedTenant.md)|  | 

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

# **update_tenant_risk_management_settings**
> update_tenant_risk_management_settings(id, value)

Update tenant risk management settings

Change the risk management settings for a specific tenant with this request. You need to use the master-API-key to perform this request.

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
    api_instance = powerbot_client.TenantsApi(api_client)
    id = 'id_example' # str | id of the tenant (not equal to the tenant's name)
    value = powerbot_client.RiskManagementSettings() # RiskManagementSettings | 

    try:
        # Update tenant risk management settings
        api_instance.update_tenant_risk_management_settings(id, value)
    except Exception as e:
        print("Exception when calling TenantsApi->update_tenant_risk_management_settings: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| id of the tenant (not equal to the tenant&#39;s name) | 
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

