# SaveSettings

The model used to save settings. Only the fields that are set will be updated.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_confirmation** | [**AuctionOrderConfirmation**](AuctionOrderConfirmation.md) |  | [optional] 

## Example

```python
from powerbot_client.models.save_settings import SaveSettings

# TODO update the JSON string below
json = "{}"
# create an instance of SaveSettings from a JSON string
save_settings_instance = SaveSettings.from_json(json)
# print the JSON string representation of the object
print(SaveSettings.to_json())

# convert the object into a dict
save_settings_dict = save_settings_instance.to_dict()
# create an instance of SaveSettings from a dict
save_settings_from_dict = SaveSettings.from_dict(save_settings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


