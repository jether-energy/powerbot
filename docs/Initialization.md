# Initialization


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**order_books** | [**List[OrderBookChanges]**](OrderBookChanges.md) |  | [optional] 

## Example

```python
from powerbot_client.models.initialization import Initialization

# TODO update the JSON string below
json = "{}"
# create an instance of Initialization from a JSON string
initialization_instance = Initialization.from_json(json)
# print the JSON string representation of the object
print(Initialization.to_json())

# convert the object into a dict
initialization_dict = initialization_instance.to_dict()
# create an instance of Initialization from a dict
initialization_from_dict = Initialization.from_dict(initialization_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


