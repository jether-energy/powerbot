# AuctionLimits

The auction limits currently used by a tenant or portfolio regarding order entry. Limits are calculated and applied to, per minimum settlement period, currently 15 minutes. If an order entry exceeds a given limit for this overlapping time frame, the order will be rejected.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | [**Exchange**](Exchange.md) |  | [optional] 
**delivery_area** | **str** | The delivery area to which the limits apply to. | [optional] 
**max_netpos_limit** | **float** | The maximum position, e.g. buy position allowed for a single contract of an auction. | [optional] 
**min_netpos_limit** | **float** | The minimum position, e.g. sell position, allowed for a single contract of an auction. | [optional] 

## Example

```python
from powerbot_client.models.auction_limits import AuctionLimits

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionLimits from a JSON string
auction_limits_instance = AuctionLimits.from_json(json)
# print the JSON string representation of the object
print(AuctionLimits.to_json())

# convert the object into a dict
auction_limits_dict = auction_limits_instance.to_dict()
# create an instance of AuctionLimits from a dict
auction_limits_from_dict = AuctionLimits.from_dict(auction_limits_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


