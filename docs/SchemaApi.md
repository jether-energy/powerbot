# powerbot_client.SchemaApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_schema**](SchemaApi.md#add_schema) | **PUT** /schema | Add schema
[**delete_schema**](SchemaApi.md#delete_schema) | **DELETE** /schema/{type}/{name}/{version} | Delete schema
[**get_schemas**](SchemaApi.md#get_schemas) | **GET** /schema | List schemas


# **add_schema**
> ValidationSchema add_schema(validation_schema)

Add schema

Create a new schema.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.validation_schema import ValidationSchema
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
    api_instance = powerbot_client.SchemaApi(api_client)
    validation_schema = powerbot_client.ValidationSchema() # ValidationSchema | 

    try:
        # Add schema
        api_response = api_instance.add_schema(validation_schema)
        print("The response of SchemaApi->add_schema:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SchemaApi->add_schema: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validation_schema** | [**ValidationSchema**](ValidationSchema.md)|  | 

### Return type

[**ValidationSchema**](ValidationSchema.md)

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

# **delete_schema**
> delete_schema(type, name, version)

Delete schema

Deletes the schema matching the given name, type and version.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.validation_schema_type import ValidationSchemaType
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
    api_instance = powerbot_client.SchemaApi(api_client)
    type = powerbot_client.ValidationSchemaType() # ValidationSchemaType | 
    name = 'name_example' # str | 
    version = 'version_example' # str | 

    try:
        # Delete schema
        api_instance.delete_schema(type, name, version)
    except Exception as e:
        print("Exception when calling SchemaApi->delete_schema: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**ValidationSchemaType**](.md)|  | 
 **name** | **str**|  | 
 **version** | **str**|  | 

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

# **get_schemas**
> List[ValidationSchema] get_schemas(offset=offset, limit=limit, type=type, name=name, version=version)

List schemas

Retrieves all schemas matching the provided filter criteria.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.validation_schema import ValidationSchema
from powerbot_client.models.validation_schema_type import ValidationSchemaType
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
    api_instance = powerbot_client.SchemaApi(api_client)
    offset = 0 # int | Offset when loading a list of items (optional) (default to 0)
    limit = 150 # int | Limits the number of loaded items (optional) (default to 150)
    type = powerbot_client.ValidationSchemaType() # ValidationSchemaType |  (optional)
    name = 'name_example' # str |  (optional)
    version = 'version_example' # str |  (optional)

    try:
        # List schemas
        api_response = api_instance.get_schemas(offset=offset, limit=limit, type=type, name=name, version=version)
        print("The response of SchemaApi->get_schemas:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SchemaApi->get_schemas: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Offset when loading a list of items | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded items | [optional] [default to 150]
 **type** | [**ValidationSchemaType**](.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **version** | **str**|  | [optional] 

### Return type

[**List[ValidationSchema]**](ValidationSchema.md)

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

