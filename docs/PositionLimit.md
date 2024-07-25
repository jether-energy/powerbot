# PositionLimit

Controls the allowed net position per timeframe of a particular contract (XBID and LOCAL Contract) over a tenant/portfolio.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | [**Exchange**](Exchange.md) |  | 
**delivery_area** | **str** | The Energy Identification Code (EIC). | 
**min_netpos_limit** | **float** | The minimum net position limit defines how much the currently traded net position (in MW) can go below zero per timeframe of a particular contract (XBID and LOCAL Contract). This number has to be less than or equal to zero. | [optional] 
**max_netpos_limit** | **float** | The maximum net position limit defines how much the currently traded net position (in MW) can go above zero per timeframe of a particular contract (XBID and LOCAL Contract). This number has to be greater than or equal to zero. | [optional] 
**abspos_limit** | **float** | The absolute position defines the total quantity (in MW) that can possibly be traded. Calculated per timeframe of a particular contract (XBID and LOCAL Contract). | [optional] 

## Example

```python
from powerbot_client.models.position_limit import PositionLimit

# TODO update the JSON string below
json = "{}"
# create an instance of PositionLimit from a JSON string
position_limit_instance = PositionLimit.from_json(json)
# print the JSON string representation of the object
print(PositionLimit.to_json())

# convert the object into a dict
position_limit_dict = position_limit_instance.to_dict()
# create an instance of PositionLimit from a dict
position_limit_from_dict = PositionLimit.from_dict(position_limit_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


