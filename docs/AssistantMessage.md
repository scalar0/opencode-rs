# AssistantMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**session_id** | **String** |  | 
**role** | **RoleEnum** |  (enum: assistant) | 
**time** | [**models::AssistantMessageTime**](AssistantMessageTime.md) |  | 
**error** | Option<[**models::AssistantMessageError**](AssistantMessageError.md)> |  | [optional]
**parent_id** | **String** |  | 
**model_id** | **String** |  | 
**provider_id** | **String** |  | 
**mode** | **String** |  | 
**agent** | **String** |  | 
**path** | [**models::AssistantMessagePath**](AssistantMessagePath.md) |  | 
**summary** | Option<**bool**> |  | [optional]
**cost** | **f64** |  | 
**tokens** | [**models::AssistantMessageTokens**](AssistantMessageTokens.md) |  | 
**variant** | Option<**String**> |  | [optional]
**finish** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


