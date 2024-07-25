# MarketStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_version** | **str** |  | [optional] 
**exchange** | [**Exchange**](Exchange.md) |  | [optional] 
**exchange_mode** | **str** |  | [optional] 
**exchange_user** | **str** | The user that is use to authenticate with the exchange | [optional] 
**app_id** | **str** |  | [optional] 
**api_timestamp** | **datetime** | The timestamp when the status of the market was last checked. | [optional] 
**certificate_expiration_date** | **datetime** | The expiration date of the client certificate | [optional] 
**status** | [**MarketState**](MarketState.md) |  | 
**options** | [**MarketOptions**](MarketOptions.md) |  | [optional] 
**atc_status** | [**AtcStatus**](AtcStatus.md) |  | [optional] 
**urls** | **List[str]** | The urls of the exchange&#39;s backend system the server is connected to | [optional] 
**products** | **List[str]** | DEPRECATED: Use &#x60;GET /delivery-areas&#x60; or &#x60;GET /delivery-area/{area_id}&#x60; instead. Exchange&#39;s products which the server is linked with | [optional] 
**market_area_id** | **str** | The market the server is configured to operate in | [optional] 
**delivery_area_id** | **str** | The default delivery area (EIC) the server is configured to operate in | [optional] 
**available_delivery_area_ids** | **List[str]** | The available delivery areas EICs | [optional] 
**inactive_delivery_area_ids** | **List[str]** | Delivery areas that are accessible through the exchange API, but not unlocked in PowerBot. | [optional] 
**exchange_limits** | [**List[ExchangeCashLimit]**](ExchangeCashLimit.md) |  | [optional] 
**session_id** | **str** | The current session id with the exchange | [optional] 
**logged_in_since** | **datetime** | The timestamp (UTC) of the start of the current connection to the exchange. | [optional] 
**heartbeat_as_of** | **datetime** | The timestamp when the last heartbeat of the backend system has been received (should be not older than 5 seconds) | [optional] 
**heartbeat_content** | **str** | The content of the last heartbeat | [optional] 
**mfa_supported** | **bool** | Indicates whether the exchange supports multi-factor authentication | [optional] 
**mfa_secret** | **str** | The MFA secret.  **Note**: only set when it was generated. | [optional] 
**messages** | **List[str]** | Messages explaining the state of the market | [optional] 
**mode** | **str** |  | [optional] 
**order_action_quota** | **float** | **Only supported for EPEX, Nord Pool, IBEX and CROPEX**  The percentage (0.0 - 1.0) of consumed order entry/modification quota calculated depending on the underlying exchange.  This value is calculated based on the following formula:  &#x60;max{short_usage/short_limit, long_usage/long_limit}&#x60; | [optional] 
**available_account_ids** | **List[str]** | The available exchange account IDs | [optional] 

## Example

```python
from powerbot_client.models.market_status import MarketStatus

# TODO update the JSON string below
json = "{}"
# create an instance of MarketStatus from a JSON string
market_status_instance = MarketStatus.from_json(json)
# print the JSON string representation of the object
print(MarketStatus.to_json())

# convert the object into a dict
market_status_dict = market_status_instance.to_dict()
# create an instance of MarketStatus from a dict
market_status_from_dict = MarketStatus.from_dict(market_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


