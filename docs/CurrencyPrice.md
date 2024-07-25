# CurrencyPrice


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**price** | **float** |  | 
**currency** | **str** |  | 

## Example

```python
from powerbot_client.models.currency_price import CurrencyPrice

# TODO update the JSON string below
json = "{}"
# create an instance of CurrencyPrice from a JSON string
currency_price_instance = CurrencyPrice.from_json(json)
# print the JSON string representation of the object
print(CurrencyPrice.to_json())

# convert the object into a dict
currency_price_dict = currency_price_instance.to_dict()
# create an instance of CurrencyPrice from a dict
currency_price_from_dict = CurrencyPrice.from_dict(currency_price_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


