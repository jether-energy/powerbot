# AuctionSettings

The settings currently used.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_confirmation** | [**AuctionOrderConfirmation**](AuctionOrderConfirmation.md) |  | [optional] 

## Example

```python
from powerbot_client.models.auction_settings import AuctionSettings

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionSettings from a JSON string
auction_settings_instance = AuctionSettings.from_json(json)
# print the JSON string representation of the object
print(AuctionSettings.to_json())

# convert the object into a dict
auction_settings_dict = auction_settings_instance.to_dict()
# create an instance of AuctionSettings from a dict
auction_settings_from_dict = AuctionSettings.from_dict(auction_settings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


