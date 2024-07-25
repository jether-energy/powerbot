# PortfolioInformation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**portfolio_id** | **str** |  | [optional] 
**currency** | **str** | the currency used for the request context | [optional] 
**exchange_otr** | **float** | DEPRECATED: replaced by order action quota. The exchange order-to-trade-ratio for the timeframe of the particular contract. The scope is spanning across all portfolios and tenants for this exchange. Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**tenant_otr** | **float** | DEPRECATED: replaced by order action quota. The tenant order-to-trade-ratio for the timeframe of the particular contract. The scope is spanning across all portfolios for this exchange and tenant. Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**portfolio_otr** | **float** | DEPRECATED: replaced by order action quota. The portfolio order-to-trade-ratio for the timeframe of the particular contract. The scope is this portfolio for this exchange and tenant. Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**net_cash_pos** | **float** | The portfolio related net cash position without standing orders. The scope is spanning across all exchanges on a portfolio-level for the date of the contract (converted to local time). It is calculated by the sum of all trades increasing the cash-position minus the sum all trades decreasing the cash-position. Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**trades_spending** | **float** | Sum of the costs of all trades for the given portfolio which are decreasing the cash position. Orders decreasing the cash position are BUY-Trades with a price greater than 0 and SELL-Trades with a price less than 0. The scope is spanning across all exchanges on a portfolio-level for the date of the contract (converted to local time). Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**trades_earnings** | **float** | Sum of the costs of all trades for the given portfolio which are increasing the cash position. Orders increasing the cash position are SELL-Trades with a price greater than 0 and BUY-Trades with a price less than 0. The scope is spanning across all exchanges on a portfolio-level for the date of the contract (converted to local time). Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**orders_spending** | **float** | The cash-position of all standing orders (excluding trades) for the given portfolio decreasing the net cash position. Orders decreasing the cash position are BUY-Orders with a price greater than 0 and SELL-Orders with a price less than 0. The scope is spanning across all exchanges on a portfolio-level for the date of the contract (converted to local time). Please note that the timeframe includes both XBID and LOCAL contracts. For an iceberg order the maximum spending will be calculated and used to determine if the order can be placed. | [optional] 
**orders_earnings** | **float** | The cash-position of all standing orders (excluding trades) for the given portfolio increasing the net cash position. Orders increasing the cash position are SELL-Orders with a price greater than 0 and BUY-Orders with a price less than 0. The scope is spanning across all exchanges on a portfolio-level for the date of the contract (converted to local time). Please note that the timeframe includes both XBID and LOCAL contracts. For an iceberg order the maximum earning will be calculated and used to determine if the order can be placed. | [optional] 
**net_pos** | **float** | The net position (quantity of BUY-Trades minus SELL-Trades) without standing orders for the timeframe of the particular contract, portfolio and exchange. Contracts with a timeframe that falls into the timeframe of this particular contract are not included (e.g., quarterhourly contracts do not affect the net_pos of the hourly contract). Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**net_pos_aggregate** | **float** | The aggregated net position of all contracts which fully overlap with the delivery period of this contract (e.g., for quarterhourly contracts this will include the net_pos of the quarter-hourly, the half-hourly and the hourly contracts). Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**max_net_pos_buy_with_orders** | **float** | The net_pos, including standing BUY orders for the timeframe of the particular contract, portfolio and exchange. Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**min_net_pos_sell_with_orders** | **float** | The net_pos, including standing SELL orders for the timeframe of the particular contract, portfolio and exchange. Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**abs_pos** | **float** | The absolute position (Sum of all traded quantities) without standing orders for the timeframe of the particular contract, delivery area, portfolio and exchange. Contracts with a timeframe that falls into the timeframe of this particular contract are not included (e.g., quarterhourly contracts do not affect the abs_pos of the hourly contract). Please note that the timeframe includes both XBID and LOCAL contracts. | [optional] 
**sell_abs_pos** | **float** | The abs_pos plus the absolute quantity of all standing SELL-Orders for the respective contract. | [optional] 
**buy_abs_pos** | **float** | The abs_pos plus the absolute quantity of all standing BUY-Orders for the respective contract. | [optional] 
**order_action_quota** | **float** | **Only supported for EPEX, Nord Pool, IBEX and CROPEX**  The percentage (0.0 - 1.0) of consumed order entry/modification quota calculated depending on the underlying exchange.  This value is calculated based on the following formula:  &#x60;max{short_usage/short_limit, long_usage/long_limit}&#x60; | [optional] 
**auction_positions** | [**AuctionPositions**](AuctionPositions.md) |  | [optional] 

## Example

```python
from powerbot_client.models.portfolio_information import PortfolioInformation

# TODO update the JSON string below
json = "{}"
# create an instance of PortfolioInformation from a JSON string
portfolio_information_instance = PortfolioInformation.from_json(json)
# print the JSON string representation of the object
print(PortfolioInformation.to_json())

# convert the object into a dict
portfolio_information_dict = portfolio_information_instance.to_dict()
# create an instance of PortfolioInformation from a dict
portfolio_information_from_dict = PortfolioInformation.from_dict(portfolio_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


