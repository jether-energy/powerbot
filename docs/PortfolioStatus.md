# PortfolioStatus

Information regarding the portfolios current state.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rolling_window_counts** | [**List[RollingWindowCount]**](RollingWindowCount.md) |  | [optional] 

## Example

```python
from powerbot_client.models.portfolio_status import PortfolioStatus

# TODO update the JSON string below
json = "{}"
# create an instance of PortfolioStatus from a JSON string
portfolio_status_instance = PortfolioStatus.from_json(json)
# print the JSON string representation of the object
print(PortfolioStatus.to_json())

# convert the object into a dict
portfolio_status_dict = portfolio_status_instance.to_dict()
# create an instance of PortfolioStatus from a dict
portfolio_status_from_dict = PortfolioStatus.from_dict(portfolio_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


