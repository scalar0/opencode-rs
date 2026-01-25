# AgentConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | Option<**String**> |  | [optional]
**temperature** | Option<**f64**> |  | [optional]
**top_p** | Option<**f64**> |  | [optional]
**prompt** | Option<**String**> |  | [optional]
**tools** | Option<**std::collections::HashMap<String, bool>**> | @deprecated Use 'permission' field instead | [optional]
**disable** | Option<**bool**> |  | [optional]
**description** | Option<**String**> | Description of when to use the agent | [optional]
**mode** | Option<**Mode**> |  (enum: subagent, primary, all) | [optional]
**hidden** | Option<**bool**> | Hide this subagent from the @ autocomplete menu (default: false, only applies to mode: subagent) | [optional]
**options** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**color** | Option<**String**> | Hex color code for the agent (e.g., #FF5733) | [optional]
**steps** | Option<**i32**> | Maximum number of agentic iterations before forcing text-only response | [optional]
**max_steps** | Option<**i32**> | @deprecated Use 'steps' field instead. | [optional]
**permission** | Option<[**models::PermissionConfig**](PermissionConfig.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


