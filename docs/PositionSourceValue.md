# PositionSourceValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**duration** | **int** | signal duration in minutes | [optional] 
**delivery_start** | **datetime** |  | [optional] 
**delivery_end** | **datetime** |  | [optional] 
**position_long** | **float** |  | [optional] 
**position_short** | **float** |  | [optional] 

## Example

```python
from powerbot_client.models.position_source_value import PositionSourceValue

# TODO update the JSON string below
json = "{}"
# create an instance of PositionSourceValue from a JSON string
position_source_value_instance = PositionSourceValue.from_json(json)
# print the JSON string representation of the object
print(PositionSourceValue.to_json())

# convert the object into a dict
position_source_value_dict = position_source_value_instance.to_dict()
# create an instance of PositionSourceValue from a dict
position_source_value_from_dict = PositionSourceValue.from_dict(position_source_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


