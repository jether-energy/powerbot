# Block


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The identifier of the block. | 
**price** | **float** | The price of the block. | 
**minimum_acceptance_ratio** | **float** | The minimum acceptance ratio of the block. | 
**comment** | **str** | The comment of the block. | [optional] 
**type** | [**BlockType**](BlockType.md) |  | 
**type_value** | **str** | The value relevant for the block type. E.g. the ID of the parent block for a linked block or the group ID for an exclusive block. | [optional] 
**state** | [**BlockState**](BlockState.md) |  | [optional] 
**periods** | [**List[BlockPeriod]**](BlockPeriod.md) |  | 

## Example

```python
from powerbot_client.models.block import Block

# TODO update the JSON string below
json = "{}"
# create an instance of Block from a JSON string
block_instance = Block.from_json(json)
# print the JSON string representation of the object
print(Block.to_json())

# convert the object into a dict
block_dict = block_instance.to_dict()
# create an instance of Block from a dict
block_from_dict = Block.from_dict(block_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


