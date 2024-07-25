# NewPortfolio


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | A unique id (max 5 alphanumeric characters) of the portfolio | 
**name** | **str** | The name of the portfolio | 
**type** | [**PortfolioType**](PortfolioType.md) |  | [optional] 
**tenant_id** | **str** | The tenant the portfolio belongs to | 
**settings** | [**Settings**](Settings.md) |  | [optional] 
**risk_management** | [**RiskManagementSettings**](RiskManagementSettings.md) |  | 

## Example

```python
from powerbot_client.models.new_portfolio import NewPortfolio

# TODO update the JSON string below
json = "{}"
# create an instance of NewPortfolio from a JSON string
new_portfolio_instance = NewPortfolio.from_json(json)
# print the JSON string representation of the object
print(NewPortfolio.to_json())

# convert the object into a dict
new_portfolio_dict = new_portfolio_instance.to_dict()
# create an instance of NewPortfolio from a dict
new_portfolio_from_dict = NewPortfolio.from_dict(new_portfolio_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


