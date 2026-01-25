# Agent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**description** | Option<**String**> |  | [optional]
**mode** | **Mode** |  (enum: subagent, primary, all) | 
**native** | Option<**bool**> |  | [optional]
**hidden** | Option<**bool**> |  | [optional]
**top_p** | Option<**f64**> |  | [optional]
**temperature** | Option<**f64**> |  | [optional]
**color** | Option<**String**> |  | [optional]
**permission** | [**Vec<models::PermissionRule>**](PermissionRule.md) |  | 
**model** | Option<[**models::SessionPromptRequestModel**](SessionPromptRequestModel.md)> |  | [optional]
**prompt** | Option<**String**> |  | [optional]
**options** | **std::collections::HashMap<String, serde_json::Value>** |  | 
**steps** | Option<**i32**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


