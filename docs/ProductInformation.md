# ProductInformation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_name** | **str** | Name of the product | [optional] 
**delivery_area** | **str** | The EIC of the delivery area of the order book&#39;s product | [optional] 
**price_currency** | **str** | the price currency of the underlying contracts | [optional] 
**quantity_unit** | **str** | the quantity unit of the underlying contracts | [optional] 
**duration_minutes** | **int** | the duration of the product&#39;s contracts in minutes | [optional] 
**location_required** | **bool** | Indicates if the product requires location information within the delivery area. | [optional] 

## Example

```python
from powerbot_client.models.product_information import ProductInformation

# TODO update the JSON string below
json = "{}"
# create an instance of ProductInformation from a JSON string
product_information_instance = ProductInformation.from_json(json)
# print the JSON string representation of the object
print(ProductInformation.to_json())

# convert the object into a dict
product_information_dict = product_information_instance.to_dict()
# create an instance of ProductInformation from a dict
product_information_from_dict = ProductInformation.from_dict(product_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


