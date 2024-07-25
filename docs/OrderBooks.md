# OrderBooks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_area** | **str** |  | [optional] 
**delivery_area_state** | **str** |  | [optional] 
**market_area_state** | **str** |  | [optional] 
**portfolios** | **List[str]** |  | [optional] 
**products** | [**List[ProductInformation]**](ProductInformation.md) | The involved products of the orderbooks | [optional] 
**contracts** | [**List[Contract]**](Contract.md) | The contracts of the orderbooks | [optional] 
**orders** | [**List[Orders]**](Orders.md) |  | [optional] 
**portfolio_risk_settings** | [**List[RiskManagementSettings]**](RiskManagementSettings.md) |  | [optional] 
**tenant_risk_settings** | [**RiskManagementSettings**](RiskManagementSettings.md) |  | [optional] 

## Example

```python
from powerbot_client.models.order_books import OrderBooks

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBooks from a JSON string
order_books_instance = OrderBooks.from_json(json)
# print the JSON string representation of the object
print(OrderBooks.to_json())

# convert the object into a dict
order_books_dict = order_books_instance.to_dict()
# create an instance of OrderBooks from a dict
order_books_from_dict = OrderBooks.from_dict(order_books_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


