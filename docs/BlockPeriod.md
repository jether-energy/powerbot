# BlockPeriod

A period of a block.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **str** | The contract ID of the period. | 
**quantity** | **float** | The quantity of the period. | 

## Example

```python
from powerbot_client.models.block_period import BlockPeriod

# TODO update the JSON string below
json = "{}"
# create an instance of BlockPeriod from a JSON string
block_period_instance = BlockPeriod.from_json(json)
# print the JSON string representation of the object
print(BlockPeriod.to_json())

# convert the object into a dict
block_period_dict = block_period_instance.to_dict()
# create an instance of BlockPeriod from a dict
block_period_from_dict = BlockPeriod.from_dict(block_period_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


