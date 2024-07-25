# Signal


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The unique id of the signal (within the namespace of the emitting source) | [optional] 
**source** | **str** | The identifier of the system which emitted the signal | [optional] 
**received_at** | **datetime** | The timestamp when the signal was received | [optional] 
**updated_at** | **datetime** | The timestamp when the signal was last updated | [optional] 
**minutes_to_delivery** | **int** | The offset in minutes until delivery start, after which the signal becomes valid | [optional] 
**revision** | **int** | The number of times the signal has been updated. If the signal has never received any updates, then revision is 0 | [optional] 
**delivery_start** | **datetime** | Together with delivery_start and delivery_end specify the delivery period in which the signal is valid | [optional] 
**delivery_end** | **datetime** | Together with delivery_start and delivery_end specify the delivery period in which the signal is valid | [optional] 
**delivery_areas** | **List[str]** | DEPRECATED, use &#39;delivery_area&#39; instead. The EIC of the delivery areas for which the signal is applicable | [optional] 
**portfolio_ids** | **List[str]** | DEPRECATED, use &#39;portfolio_id&#39; instead. The portfolios for which the signal is applicable | [optional] 
**delivery_area** | **str** | The EIC of the delivery area for which the signal is applicable | [optional] 
**portfolio_id** | **str** | The portfolio for which the signal is applicable | [optional] 
**tenant_id** | **str** |  | [optional] 
**deleted** | **bool** | Indicates that the time slice was deleted. | [optional] 
**active** | **bool** | Indicates that the time slice is active. | [optional] 
**position_short** | **float** | Indicates the deficiency in MW that should or can be bought at the market (equal or greater than zero) | [optional] 
**position_long** | **float** | Indicates the surplus in MW that should or can be sold at the market (equal or greater than zero) | [optional] 
**locked** | **bool** | Locked signals can not be modified, unless the &#x60;ignore_lock&#x60; parameter is set to &#x60;true&#x60; | [optional] 
**value** | **object** | The custom content of the signal, posted as key/value pairs | [optional] 

## Example

```python
from powerbot_client.models.signal import Signal

# TODO update the JSON string below
json = "{}"
# create an instance of Signal from a JSON string
signal_instance = Signal.from_json(json)
# print the JSON string representation of the object
print(Signal.to_json())

# convert the object into a dict
signal_dict = signal_instance.to_dict()
# create an instance of Signal from a dict
signal_from_dict = Signal.from_dict(signal_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


