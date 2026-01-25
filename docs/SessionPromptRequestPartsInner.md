# SessionPromptRequestPartsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**String**> |  | [optional]
**r#type** | **Type** |  (enum: text, file, agent, subtask) | 
**text** | **String** |  | 
**synthetic** | Option<**bool**> |  | [optional]
**ignored** | Option<**bool**> |  | [optional]
**time** | Option<[**models::TextPartTime**](TextPartTime.md)> |  | [optional]
**metadata** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**mime** | **String** |  | 
**filename** | Option<**String**> |  | [optional]
**url** | **String** |  | 
**source** | Option<[**models::AgentPartSource**](AgentPartSource.md)> |  | [optional]
**name** | **String** |  | 
**prompt** | **String** |  | 
**description** | **String** |  | 
**agent** | **String** |  | 
**model** | Option<[**models::SessionPromptRequestModel**](SessionPromptRequestModel.md)> |  | [optional]
**command** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


