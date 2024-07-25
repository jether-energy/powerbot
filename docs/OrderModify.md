# OrderModify


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **str** | * ACTI: Activates the order. Ignored if already active. * DEAC: Deactivates (hibernates) the order. Hibernated orders are removed from the order book but are still available for modification or activation in the own orders list. * MODI: Modify the order * DELE: Delete the order | 
**validity_res** | [**ValidityRestriction**](ValidityRestriction.md) |  | [optional] 
**validity_date** | **datetime** | Set this field, if you want to update the validity date of the order. Only mandatory in case of validityRes equals \&quot;GTD\&quot;. It is used to define the date until which the order is valid. The remaining part of the order will be removed from the order book after this point in time. | [optional] 
**type** | [**OrderType**](OrderType.md) |  | [optional] 
**txt** | **str** | Set this field if you want to update the order&#39;s &#39;custom text&#39; | [optional] 
**ordr_exe_restriction** | [**OrderExecutionRestriction**](OrderExecutionRestriction.md) |  | [optional] [default to OrderExecutionRestriction.NON]
**quantity** | **float** | Set this field if you want to update the order&#39;s quantity. | [optional] 
**display_qty** | **float** | Set this field if you want to update the display quantity of an iceberg Order. This field is required only in the case of type&#x3D;\&quot;I\&quot;. | [optional] 
**price** | **float** | Set this field if you want to update the order&#39;s description. | [optional] 
**ppd** | **float** | Set this field if you want to update the Peak price delta for iceberg orders. * The ppd of buy orders must be smaller or equal than zero. * The ppd of sell orders must be greater or equal than zero. If it is omitted the system will assume a value of &#x60;0.00&#x60;. | [optional] 
**expected_net_pos** | **float** | The expected net_pos (see portfolio information for more details). Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_min_net_pos** | **float** | The expected net_pos (see portfolio information for more details) plus the absolute quantity of all standing SELL-Orders for the respective contract. Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_max_net_pos** | **float** | The expected net_pos (see portfolio information for more details) plus the absolute quantity of all standing BUY-Orders for the respective contract. Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_abs_pos** | **float** | The expected abs_pos (see portfolio information for more details). Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_sell_abs_pos** | **float** | The expected abs_pos (see portfolio information for more details) plus the absolute quantity of all standing SELL-Orders for the respective contract. Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**expected_buy_abs_pos** | **float** | The expected abs_pos (see portfolio information for more details) plus the absolute quantity of all standing BUY-Orders for the respective contract. Optional safety feature to mitigate race conditions if client and backend data are not in sync. Do not use this field for block products. | [optional] 
**location** | **str** | Location within the delivery area. Should be only set for products with locations enabled. | [optional] 

## Example

```python
from powerbot_client.models.order_modify import OrderModify

# TODO update the JSON string below
json = "{}"
# create an instance of OrderModify from a JSON string
order_modify_instance = OrderModify.from_json(json)
# print the JSON string representation of the object
print(OrderModify.to_json())

# convert the object into a dict
order_modify_dict = order_modify_instance.to_dict()
# create an instance of OrderModify from a dict
order_modify_from_dict = OrderModify.from_dict(order_modify_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


