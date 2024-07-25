# ApiKeyDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | A name for the API key, i.e. \&quot;K1\&quot; | 
**description** | **str** |  | [optional] 
**type** | [**ApiKeyType**](ApiKeyType.md) |  | 
**tenant_id** | **str** |  | [optional] 
**tenant_name** | **str** |  | [optional] 
**inherit_tenant_portfolios** | **bool** | If true, all tenant portfolios are accessible. | 
**portfolios** | [**List[Portfolio]**](Portfolio.md) |  | [optional] 
**tenant_risk_settings** | [**RiskManagementSettings**](RiskManagementSettings.md) |  | [optional] 
**can_read** | **bool** | Set to true, if the API key should be able to read data from the exchange (order-book, trades, etc.) | 
**can_trade** | **bool** | Set to true, if the API key should be able to trade. | 
**can_signal** | **bool** | Set to true, if the API key should be allowed to submit signals | 

## Example

```python
from powerbot_client.models.api_key_details import ApiKeyDetails

# TODO update the JSON string below
json = "{}"
# create an instance of ApiKeyDetails from a JSON string
api_key_details_instance = ApiKeyDetails.from_json(json)
# print the JSON string representation of the object
print(ApiKeyDetails.to_json())

# convert the object into a dict
api_key_details_dict = api_key_details_instance.to_dict()
# create an instance of ApiKeyDetails from a dict
api_key_details_from_dict = ApiKeyDetails.from_dict(api_key_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


