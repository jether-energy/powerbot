# OrderModifyItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **str** |  | 
**revision_no** | **int** | The revision of the order that should be modified. If the exchange already has a newer revision, the modification will be rejected.  This field is optional if the order action is &#x60;DELE&#x60; or &#x60;DEAC&#x60;. In this case, the system will try to set the last known revision number. | [optional] 
**changes** | [**OrderModify**](OrderModify.md) |  | 

## Example

```python
from powerbot_client.models.order_modify_item import OrderModifyItem

# TODO update the JSON string below
json = "{}"
# create an instance of OrderModifyItem from a JSON string
order_modify_item_instance = OrderModifyItem.from_json(json)
# print the JSON string representation of the object
print(OrderModifyItem.to_json())

# convert the object into a dict
order_modify_item_dict = order_modify_item_instance.to_dict()
# create an instance of OrderModifyItem from a dict
order_modify_item_from_dict = OrderModifyItem.from_dict(order_modify_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


