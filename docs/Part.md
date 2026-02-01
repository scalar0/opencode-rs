# Part

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**session_id** | **String** |  | 
**message_id** | **String** |  | 
**r#type** | **TypeEnum** |  (enum: text, subtask, reasoning, file, tool, step-start, step-finish, snapshot, patch, agent, retry, compaction) | 
**text** | **String** |  | 
**synthetic** | Option<**bool**> |  | [optional]
**ignored** | Option<**bool**> |  | [optional]
**time** | [**models::UserMessageTime**](UserMessageTime.md) |  | 
**metadata** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**prompt** | **String** |  | 
**description** | **String** |  | 
**agent** | **String** |  | 
**model** | Option<[**models::SessionPromptRequestModel**](SessionPromptRequestModel.md)> |  | [optional]
**command** | Option<**String**> |  | [optional]
**mime** | **String** |  | 
**filename** | Option<**String**> |  | [optional]
**url** | **String** |  | 
**source** | Option<[**models::AgentPartSource**](AgentPartSource.md)> |  | [optional]
**call_id** | **String** |  | 
**tool** | **String** |  | 
**state** | [**models::ToolState**](ToolState.md) |  | 
**snapshot** | **String** |  | 
**reason** | **String** |  | 
**cost** | **f64** |  | 
**tokens** | [**models::AssistantMessageTokens**](AssistantMessageTokens.md) |  | 
**hash** | **String** |  | 
**files** | **Vec<String>** |  | 
**name** | **String** |  | 
**attempt** | **f64** |  | 
**error** | [**models::ApiError**](APIError.md) |  | 
**auto** | **bool** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


