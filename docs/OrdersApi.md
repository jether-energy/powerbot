# powerbot_client.OrdersApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_orders**](OrdersApi.md#add_orders) | **POST** /orders/list | Place multiple orders
[**delete_orders**](OrdersApi.md#delete_orders) | **DELETE** /orders | Delete all orders
[**get_own_order_history**](OrdersApi.md#get_own_order_history) | **GET** /orders/{order_id}/history | List all revisions of an order
[**get_own_orders**](OrdersApi.md#get_own_orders) | **GET** /orders | List own orders
[**modify_order**](OrdersApi.md#modify_order) | **PUT** /order/{order_id}/{revision_no} | Modify single order
[**modify_orders**](OrdersApi.md#modify_orders) | **PUT** /orders/list | Modify multiple orders
[**update_status**](OrdersApi.md#update_status) | **PUT** /orders/status | Change status of all orders


# **add_orders**
> List[OwnOrder] add_orders(order, exec_instruction=exec_instruction, internal_trading=internal_trading, fail_on_limit_violations=fail_on_limit_violations, ignore_order_action_quota=ignore_order_action_quota, include_errors=include_errors)

Place multiple orders

Allows you to place a list of orders at once. For each requested order, one response element is generated. In case of success, an order element for each order is returned, otherwise an error message is returned. If the placed orders interact with previously placed own orders, even in other portfolios, it also returns the changes made to these orders. For further details on order elements please see the description of POST /orders.  When sending a list of orders, the list needs to have execution instructions being either \"valid\" (default) or linked. Please be aware that each order needs to be valid, otherwise all orders are declined by the exchange system. Please see documentation for further details.  The header of the return element includes a property named \"X-Total-Internal-Trades\", which tells you the number of internal trades that were involved in this request, if cross-trades were executed as internal trades.  Note that the expected net position parameters should not be used in combination with block products.  Please note that the response of an order placement is not consistent for different exchanges and different product types. Resulting from this, a user should never rely on a particular response of any order placement and always validate actions via other requests (e.g. GET/trades, GET/internal-trades, GET/orders).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.execution_instruction import ExecutionInstruction
from powerbot_client.models.order_entry import OrderEntry
from powerbot_client.models.own_order import OwnOrder
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
    api_instance = powerbot_client.OrdersApi(api_client)
    order = [powerbot_client.OrderEntry()] # List[OrderEntry] | 
    exec_instruction = VALID # ExecutionInstruction |  (optional) (default to VALID)
    internal_trading = True # bool | If set to true, cross-trade recognition will be performed before submitting the orders to the exchange. Set it to false if you don't want internal trading. If left blank, default market options will apply. If internal trading is set to \"inactive\" in the market options, an error is returned when sending orders with \"internal_trading\" set to true.  **Note:** There is no cross-trade recognition for user defined block orders, linked orders and for iceberg orders with a peak-price-delta that is not equal to 0. (optional)
    fail_on_limit_violations = True # bool | If set to true, a single limit violation will prevent sending all orders to the exchange. If set to false, orders for contracts which cause a violation won't be sent, orders which do not cause a violation will be sent to the exchange. If not set, true is taken as default value.  Please note that this only covers limit violations on limits defined by the system. Violating limits defined at exchange level on one order will not prevent correct orders from being sent to the exchange. In this case, this parameter does not have any effect. (optional) (default to True)
    ignore_order_action_quota = False # bool | The behavior on this parameter is depending on the current exchange. * M7 (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM): If set to true, the exchange OMT limit can be bypassed, as long as the current load is under L2. * Nordpool: If set to true, default exchange throttling mechanism is bypassed by PowerBot. Nordpool may still reject the request. (optional) (default to False)
    include_errors = False # bool | If this parameter is set to true, the response will contain orders that failed to be processed by the exchange, along with successfully placed orders. If set to false, only an error will be returned if any order fails. Please note that this parameter only effects the response and has no effect on how orders are treated by PowerBot or the exchange. (optional) (default to False)

    try:
        # Place multiple orders
        api_response = api_instance.add_orders(order, exec_instruction=exec_instruction, internal_trading=internal_trading, fail_on_limit_violations=fail_on_limit_violations, ignore_order_action_quota=ignore_order_action_quota, include_errors=include_errors)
        print("The response of OrdersApi->add_orders:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrdersApi->add_orders: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**List[OrderEntry]**](OrderEntry.md)|  | 
 **exec_instruction** | [**ExecutionInstruction**](.md)|  | [optional] [default to VALID]
 **internal_trading** | **bool**| If set to true, cross-trade recognition will be performed before submitting the orders to the exchange. Set it to false if you don&#39;t want internal trading. If left blank, default market options will apply. If internal trading is set to \&quot;inactive\&quot; in the market options, an error is returned when sending orders with \&quot;internal_trading\&quot; set to true.  **Note:** There is no cross-trade recognition for user defined block orders, linked orders and for iceberg orders with a peak-price-delta that is not equal to 0. | [optional] 
 **fail_on_limit_violations** | **bool**| If set to true, a single limit violation will prevent sending all orders to the exchange. If set to false, orders for contracts which cause a violation won&#39;t be sent, orders which do not cause a violation will be sent to the exchange. If not set, true is taken as default value.  Please note that this only covers limit violations on limits defined by the system. Violating limits defined at exchange level on one order will not prevent correct orders from being sent to the exchange. In this case, this parameter does not have any effect. | [optional] [default to True]
 **ignore_order_action_quota** | **bool**| The behavior on this parameter is depending on the current exchange. * M7 (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM): If set to true, the exchange OMT limit can be bypassed, as long as the current load is under L2. * Nordpool: If set to true, default exchange throttling mechanism is bypassed by PowerBot. Nordpool may still reject the request. | [optional] [default to False]
 **include_errors** | **bool**| If this parameter is set to true, the response will contain orders that failed to be processed by the exchange, along with successfully placed orders. If set to false, only an error will be returned if any order fails. Please note that this parameter only effects the response and has no effect on how orders are treated by PowerBot or the exchange. | [optional] [default to False]

### Return type

[**List[OwnOrder]**](OwnOrder.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  * X-Total-Internal-Trades - total count of internal trades involved <br>  * X-Limit-Violations - Occurred limit violations <br>  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_orders**
> List[OwnOrder] delete_orders(portfolio_id, delivery_areas=delivery_areas)

Delete all orders

Allows you to delete all orders of a portfolio

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.own_order import OwnOrder
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
    api_instance = powerbot_client.OrdersApi(api_client)
    portfolio_id = ['portfolio_id_example'] # List[str] | 
    delivery_areas = [] # List[str] |  (optional) (default to [])

    try:
        # Delete all orders
        api_response = api_instance.delete_orders(portfolio_id, delivery_areas=delivery_areas)
        print("The response of OrdersApi->delete_orders:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrdersApi->delete_orders: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | [**List[str]**](str.md)|  | 
 **delivery_areas** | [**List[str]**](str.md)|  | [optional] [default to []]

### Return type

[**List[OwnOrder]**](OwnOrder.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The orders which got deleted |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_own_order_history**
> List[OwnOrder] get_own_order_history(order_id)

List all revisions of an order

List all revisions of an order. This request keeps track of the complete order history regardless of changed IDs, as an order_id might change over time when certain modifications are applied. Therefore, querying an order_id includes all preceding IDs of the requested order.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.own_order import OwnOrder
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
    api_instance = powerbot_client.OrdersApi(api_client)
    order_id = 'order_id_example' # str | This id will be used to get all orders related.

    try:
        # List all revisions of an order
        api_response = api_instance.get_own_order_history(order_id)
        print("The response of OrdersApi->get_own_order_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrdersApi->get_own_order_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **str**| This id will be used to get all orders related. | 

### Return type

[**List[OwnOrder]**](OwnOrder.md)

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

# **get_own_orders**
> List[OwnOrder] get_own_orders(portfolio_id=portfolio_id, offset=offset, limit=limit, contract_ids=contract_ids, order_ids=order_ids, active_only=active_only, delivery_area=delivery_area, user_code=user_code, cl_ordr_id=cl_ordr_id, txt=txt, contract_id=contract_id)

List own orders

Retrieves a list of all your own orders at the exchange for an array of portfolios. Allows you to filter your orders for delivery area and/or contract_id. The return element will provide all the order_ids, the contracts the orders belong to, as well as an action status, which determines the current status of the order (added, partly executed, fully executed, etc).  Please use the action status of orders to determine if you have done trades, as trade reporting from the exchange is sometimes slightly delayed.  The parameter active_only will only list orders, which are active. The filter user_code allows you to filter orders created by a specific exchange user. Please be aware that this method uses pagination. Shadow orders can only be retrieved as long as they are active.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.own_order import OwnOrder
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
    api_instance = powerbot_client.OrdersApi(api_client)
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    offset = 0 # int | Offset when loading a list of items (optional) (default to 0)
    limit = 56 # int | Limits the number of loaded orders. If `active_only` is set to `true`, no limits are imposed (all matching orders are returned). If set to `false` the limit defaults to 150. (optional)
    contract_ids = [] # List[str] | Show only those orders related to a specific contract (optional) (default to [])
    order_ids = [] # List[str] |  (optional) (default to [])
    active_only = True # bool | Returns only those orders which are active (optional) (default to True)
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area (optional)
    user_code = 'user_code_example' # str | the exchange user code (optional)
    cl_ordr_id = 'cl_ordr_id_example' # str |  (optional)
    txt = 'txt_example' # str |  (optional)
    contract_id = [] # List[str] | Please use contract_ids instead! If contract_ids are set, this field will be ignored! (optional) (default to [])

    try:
        # List own orders
        api_response = api_instance.get_own_orders(portfolio_id=portfolio_id, offset=offset, limit=limit, contract_ids=contract_ids, order_ids=order_ids, active_only=active_only, delivery_area=delivery_area, user_code=user_code, cl_ordr_id=cl_ordr_id, txt=txt, contract_id=contract_id)
        print("The response of OrdersApi->get_own_orders:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrdersApi->get_own_orders: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **offset** | **int**| Offset when loading a list of items | [optional] [default to 0]
 **limit** | **int**| Limits the number of loaded orders. If &#x60;active_only&#x60; is set to &#x60;true&#x60;, no limits are imposed (all matching orders are returned). If set to &#x60;false&#x60; the limit defaults to 150. | [optional] 
 **contract_ids** | [**List[str]**](str.md)| Show only those orders related to a specific contract | [optional] [default to []]
 **order_ids** | [**List[str]**](str.md)|  | [optional] [default to []]
 **active_only** | **bool**| Returns only those orders which are active | [optional] [default to True]
 **delivery_area** | **str**| The EIC of the delivery area | [optional] 
 **user_code** | **str**| the exchange user code | [optional] 
 **cl_ordr_id** | **str**|  | [optional] 
 **txt** | **str**|  | [optional] 
 **contract_id** | [**List[str]**](str.md)| Please use contract_ids instead! If contract_ids are set, this field will be ignored! | [optional] [default to []]

### Return type

[**List[OwnOrder]**](OwnOrder.md)

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

# **modify_order**
> List[OwnOrder] modify_order(order_id, revision_no, internal_trading=internal_trading, fail_on_limit_violations=fail_on_limit_violations, ignore_order_action_quota=ignore_order_action_quota, modifications=modifications)

Modify single order

DEPRECATED: please use `PUT /orders/list`.  Allows you to change, activate or deactivate an existing order at the market. In order to change an order, you need to provide the order_id as well as the latest revision of the order (available via GET /orders), in order to prevent changing an order that has been changed (e.g. partly executed) since you last observed it. If the revision number is incorrect, the modification will be declined by the exchange system.  Note that some modifications do not update the order directly (e.g price/quantity changes), depending on the exchange. In this case, a new order is created with the modification and the original order is deleted.  Please note that the response of an order modification is not consistent for different exchanges and different product types. Resulting from this, a user should never rely on a particular response of any order modification and always validate actions via other requests (e.g. GET/trades, GET/internal-trades, GET/orders).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.order_modify import OrderModify
from powerbot_client.models.own_order import OwnOrder
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
    api_instance = powerbot_client.OrdersApi(api_client)
    order_id = 'order_id_example' # str | the unique order_id of the order which should be modified. **Heads up!** The order_id can change after the modification.
    revision_no = 56 # int | The revision of the order which should be modified **Heads up!** If the revision does not match with the order's current revision in the exchange backend the modification will cause an error.
    internal_trading = True # bool | If set to true, cross-trade recognition will be performed before submitting the orders to the exchange. Set it to false if you don't want internal trading. If left blank, default market options will apply. If internal trading is set to \"inactive\" in the market options, an error is returned when sending orders with \"internal_trading\" set to true.  **Note:** There is no cross-trade recognition for user defined block orders, linked orders and for iceberg orders with a peak-price-delta that is not equal to 0. (optional)
    fail_on_limit_violations = True # bool | If set to true, a single limit violation will prevent sending all orders to the exchange. If set to false, orders for contracts which cause a violation won't be sent, orders which do not cause a violation will be sent to the exchange. If not set, true is taken as default value.  Please note that this only covers limit violations on limits defined by the system. Violating limits defined at exchange level on one order will not prevent correct orders from being sent to the exchange. In this case, this parameter does not have any effect. (optional) (default to True)
    ignore_order_action_quota = False # bool | The behavior on this parameter is depending on the current exchange. * M7 (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM): If set to true, the exchange OMT limit can be bypassed, as long as the current load is under L2. * Nordpool: If set to true, default exchange throttling mechanism is bypassed by PowerBot. Nordpool may still reject the request. (optional) (default to False)
    modifications = powerbot_client.OrderModify() # OrderModify |  (optional)

    try:
        # Modify single order
        api_response = api_instance.modify_order(order_id, revision_no, internal_trading=internal_trading, fail_on_limit_violations=fail_on_limit_violations, ignore_order_action_quota=ignore_order_action_quota, modifications=modifications)
        print("The response of OrdersApi->modify_order:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrdersApi->modify_order: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **str**| the unique order_id of the order which should be modified. **Heads up!** The order_id can change after the modification. | 
 **revision_no** | **int**| The revision of the order which should be modified **Heads up!** If the revision does not match with the order&#39;s current revision in the exchange backend the modification will cause an error. | 
 **internal_trading** | **bool**| If set to true, cross-trade recognition will be performed before submitting the orders to the exchange. Set it to false if you don&#39;t want internal trading. If left blank, default market options will apply. If internal trading is set to \&quot;inactive\&quot; in the market options, an error is returned when sending orders with \&quot;internal_trading\&quot; set to true.  **Note:** There is no cross-trade recognition for user defined block orders, linked orders and for iceberg orders with a peak-price-delta that is not equal to 0. | [optional] 
 **fail_on_limit_violations** | **bool**| If set to true, a single limit violation will prevent sending all orders to the exchange. If set to false, orders for contracts which cause a violation won&#39;t be sent, orders which do not cause a violation will be sent to the exchange. If not set, true is taken as default value.  Please note that this only covers limit violations on limits defined by the system. Violating limits defined at exchange level on one order will not prevent correct orders from being sent to the exchange. In this case, this parameter does not have any effect. | [optional] [default to True]
 **ignore_order_action_quota** | **bool**| The behavior on this parameter is depending on the current exchange. * M7 (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM): If set to true, the exchange OMT limit can be bypassed, as long as the current load is under L2. * Nordpool: If set to true, default exchange throttling mechanism is bypassed by PowerBot. Nordpool may still reject the request. | [optional] [default to False]
 **modifications** | [**OrderModify**](OrderModify.md)|  | [optional] 

### Return type

[**List[OwnOrder]**](OwnOrder.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  * X-Total-Internal-Trades - total count of internal trades involved <br>  * X-Limit-Violations - Occurred limit violations <br>  |
**409** | Concurrent Modification (mismatching revision_no) |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modify_orders**
> List[OwnOrder] modify_orders(internal_trading=internal_trading, fail_on_limit_violations=fail_on_limit_violations, ignore_order_action_quota=ignore_order_action_quota, modifications=modifications)

Modify multiple orders

Allows you to change, activate or deactivate an existing order at the market. In order to change an order, you need to provide the order_id as well as the latest revision of the order (available via GET /orders), in order to prevent changing an order that has been changed (e.g. partly executed) since you last observed it. If the revision number is incorrect, the modification will be declined by the exchange system.  Note that some modifications do not update the order directly (e.g price/quantity changes), depending on the exchange. In this case, a new order with a new id is created with the modification and the original order is deleted.  Please note that the response of an order modification is not consistent for different exchanges and different product types. Resulting from this, a user should never rely on a particular response of any order modification and always validate actions via other requests (e.g. GET/trades, GET/internal-trades, GET/orders).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.order_modify_item import OrderModifyItem
from powerbot_client.models.own_order import OwnOrder
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
    api_instance = powerbot_client.OrdersApi(api_client)
    internal_trading = True # bool | If set to true, cross-trade recognition will be performed before submitting the orders to the exchange. Set it to false if you don't want internal trading. If left blank, default market options will apply. If internal trading is set to \"inactive\" in the market options, an error is returned when sending orders with \"internal_trading\" set to true.  **Note:** There is no cross-trade recognition for user defined block orders, linked orders and for iceberg orders with a peak-price-delta that is not equal to 0. (optional)
    fail_on_limit_violations = True # bool | If set to true, a single limit violation will prevent sending all orders to the exchange. If set to false, orders for contracts which cause a violation won't be sent, orders which do not cause a violation will be sent to the exchange. If not set, true is taken as default value.  Please note that this only covers limit violations on limits defined by the system. Violating limits defined at exchange level on one order will not prevent correct orders from being sent to the exchange. In this case, this parameter does not have any effect. (optional) (default to True)
    ignore_order_action_quota = False # bool | The behavior on this parameter is depending on the current exchange. * M7 (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM): If set to true, the exchange OMT limit can be bypassed, as long as the current load is under L2. * Nordpool: If set to true, default exchange throttling mechanism is bypassed by PowerBot. Nordpool may still reject the request. (optional) (default to False)
    modifications = [powerbot_client.OrderModifyItem()] # List[OrderModifyItem] |  (optional)

    try:
        # Modify multiple orders
        api_response = api_instance.modify_orders(internal_trading=internal_trading, fail_on_limit_violations=fail_on_limit_violations, ignore_order_action_quota=ignore_order_action_quota, modifications=modifications)
        print("The response of OrdersApi->modify_orders:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OrdersApi->modify_orders: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **internal_trading** | **bool**| If set to true, cross-trade recognition will be performed before submitting the orders to the exchange. Set it to false if you don&#39;t want internal trading. If left blank, default market options will apply. If internal trading is set to \&quot;inactive\&quot; in the market options, an error is returned when sending orders with \&quot;internal_trading\&quot; set to true.  **Note:** There is no cross-trade recognition for user defined block orders, linked orders and for iceberg orders with a peak-price-delta that is not equal to 0. | [optional] 
 **fail_on_limit_violations** | **bool**| If set to true, a single limit violation will prevent sending all orders to the exchange. If set to false, orders for contracts which cause a violation won&#39;t be sent, orders which do not cause a violation will be sent to the exchange. If not set, true is taken as default value.  Please note that this only covers limit violations on limits defined by the system. Violating limits defined at exchange level on one order will not prevent correct orders from being sent to the exchange. In this case, this parameter does not have any effect. | [optional] [default to True]
 **ignore_order_action_quota** | **bool**| The behavior on this parameter is depending on the current exchange. * M7 (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM): If set to true, the exchange OMT limit can be bypassed, as long as the current load is under L2. * Nordpool: If set to true, default exchange throttling mechanism is bypassed by PowerBot. Nordpool may still reject the request. | [optional] [default to False]
 **modifications** | [**List[OrderModifyItem]**](OrderModifyItem.md)|  | [optional] 

### Return type

[**List[OwnOrder]**](OwnOrder.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  * X-Total-Internal-Trades - total count of internal trades involved <br>  * X-Limit-Violations - Occurred limit violations <br>  |
**409** | Concurrent Modification (mismatching revision_no) |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_status**
> update_status(orders)

Change status of all orders

Modifies the status of all your orders at the exchange at once. Please be aware that this is an exchange backend request, which would modify the status of all orders at the exchange (including other tenants and portfolios) and can thus only be performed with api keys that have access to all portfolios within the system.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.update_status import UpdateStatus
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
    api_instance = powerbot_client.OrdersApi(api_client)
    orders = powerbot_client.UpdateStatus() # UpdateStatus | 

    try:
        # Change status of all orders
        api_instance.update_status(orders)
    except Exception as e:
        print("Exception when calling OrdersApi->update_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orders** | [**UpdateStatus**](UpdateStatus.md)|  | 

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

