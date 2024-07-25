# RiskSettingsAndPortfolioInformation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**portfolio_information** | [**List[PortfolioInformation]**](PortfolioInformation.md) |  | [optional] 
**portfolio_risk_settings** | [**List[RiskManagementSettings]**](RiskManagementSettings.md) |  | [optional] 
**tenant_risk_settings** | [**RiskManagementSettings**](RiskManagementSettings.md) |  | [optional] 

## Example

```python
from powerbot_client.models.risk_settings_and_portfolio_information import RiskSettingsAndPortfolioInformation

# TODO update the JSON string below
json = "{}"
# create an instance of RiskSettingsAndPortfolioInformation from a JSON string
risk_settings_and_portfolio_information_instance = RiskSettingsAndPortfolioInformation.from_json(json)
# print the JSON string representation of the object
print(RiskSettingsAndPortfolioInformation.to_json())

# convert the object into a dict
risk_settings_and_portfolio_information_dict = risk_settings_and_portfolio_information_instance.to_dict()
# create an instance of RiskSettingsAndPortfolioInformation from a dict
risk_settings_and_portfolio_information_from_dict = RiskSettingsAndPortfolioInformation.from_dict(risk_settings_and_portfolio_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


