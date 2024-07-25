# OrderEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_area** | **str** | The delivery area of the orderbook&#39;s product. Mandatory in a multi-delivery-area configuration | [optional] 
**portfolio_id** | **str** |  | 
**side** | [**OrderSide**](OrderSide.md) |  | [optional] 
**prod** | **str** | The product of the order | [optional] 
**quantity** | **float** | The quantity of the order in MW. | 
**price** | **float** | The price of the order in the contract&#39;s currency based on exchange product specification (typically in \&quot;Currency per MWh\&quot;) | 
**display_qty** | **float** | Used to define display quantity of an iceberg Order. This field is required only in the case of type&#x3D;\&quot;I\&quot;. | [optional] 
**contract_id** | **str** | The contractId of the order, can be omitted if contractName is specified instead. | [optional] 
**contract_name** | **str** | Set a contract name instead of the contractId, and the attempt is made to look up the contract via it&#39;s name. If contractId is set, the contractName field is ignored. | [optional] 
**clearing_acct_type** | **str** | A label for internal use, indicating whether the order is entered on its own account (\&quot;P\&quot;) or as an agent (\&quot;A\&quot;). This label does not impact exchange functionality and is primarily used for internal categorization.  **Note**: Only relevant for M7 based exchanges (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM). | [optional] 
**ordr_exe_restriction** | [**OrderExecutionRestriction**](OrderExecutionRestriction.md) |  | [optional] [default to OrderExecutionRestriction.NON]
**pre_arranged** | **bool** | Flag which indicates if the entered order is a pre-arranged order or not. | [optional] [default to False]
**pre_arranged_acct** | **str** | Required in case of a pre-arranged order. Contains the account of the counterpart. | [optional] 
**type** | [**OrderType**](OrderType.md) |  | [optional] 
**validity_res** | [**ValidityRestriction**](ValidityRestriction.md) |  | [optional] 
**state** | **str** | * ACTI: The order is entered and immediately exposed to the market for execution. This is the default value. * HIBE: The order is entered into the backend system but not exposed to the market. | [optional] 
**validity_date** | **datetime** | mandatory in case of validityRes equals \&quot;GTD\&quot;. It is used to define the date until which the order is valid. The remaining part of the order will be removed from the order book after this point in time. | [optional] 
**txt** | **str** | Text which can be retrieved at a later point (i.e. via a trade which was triggered by the order) | [optional] 
**ppd** | **float** | Peak price delta for iceberg orders. * The ppd of buy orders must be smaller or equal than zero. * The ppd of sell orders must be greater or equal than zero. If it is omitted the system will assume a value of &#x60;0.00&#x60;. | [optional] 
**dlvry_start** | **datetime** | (optional) Start of delivery of the underlying contract. | [optional] 
**dlvry_end** | **datetime** | (optional) End of delivery of the underlying contract. | [optional] 
**expected_net_pos** | **float** | The expected net_pos (see portfolio information for more details). Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_min_net_pos** | **float** | The expected net_pos (see portfolio information for more details) plus the absolute quantity of all standing SELL-Orders for the respective contract. Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_max_net_pos** | **float** | The expected net_pos (see portfolio information for more details) plus the absolute quantity of all standing BUY-Orders for the respective contract. Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_abs_pos** | **float** | The expected abs_pos (see portfolio information for more details). Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_sell_abs_pos** | **float** | The expected abs_pos (see portfolio information for more details) plus the absolute quantity of all standing SELL-Orders for the respective contract. Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_buy_abs_pos** | **float** | The expected abs_pos (see portfolio information for more details) plus the absolute quantity of all standing BUY-Orders for the respective contract. Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**location** | **str** | Location within the delivery area. Should be only set for products with locations enabled. | [optional] 
**account_id** | **str** | Allows to set the exchange account for this order. The default account will be used if this field is unset. See available_account_ids from &#x60;GET /market&#x60; for possible values. | [optional] 

## Example

```python
from powerbot_client.models.order_entry import OrderEntry

# TODO update the JSON string below
json = "{}"
# create an instance of OrderEntry from a JSON string
order_entry_instance = OrderEntry.from_json(json)
# print the JSON string representation of the object
print(OrderEntry.to_json())

# convert the object into a dict
order_entry_dict = order_entry_instance.to_dict()
# create an instance of OrderEntry from a dict
order_entry_from_dict = OrderEntry.from_dict(order_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


