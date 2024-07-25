# PortfolioChanges


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**portfolio_id** | **str** |  | [optional] 
**delivery_area** | **str** |  | [optional] 
**algo_changes** | [**List[AlgoEvent]**](AlgoEvent.md) |  | [optional] 
**signal_changes** | [**List[SignalChanges]**](SignalChanges.md) |  | [optional] 
**own_trade_changes** | [**List[OwnTradeChanges]**](OwnTradeChanges.md) |  | [optional] 
**own_order_changes** | [**List[OwnOrderChanges]**](OwnOrderChanges.md) |  | [optional] 
**order_book_changes** | [**List[OrderBookChanges]**](OrderBookChanges.md) |  | [optional] 
**contract_changes** | [**List[ContractChangedEvent]**](ContractChangedEvent.md) |  | [optional] 
**public_trade_changes** | [**List[PublicTradeChanges]**](PublicTradeChanges.md) |  | [optional] 

## Example

```python
from powerbot_client.models.portfolio_changes import PortfolioChanges

# TODO update the JSON string below
json = "{}"
# create an instance of PortfolioChanges from a JSON string
portfolio_changes_instance = PortfolioChanges.from_json(json)
# print the JSON string representation of the object
print(PortfolioChanges.to_json())

# convert the object into a dict
portfolio_changes_dict = portfolio_changes_instance.to_dict()
# create an instance of PortfolioChanges from a dict
portfolio_changes_from_dict = PortfolioChanges.from_dict(portfolio_changes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


