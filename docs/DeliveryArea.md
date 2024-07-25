# DeliveryArea


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eic** | **str** | The Energy Identification Code of the delivery area | 
**market_eic** | **str** | The Energy Identification Code of the market area.  **Note**: Only relevant for M7 based exchanges (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM). | [optional] 
**name** | **str** | The name of the delivery area | 
**long_name** | **str** | The long name of the delivery area.  **Note**: Only relevant for M7 based exchanges (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM). | [optional] 
**state** | **str** | The state of the delivery area, possible values are  * ACTI: The delivery area is active. It is possible to trade in that area.  * SUS: The delivery area is deactivated (hibernated). Trading in that delivery area is not possible.  * DELE: The delivery area was deleted. Trading is not possible. | 
**time_zone** | **str** | The tz database ID of the delivery area. (&#x60;null&#x60; if the user doesn&#39;t have access to any of the delivery area products) | [optional] 
**currency** | **str** | ISO 4217 currency code of the delivery area. (&#x60;null&#x60; if the user doesn&#39;t have access to any of the delivery area products) | [optional] 
**products** | **List[str]** | Products of the delivery area | 
**product_details** | [**List[ProductInformation]**](ProductInformation.md) | Products of the delivery area the exchange user has access to. | [optional] 

## Example

```python
from powerbot_client.models.delivery_area import DeliveryArea

# TODO update the JSON string below
json = "{}"
# create an instance of DeliveryArea from a JSON string
delivery_area_instance = DeliveryArea.from_json(json)
# print the JSON string representation of the object
print(DeliveryArea.to_json())

# convert the object into a dict
delivery_area_dict = delivery_area_instance.to_dict()
# create an instance of DeliveryArea from a dict
delivery_area_from_dict = DeliveryArea.from_dict(delivery_area_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


