# TradingArea


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | [**Exchange**](Exchange.md) |  | 
**delivery_area** | **str** | The Energy Identification Code (EIC). | 

## Example

```python
from powerbot_client.models.trading_area import TradingArea

# TODO update the JSON string below
json = "{}"
# create an instance of TradingArea from a JSON string
trading_area_instance = TradingArea.from_json(json)
# print the JSON string representation of the object
print(TradingArea.to_json())

# convert the object into a dict
trading_area_dict = trading_area_instance.to_dict()
# create an instance of TradingArea from a dict
trading_area_from_dict = TradingArea.from_dict(trading_area_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


