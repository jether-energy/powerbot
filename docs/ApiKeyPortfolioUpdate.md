# ApiKeyPortfolioUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**portfolio_ids** | **List[str]** | The IDs of the portfolios the API key is allowed to access. This property is mutually exclusive with &#x60;inherit_tenant_portfolios&#x60;. | [optional] 
**inherit_tenant_portfolios** | **bool** | If true, all tenant portfolios will be accessible. This property is mutually exclusive with the &#x60;portfolio_ids&#x60; property. | [optional] [default to False]

## Example

```python
from powerbot_client.models.api_key_portfolio_update import ApiKeyPortfolioUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ApiKeyPortfolioUpdate from a JSON string
api_key_portfolio_update_instance = ApiKeyPortfolioUpdate.from_json(json)
# print the JSON string representation of the object
print(ApiKeyPortfolioUpdate.to_json())

# convert the object into a dict
api_key_portfolio_update_dict = api_key_portfolio_update_instance.to_dict()
# create an instance of ApiKeyPortfolioUpdate from a dict
api_key_portfolio_update_from_dict = ApiKeyPortfolioUpdate.from_dict(api_key_portfolio_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


