# RiskManagementSettings

Controls the applied risk management settings. If a limit is set on multiple levels (e.g. tenant and portfolio), the stricter limit is applied.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] [readonly] 
**trading_areas** | [**List[TradingArea]**](TradingArea.md) |  | [optional] 
**position_limits** | [**List[PositionLimit]**](PositionLimit.md) |  | [optional] 
**cash_limits** | [**List[CashLimit]**](CashLimit.md) |  | [optional] 
**otr_limits** | [**List[OtrLimit]**](OtrLimit.md) |  | [optional] 
**order_action_quota_limit** | [**List[OrderActionQuotaLimit]**](OrderActionQuotaLimit.md) |  | [optional] 
**order_count_limit** | [**List[OrderCountLimit]**](OrderCountLimit.md) | There can be multiple limits for an exchange to define e.g. a limit for the last minute and another one for the last 15 minutes. | [optional] 
**auction_limits** | [**List[AuctionLimits]**](AuctionLimits.md) |  | [optional] 

## Example

```python
from powerbot_client.models.risk_management_settings import RiskManagementSettings

# TODO update the JSON string below
json = "{}"
# create an instance of RiskManagementSettings from a JSON string
risk_management_settings_instance = RiskManagementSettings.from_json(json)
# print the JSON string representation of the object
print(RiskManagementSettings.to_json())

# convert the object into a dict
risk_management_settings_dict = risk_management_settings_instance.to_dict()
# create an instance of RiskManagementSettings from a dict
risk_management_settings_from_dict = RiskManagementSettings.from_dict(risk_management_settings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


