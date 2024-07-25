# CashLimit

Cash limits are configured per currency and allow you to control the daily net cash position (e.g. - 50.000 EUR to +100.000 EUR) on a trading day. The scope is spanning across all exchanges on a tenant/portfolio-level for the date of the contract (converted to local time).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**direction** | **str** |  | 
**currency** | **str** | The currency to limit | 
**limit** | **float** | The limit for the currency. Calculated over all contracts per day (converted to local time). | 
**exchange** | [**Exchange**](Exchange.md) |  | 

## Example

```python
from powerbot_client.models.cash_limit import CashLimit

# TODO update the JSON string below
json = "{}"
# create an instance of CashLimit from a JSON string
cash_limit_instance = CashLimit.from_json(json)
# print the JSON string representation of the object
print(CashLimit.to_json())

# convert the object into a dict
cash_limit_dict = cash_limit_instance.to_dict()
# create an instance of CashLimit from a dict
cash_limit_from_dict = CashLimit.from_dict(cash_limit_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


