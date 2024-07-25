# DeliveryAreaCurrencyMapping

A optional configuration parameter in case the exchange portfolio has the same delivery area in multiple currencies. In that case it is required to provide currency mapping for that area. Areas without conflict do not have to be provided.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_area** | **str** | The delivery area of the mapping. | 
**currency** | **str** | The currency of the mapping. | 

## Example

```python
from powerbot_client.models.delivery_area_currency_mapping import DeliveryAreaCurrencyMapping

# TODO update the JSON string below
json = "{}"
# create an instance of DeliveryAreaCurrencyMapping from a JSON string
delivery_area_currency_mapping_instance = DeliveryAreaCurrencyMapping.from_json(json)
# print the JSON string representation of the object
print(DeliveryAreaCurrencyMapping.to_json())

# convert the object into a dict
delivery_area_currency_mapping_dict = delivery_area_currency_mapping_instance.to_dict()
# create an instance of DeliveryAreaCurrencyMapping from a dict
delivery_area_currency_mapping_from_dict = DeliveryAreaCurrencyMapping.from_dict(delivery_area_currency_mapping_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


