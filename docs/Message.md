# Message

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**session_id** | **String** |  | 
**role** | **RoleEnum** |  (enum: assistant) | 
**time** | [**models::AssistantMessageTime**](AssistantMessageTime.md) |  | 
**format** | Option<[**models::OutputFormat**](OutputFormat.md)> |  | [optional]
**summary** | Option<**bool**> |  | [optional]
**agent** | **String** |  | 
**model** | [**models::SessionPromptRequestModel**](SessionPromptRequestModel.md) |  | 
**system** | Option<**String**> |  | [optional]
**tools** | Option<**std::collections::HashMap<String, bool>**> |  | [optional]
**variant** | Option<**String**> |  | [optional]
**error** | Option<[**models::AssistantMessageError**](AssistantMessageError.md)> |  | [optional]
**parent_id** | **String** |  | 
**model_id** | **String** |  | 
**provider_id** | **String** |  | 
**mode** | **String** |  | 
**path** | [**models::AssistantMessagePath**](AssistantMessagePath.md) |  | 
**cost** | **f64** |  | 
**tokens** | [**models::AssistantMessageTokens**](AssistantMessageTokens.md) |  | 
**structured** | Option<**serde_json::Value**> |  | [optional]
**finish** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


