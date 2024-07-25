# BulkSignalResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**source** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**status_text** | **str** |  | [optional] 

## Example

```python
from powerbot_client.models.bulk_signal_response import BulkSignalResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSignalResponse from a JSON string
bulk_signal_response_instance = BulkSignalResponse.from_json(json)
# print the JSON string representation of the object
print(BulkSignalResponse.to_json())

# convert the object into a dict
bulk_signal_response_dict = bulk_signal_response_instance.to_dict()
# create an instance of BulkSignalResponse from a dict
bulk_signal_response_from_dict = BulkSignalResponse.from_dict(bulk_signal_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


