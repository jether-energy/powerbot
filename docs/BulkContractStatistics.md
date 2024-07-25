# BulkContractStatistics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**statistics** | [**List[ContractStatistics]**](ContractStatistics.md) |  | [optional] 

## Example

```python
from powerbot_client.models.bulk_contract_statistics import BulkContractStatistics

# TODO update the JSON string below
json = "{}"
# create an instance of BulkContractStatistics from a JSON string
bulk_contract_statistics_instance = BulkContractStatistics.from_json(json)
# print the JSON string representation of the object
print(BulkContractStatistics.to_json())

# convert the object into a dict
bulk_contract_statistics_dict = bulk_contract_statistics_instance.to_dict()
# create an instance of BulkContractStatistics from a dict
bulk_contract_statistics_from_dict = BulkContractStatistics.from_dict(bulk_contract_statistics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


