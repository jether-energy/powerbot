# PositionSource


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **str** |  | [optional] 
**positions** | [**List[PositionSourceValue]**](PositionSourceValue.md) |  | [optional] 

## Example

```python
from powerbot_client.models.position_source import PositionSource

# TODO update the JSON string below
json = "{}"
# create an instance of PositionSource from a JSON string
position_source_instance = PositionSource.from_json(json)
# print the JSON string representation of the object
print(PositionSource.to_json())

# convert the object into a dict
position_source_dict = position_source_instance.to_dict()
# create an instance of PositionSource from a dict
position_source_from_dict = PositionSource.from_dict(position_source_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


