# Orders


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** |  | [optional] 
**product** | **str** | the contract&#39;s product | [optional] 
**delivery_area** | **str** |  | [optional] 
**sequence_number** | **int** | DEPRECATED: use revision_no instead | [optional] 
**revision_no** | **int** |  | [optional] 
**delta** | **bool** | if true, the underlying bid / asks need to be interpreted as delta to the previous revision, if false the bids/ask represent a current snapshot. | [optional] 
**bid** | [**List[OrderBookEntry]**](OrderBookEntry.md) |  | [optional] 
**ask** | [**List[OrderBookEntry]**](OrderBookEntry.md) |  | [optional] 

## Example

```python
from powerbot_client.models.orders import Orders

# TODO update the JSON string below
json = "{}"
# create an instance of Orders from a JSON string
orders_instance = Orders.from_json(json)
# print the JSON string representation of the object
print(Orders.to_json())

# convert the object into a dict
orders_dict = orders_instance.to_dict()
# create an instance of Orders from a dict
orders_from_dict = Orders.from_dict(orders_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


