# AtcStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**MarketState**](MarketState.md) |  | 
**status_text** | **str** |  | [optional] 
**heartbeat_as_of** | **datetime** | The timestamp when the last heartbeat of the hub-to-hub module has been received (should be not older than 5 seconds) | [optional] 

## Example

```python
from powerbot_client.models.atc_status import AtcStatus

# TODO update the JSON string below
json = "{}"
# create an instance of AtcStatus from a JSON string
atc_status_instance = AtcStatus.from_json(json)
# print the JSON string representation of the object
print(AtcStatus.to_json())

# convert the object into a dict
atc_status_dict = atc_status_instance.to_dict()
# create an instance of AtcStatus from a dict
atc_status_from_dict = AtcStatus.from_dict(atc_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


