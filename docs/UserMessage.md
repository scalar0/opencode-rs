# UserMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**session_id** | **String** |  | 
**role** | **RoleEnum** |  (enum: user) | 
**time** | [**models::UserMessageTime**](UserMessageTime.md) |  | 
**format** | Option<[**models::OutputFormat**](OutputFormat.md)> |  | [optional]
**summary** | Option<[**models::UserMessageSummary**](UserMessageSummary.md)> |  | [optional]
**agent** | **String** |  | 
**model** | [**models::SessionPromptRequestModel**](SessionPromptRequestModel.md) |  | 
**system** | Option<**String**> |  | [optional]
**tools** | Option<**std::collections::HashMap<String, bool>**> |  | [optional]
**variant** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


