# ContractItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | **str** |  | [optional] 
**product** | **str** |  | [optional] 
**contract_id** | **str** | The contract&#39;s unique id | [optional] 
**type** | [**ContractType**](ContractType.md) |  | [optional] [default to ContractType.PDC]
**revision_no** | **int** |  | [optional] 
**state** | **str** |  | [optional] 
**name** | **str** | The name of the contract | [optional] 
**delivery_start** | **datetime** | The delivery start time (UTC) of the contract | [optional] 
**delivery_end** | **datetime** | The delivery end time (UTC) of the contract | [optional] 
**contract_details** | **object** |  | [optional] 
**delivery_areas** | **List[str]** |  | [optional] 
**delivery_area_states** | [**List[DeliveryAreaState]**](DeliveryAreaState.md) |  | [optional] 

## Example

```python
from powerbot_client.models.contract_item import ContractItem

# TODO update the JSON string below
json = "{}"
# create an instance of ContractItem from a JSON string
contract_item_instance = ContractItem.from_json(json)
# print the JSON string representation of the object
print(ContractItem.to_json())

# convert the object into a dict
contract_item_dict = contract_item_instance.to_dict()
# create an instance of ContractItem from a dict
contract_item_from_dict = ContractItem.from_dict(contract_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


