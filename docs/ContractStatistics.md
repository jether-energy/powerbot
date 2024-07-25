# ContractStatistics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_start** | **datetime** | The delivery start time of the contract | [optional] 
**delivery_end** | **datetime** | The delivery end time of the contract | [optional] 
**contract_id** | **List[str]** |  | [optional] 
**volume** | **float** | The total volume of all trades  All trades of contracts with the requested delivery period are included. Each side of a trade is counted separately, so a trade with both sides in one of the requested delivery areas gets counted twice. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 
**average_price** | **float** | The volume weighted average price  All trades of contracts with the requested delivery period are included. Each side of a trade is counted separately, so a trade with both sides in one of the requested delivery areas gets counted twice. Self trades registered at the exchange and internal trades registered by PowerBot are excluded. | [optional] 

## Example

```python
from powerbot_client.models.contract_statistics import ContractStatistics

# TODO update the JSON string below
json = "{}"
# create an instance of ContractStatistics from a JSON string
contract_statistics_instance = ContractStatistics.from_json(json)
# print the JSON string representation of the object
print(ContractStatistics.to_json())

# convert the object into a dict
contract_statistics_dict = contract_statistics_instance.to_dict()
# create an instance of ContractStatistics from a dict
contract_statistics_from_dict = ContractStatistics.from_dict(contract_statistics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


