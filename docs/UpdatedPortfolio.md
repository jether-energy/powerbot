# UpdatedPortfolio


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The name of the portfolio | [optional] 
**settings** | [**Settings**](Settings.md) |  | [optional] 

## Example

```python
from powerbot_client.models.updated_portfolio import UpdatedPortfolio

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatedPortfolio from a JSON string
updated_portfolio_instance = UpdatedPortfolio.from_json(json)
# print the JSON string representation of the object
print(UpdatedPortfolio.to_json())

# convert the object into a dict
updated_portfolio_dict = updated_portfolio_instance.to_dict()
# create an instance of UpdatedPortfolio from a dict
updated_portfolio_from_dict = UpdatedPortfolio.from_dict(updated_portfolio_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


