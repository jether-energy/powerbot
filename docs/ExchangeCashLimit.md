# ExchangeCashLimit


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **str** | The currency to limit | 
**current_limit** | **float** | The current limit for the currency | [optional] 
**configured_limit** | **float** | The configured limit for the currency | [optional] 

## Example

```python
from powerbot_client.models.exchange_cash_limit import ExchangeCashLimit

# TODO update the JSON string below
json = "{}"
# create an instance of ExchangeCashLimit from a JSON string
exchange_cash_limit_instance = ExchangeCashLimit.from_json(json)
# print the JSON string representation of the object
print(ExchangeCashLimit.to_json())

# convert the object into a dict
exchange_cash_limit_dict = exchange_cash_limit_instance.to_dict()
# create an instance of ExchangeCashLimit from a dict
exchange_cash_limit_from_dict = ExchangeCashLimit.from_dict(exchange_cash_limit_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


