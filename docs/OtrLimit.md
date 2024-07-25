# OtrLimit


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange** | [**Exchange**](Exchange.md) |  | 
**delivery_area** | **str** | The Energy Identification Code (EIC). | 
**otr_limit** | **float** | The order-to-trade-ratio limit for the particular exchange and delivery-area. It is calculated for each timeframe of a particular contract (XBID and LOCAL Contract). | 

## Example

```python
from powerbot_client.models.otr_limit import OtrLimit

# TODO update the JSON string below
json = "{}"
# create an instance of OtrLimit from a JSON string
otr_limit_instance = OtrLimit.from_json(json)
# print the JSON string representation of the object
print(OtrLimit.to_json())

# convert the object into a dict
otr_limit_dict = otr_limit_instance.to_dict()
# create an instance of OtrLimit from a dict
otr_limit_from_dict = OtrLimit.from_dict(otr_limit_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


