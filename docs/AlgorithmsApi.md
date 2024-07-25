# powerbot_client.AlgorithmsApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_algorithm**](AlgorithmsApi.md#add_algorithm) | **POST** /algorithms | Add algorithm
[**delete_algorithm**](AlgorithmsApi.md#delete_algorithm) | **DELETE** /algorithm/{algorithm_id} | Delete algorithm
[**delete_algorithm_instance**](AlgorithmsApi.md#delete_algorithm_instance) | **DELETE** /algorithm/{algorithm_id}/instance/{instance_id} | Delete algorithm instance
[**get_algo_instance_status**](AlgorithmsApi.md#get_algo_instance_status) | **GET** /algorithm/{algorithm_id}/instance/{instance_id} | Get algorithm instance details
[**get_algorithm**](AlgorithmsApi.md#get_algorithm) | **GET** /algorithm/{algorithm_id} | Get algorithm details
[**get_algorithms**](AlgorithmsApi.md#get_algorithms) | **GET** /algorithms | List algorithms
[**modify_algorithm**](AlgorithmsApi.md#modify_algorithm) | **PUT** /algorithm/{algorithm_id} | Update algorithm
[**new_instance**](AlgorithmsApi.md#new_instance) | **POST** /algorithm/{algorithm_id}/instances | Add algorithm instance
[**submit_command**](AlgorithmsApi.md#submit_command) | **PUT** /algorithm/{algorithm_id}/instance/{instance_id} | Start/Stop algorithm instance
[**submit_heart_beat**](AlgorithmsApi.md#submit_heart_beat) | **POST** /algorithm/{algorithm_id}/instance/{instance_id}/heartbeat | Submit algorithm instance heartbeat
[**update_algo_instance**](AlgorithmsApi.md#update_algo_instance) | **PATCH** /algorithm/{algorithm_id}/instance/{instance_id} | Update algorithm instance
[**update_algo_parameters**](AlgorithmsApi.md#update_algo_parameters) | **PUT** /algorithm/{algorithm_id}/instance/{instance_id}/parameters | Update algorithm instance parameter


# **add_algorithm**
> add_algorithm(value)

Add algorithm

Use this method to create a new algorithm. In order to create an algorithm, you need to use the master-API-key which has been provided to you (other API keys cannot create an algorithm). An algorithm provides a setup which contains the required information. To run an algorithm, create an instance of it and start/stop it via the given endpoint. An algorithm requires a unique id, information about how often it expects a heartbeat and how it should behave if the heartbeat is missing. The image can be any valid docker image name with a tag. The tag can not be \"latest\" to avoid accidental upgrades.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.algo_setup import AlgoSetup
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    value = powerbot_client.AlgoSetup() # AlgoSetup | 

    try:
        # Add algorithm
        api_instance.add_algorithm(value)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->add_algorithm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**AlgoSetup**](AlgoSetup.md)|  | 

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

# **delete_algorithm**
> delete_algorithm(algorithm_id)

Delete algorithm

This is only possible if the algorithm has no instances assigned to it. Only the master-API-key is allowed to delete algorithms.

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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 

    try:
        # Delete algorithm
        api_instance.delete_algorithm(algorithm_id)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->delete_algorithm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 

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

# **delete_algorithm_instance**
> delete_algorithm_instance(algorithm_id, instance_id)

Delete algorithm instance

Instances can only be deleted if they are not running. - Master-API-keys can delete all instances. - Tenant-master-API-keys can only delete instances, where the key has access to ALL portfolios specified in the instance. - Standard-API-keys and Scheduling-API-keys are not allowed to delete instances.

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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 
    instance_id = 'instance_id_example' # str | 

    try:
        # Delete algorithm instance
        api_instance.delete_algorithm_instance(algorithm_id, instance_id)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->delete_algorithm_instance: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 
 **instance_id** | **str**|  | 

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

# **get_algo_instance_status**
> AlgoInstance get_algo_instance_status(algorithm_id, instance_id)

Get algorithm instance details

Retrieves details about the algorithm instance. - Master-API-keys can always retrieve details about an algorithm-instance. - Tenant-master-API-keys can only access algorithm-instances, where the key has access to AT LEAST ONE portfolio specified in the instance. - Standard-API-keys can only access algorithm-instances, where the key has access to AT LEAST ONE portfolio specified in the instance.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.algo_instance import AlgoInstance
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 
    instance_id = 'instance_id_example' # str | 

    try:
        # Get algorithm instance details
        api_response = api_instance.get_algo_instance_status(algorithm_id, instance_id)
        print("The response of AlgorithmsApi->get_algo_instance_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->get_algo_instance_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 
 **instance_id** | **str**|  | 

### Return type

[**AlgoInstance**](AlgoInstance.md)

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

# **get_algorithm**
> AlgoDetails get_algorithm(algorithm_id)

Get algorithm details

Get details for an algorithm and its instances, depending on the access rights of the currently used API key. - The master-API-key can access every algorithm. - A tenant-master-API-key can only access algorithms where the key has access to AT LEAST ONE portfolio specified in the instances of the algorithm. - A standard-API-key can only access algorithms where the key has access to AT LEAST ONE portfolio specified in the instances of the algorithm.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.algo_details import AlgoDetails
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 

    try:
        # Get algorithm details
        api_response = api_instance.get_algorithm(algorithm_id)
        print("The response of AlgorithmsApi->get_algorithm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->get_algorithm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 

### Return type

[**AlgoDetails**](AlgoDetails.md)

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

# **get_algorithms**
> List[AlgoDetails] get_algorithms()

List algorithms

Get all algorithms and their instances, depending on the access rights of the currently used API key. - The master-API-key will get all algorithms and instances (exchange independent). - A tenant-master-API-key can retrieve only the algorithms and instances, where the key has access to AT LEAST ONE portfolio specified in the instances of the algorithm. - A standard-API-key can retrieve only the algorithms and instances, where the key has access to AT LEAST ONE portfolio specified in the instances of the algorithm.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.algo_details import AlgoDetails
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)

    try:
        # List algorithms
        api_response = api_instance.get_algorithms()
        print("The response of AlgorithmsApi->get_algorithms:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->get_algorithms: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[AlgoDetails]**](AlgoDetails.md)

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

# **modify_algorithm**
> modify_algorithm(algorithm_id, value)

Update algorithm

Modifies the fields of an algorithm. Only the master-API-key is allowed to perform this request. Only fields specified in the request will be updated. Please note that invalid values for the field \"on_missing_heartbeat\" will be ignored.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.update_algo_setup import UpdateAlgoSetup
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 
    value = powerbot_client.UpdateAlgoSetup() # UpdateAlgoSetup | 

    try:
        # Update algorithm
        api_instance.modify_algorithm(algorithm_id, value)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->modify_algorithm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 
 **value** | [**UpdateAlgoSetup**](UpdateAlgoSetup.md)|  | 

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

# **new_instance**
> AlgoInstance new_instance(algorithm_id, start_parameters, bypass_validation=bypass_validation)

Add algorithm instance

An instance is used to run an algorithm and pass parameters to it. Only the master-API-key and tenant-master-API-keys are allowed to create algorithm-instances. An instance is always bound to a tenant and a list of portfolios.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.algo_instance import AlgoInstance
from powerbot_client.models.algo_instance_parameters import AlgoInstanceParameters
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 
    start_parameters = powerbot_client.AlgoInstanceParameters() # AlgoInstanceParameters | 
    bypass_validation = False # bool | When set to true, the specified parameters will not be validated against the json schema of the algorithm. (optional) (default to False)

    try:
        # Add algorithm instance
        api_response = api_instance.new_instance(algorithm_id, start_parameters, bypass_validation=bypass_validation)
        print("The response of AlgorithmsApi->new_instance:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->new_instance: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 
 **start_parameters** | [**AlgoInstanceParameters**](AlgoInstanceParameters.md)|  | 
 **bypass_validation** | **bool**| When set to true, the specified parameters will not be validated against the json schema of the algorithm. | [optional] [default to False]

### Return type

[**AlgoInstance**](AlgoInstance.md)

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

# **submit_command**
> AlgoInstance submit_command(algorithm_id, instance_id, command, bypass_validation=bypass_validation)

Start/Stop algorithm instance

This request controls the algorithm instance. Use standard-API-keys to start/stop algorithm instances. The key needs access to ALL portfolios specified in the instance. Master-API-keys and tenant-master-API-keys can also start/stop algorithm instances, however this should only be used in exceptional cases.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.algo_command import AlgoCommand
from powerbot_client.models.algo_instance import AlgoInstance
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 
    instance_id = 'instance_id_example' # str | 
    command = powerbot_client.AlgoCommand() # AlgoCommand | 
    bypass_validation = False # bool | When set to true, the specified parameters will not be validated against the json schema of the algorithm. (optional) (default to False)

    try:
        # Start/Stop algorithm instance
        api_response = api_instance.submit_command(algorithm_id, instance_id, command, bypass_validation=bypass_validation)
        print("The response of AlgorithmsApi->submit_command:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->submit_command: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 
 **instance_id** | **str**|  | 
 **command** | [**AlgoCommand**](AlgoCommand.md)|  | 
 **bypass_validation** | **bool**| When set to true, the specified parameters will not be validated against the json schema of the algorithm. | [optional] [default to False]

### Return type

[**AlgoInstance**](AlgoInstance.md)

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

# **submit_heart_beat**
> submit_heart_beat(algorithm_id, instance_id, status)

Submit algorithm instance heartbeat

Use this endpoint to submit a heartbeat to confirm that the algorithm instance is running correctly. The heartbeat must be sent continuously, every X seconds as specified in the algorithm. Note: The \"status\" sent via this request (heartbeat-status) influences the \"status\" of the instance. In case the status of the instance is NOT \"IDLE\" (= deactivated), the following behavior applies: - heartbeat-status = OK -> status RUNNING - heartbeat-status = FAILURE -> status FAILURE

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.algo_heartbeat import AlgoHeartbeat
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 
    instance_id = 'instance_id_example' # str | 
    status = powerbot_client.AlgoHeartbeat() # AlgoHeartbeat | 

    try:
        # Submit algorithm instance heartbeat
        api_instance.submit_heart_beat(algorithm_id, instance_id, status)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->submit_heart_beat: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 
 **instance_id** | **str**|  | 
 **status** | [**AlgoHeartbeat**](AlgoHeartbeat.md)|  | 

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

# **update_algo_instance**
> AlgoInstance update_algo_instance(algorithm_id, instance_id, update_instance_request)

Update algorithm instance

Note that algorithm instance changes will only be accepted if the algorithm is in \"IDLE\" state. - Master-API-keys can update all instances. - Tenant-Master-API-keys can only update instances where the key has access to ALL portfolios specified in the instance. - Standard-API-keys can only update instances where the key has access to ALL portfolios specified in the instance.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.algo_instance import AlgoInstance
from powerbot_client.models.update_instance_request import UpdateInstanceRequest
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 
    instance_id = 'instance_id_example' # str | 
    update_instance_request = powerbot_client.UpdateInstanceRequest() # UpdateInstanceRequest | 

    try:
        # Update algorithm instance
        api_response = api_instance.update_algo_instance(algorithm_id, instance_id, update_instance_request)
        print("The response of AlgorithmsApi->update_algo_instance:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->update_algo_instance: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 
 **instance_id** | **str**|  | 
 **update_instance_request** | [**UpdateInstanceRequest**](UpdateInstanceRequest.md)|  | 

### Return type

[**AlgoInstance**](AlgoInstance.md)

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

# **update_algo_parameters**
> AlgoInstance update_algo_parameters(algorithm_id, instance_id, parameters, bypass_validation=bypass_validation)

Update algorithm instance parameter

Note that parameter changes will only be accepted if the algorithm is in \"IDLE\" state. - Master-API-keys can update all instances. - Tenant-Master-API-keys can only update instances where the key has access to ALL portfolios specified in the instance. - Standard-API-keys can only update instances where the key has access to ALL portfolios specified in the instance.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.algo_instance import AlgoInstance
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
    api_instance = powerbot_client.AlgorithmsApi(api_client)
    algorithm_id = 'algorithm_id_example' # str | 
    instance_id = 'instance_id_example' # str | 
    parameters = None # object | 
    bypass_validation = False # bool | When set to true, the specified parameters will not be validated against the json schema of the algorithm. (optional) (default to False)

    try:
        # Update algorithm instance parameter
        api_response = api_instance.update_algo_parameters(algorithm_id, instance_id, parameters, bypass_validation=bypass_validation)
        print("The response of AlgorithmsApi->update_algo_parameters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AlgorithmsApi->update_algo_parameters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algorithm_id** | **str**|  | 
 **instance_id** | **str**|  | 
 **parameters** | **object**|  | 
 **bypass_validation** | **bool**| When set to true, the specified parameters will not be validated against the json schema of the algorithm. | [optional] [default to False]

### Return type

[**AlgoInstance**](AlgoInstance.md)

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

