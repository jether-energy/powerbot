# BulkSignal


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **str** | The identifier of the system which emitted the signal | 
**delivery_start** | **datetime** | delivery_start together with delivery_end define the contracts for which the signal is valid for | [optional] 
**delivery_end** | **datetime** | delivery_start together with delivery_end define the contracts for which the signal is valid for | [optional] 
**delivery_areas** | **List[str]** | The EIC of the delivery areas for which the signal is applicable | [optional] 
**portfolio_ids** | **List[str]** | The portfolios for which the signal is applicable | [optional] 
**position_long** | **float** | Indicates the surplus in MW that should or can be sold at the market (equal or greater than zero) | [optional] 
**position_short** | **float** | Indicates the deficiency in MW that should or can be bought at the market (equal or greater than zero) | [optional] 
**locked** | **bool** | Setting this value to true marks this signal as locked. Locked signals can&#39;t be modified, unless the &#x60;ignore_lock&#x60; parameter is set to &#x60;true&#x60;. This can be useful if a signal needs to be manually adjusted, and you don&#39;t want automated signal posting programs to overwrite it again. | [optional] 
**value** | **object** | The custom content of the signal, posted as key/value pairs | [optional] 

## Example

```python
from powerbot_client.models.bulk_signal import BulkSignal

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSignal from a JSON string
bulk_signal_instance = BulkSignal.from_json(json)
# print the JSON string representation of the object
print(BulkSignal.to_json())

# convert the object into a dict
bulk_signal_dict = bulk_signal_instance.to_dict()
# create an instance of BulkSignal from a dict
bulk_signal_from_dict = BulkSignal.from_dict(bulk_signal_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


