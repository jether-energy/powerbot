# ContractReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** | The contract&#39;s unique id | [optional] 
**name** | **str** | The name of the contract | [optional] 
**delivery_start** | **datetime** | The delivery start time (UTC) of the contract | [optional] 
**delivery_end** | **datetime** | The delivery end time (UTC) of the contract | [optional] 

## Example

```python
from powerbot_client.models.contract_reference import ContractReference

# TODO update the JSON string below
json = "{}"
# create an instance of ContractReference from a JSON string
contract_reference_instance = ContractReference.from_json(json)
# print the JSON string representation of the object
print(ContractReference.to_json())

# convert the object into a dict
contract_reference_dict = contract_reference_instance.to_dict()
# create an instance of ContractReference from a dict
contract_reference_from_dict = ContractReference.from_dict(contract_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


