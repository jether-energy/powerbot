# Portfolio


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | A unique id (max 5 alphanumeric characters) of the portfolio | 
**name** | **str** | The name of the portfolio | 
**type** | [**PortfolioType**](PortfolioType.md) |  | 
**tenant_id** | **str** | The tenant the portfolio belongs to | 
**tenant_name** | **str** | The name of the tenant | 
**risk_management** | [**RiskManagementSettings**](RiskManagementSettings.md) |  | [optional] 
**settings** | [**Settings**](Settings.md) |  | 

## Example

```python
from powerbot_client.models.portfolio import Portfolio

# TODO update the JSON string below
json = "{}"
# create an instance of Portfolio from a JSON string
portfolio_instance = Portfolio.from_json(json)
# print the JSON string representation of the object
print(Portfolio.to_json())

# convert the object into a dict
portfolio_dict = portfolio_instance.to_dict()
# create an instance of Portfolio from a dict
portfolio_from_dict = Portfolio.from_dict(portfolio_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


