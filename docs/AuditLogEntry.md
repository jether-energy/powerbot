# AuditLogEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | The unique id of the log entry | [optional] 
**received** | **datetime** | The timestamp when the trading API has received the log entry. UTC timezone is used. | [optional] 
**api_key_name** | **str** | The api_key from which the audit log was generated | [optional] 
**ip_address** | **str** | The IP-address from which the audit log was generated | [optional] 
**tenant_id** | **str** | The tenant for which the log entry is applicable | [optional] 
**portfolio_id** | **str** | DEPRECATED: replaced by portfolio ids. The portfolio for which the log entry is applicable  | [optional] 
**portfolio_ids** | **List[str]** | The portfolios for which the log entry is applicable | [optional] 
**comment** | **str** | information about the cause of the change | [optional] 
**object_name** | **str** | the changed object | [optional] 
**old_value** | **object** | The old value of the changed entry | [optional] 
**new_value** | **object** | The new value of the changed entry | [optional] 

## Example

```python
from powerbot_client.models.audit_log_entry import AuditLogEntry

# TODO update the JSON string below
json = "{}"
# create an instance of AuditLogEntry from a JSON string
audit_log_entry_instance = AuditLogEntry.from_json(json)
# print the JSON string representation of the object
print(AuditLogEntry.to_json())

# convert the object into a dict
audit_log_entry_dict = audit_log_entry_instance.to_dict()
# create an instance of AuditLogEntry from a dict
audit_log_entry_from_dict = AuditLogEntry.from_dict(audit_log_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


