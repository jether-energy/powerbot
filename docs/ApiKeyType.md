# ApiKeyType

* MASTER_API_KEY: Configured by us and exists only once. Its primary purpose is to manage tenants, portfolios and algorithms. * STANDARD_API_KEY: For most use cases like posting signals or placing orders. * TENANT_MASTER_API_KEY: Similar to the master with the restriction that it can only manage one tenant. * SCHEDULING_API_KEY: A special access key that can only get trades but across all tenants at once. * ALGO_MANAGEMENT_API_KEY: Used for managed algo hosting to dynamically provision algorithm access. * DEBUGGING_API_KEY: Allows us to have read only access to all portfolios and tenants for remote troubleshooting reasons.

## Enum

* `MASTER_API_KEY` (value: `'MASTER_API_KEY'`)

* `STANDARD_API_KEY` (value: `'STANDARD_API_KEY'`)

* `TENANT_MASTER_API_KEY` (value: `'TENANT_MASTER_API_KEY'`)

* `SCHEDULING_API_KEY` (value: `'SCHEDULING_API_KEY'`)

* `ALGO_MANAGEMENT_API_KEY` (value: `'ALGO_MANAGEMENT_API_KEY'`)

* `DEBUGGING_API_KEY` (value: `'DEBUGGING_API_KEY'`)

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


