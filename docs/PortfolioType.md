# PortfolioType

The type of the portfolio:  * `READ_ONLY` A read-only portfolio is not allowed to add orders and modify orders to active. Deletion and deactivation of orders are still possible.  * `STANDARD`  A standard portfolio does not impose any limitations on the permissible trade actions.  * `SHADOW_TRADING` Shadow trading portfolios allow simulated trading using real-time data, without transmitting orders to the exchange. Keep in mind that a tenant with regular portfolios cannot have shadow trading portfolios or vice versa.

## Enum

* `STANDARD` (value: `'STANDARD'`)

* `READ_ONLY` (value: `'READ_ONLY'`)

* `SHADOW_TRADING` (value: `'SHADOW_TRADING'`)

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


