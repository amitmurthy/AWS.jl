# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: iot_events

using Compat
using UUIDs
"""
    CreateDetectorModel()

Creates a detector model.

# Required Parameters
- `detectorModelDefinition`: Information that defines how the detectors operate.
- `detectorModelName`: The name of the detector model.
- `roleArn`: The ARN of the role that grants permission to AWS IoT Events to perform its operations.

# Optional Parameters
- `detectorModelDescription`: A brief description of the detector model.
- `evaluationMethod`: Information about the order in which events are evaluated and how actions are executed. 
- `key`: The input attribute key used to identify a device or system to create a detector (an instance of the detector model) and then to route each input received to the appropriate detector (instance). This parameter uses a JSON-path expression in the message payload of each input to specify the attribute-value pair that is used to identify the device associated with the input.
- `tags`: Metadata that can be used to manage the detector model.
"""

CreateDetectorModel(detectorModelDefinition, detectorModelName, roleArn; aws_config::AWSConfig=global_aws_config()) = iot_events("POST", "/detector-models", Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition, "detectorModelName"=>detectorModelName, "roleArn"=>roleArn); aws_config=aws_config)
CreateDetectorModel(detectorModelDefinition, detectorModelName, roleArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("POST", "/detector-models", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition, "detectorModelName"=>detectorModelName, "roleArn"=>roleArn), args)); aws_config=aws_config)

"""
    CreateInput()

Creates an input.

# Required Parameters
- `inputDefinition`: The definition of the input.
- `inputName`: The name you want to give to the input.

# Optional Parameters
- `inputDescription`: A brief description of the input.
- `tags`: Metadata that can be used to manage the input.
"""

CreateInput(inputDefinition, inputName; aws_config::AWSConfig=global_aws_config()) = iot_events("POST", "/inputs", Dict{String, Any}("inputDefinition"=>inputDefinition, "inputName"=>inputName); aws_config=aws_config)
CreateInput(inputDefinition, inputName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("POST", "/inputs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("inputDefinition"=>inputDefinition, "inputName"=>inputName), args)); aws_config=aws_config)

"""
    DeleteDetectorModel()

Deletes a detector model. Any active instances of the detector model are also deleted.

# Required Parameters
- `detectorModelName`: The name of the detector model to be deleted.

"""

DeleteDetectorModel(detectorModelName; aws_config::AWSConfig=global_aws_config()) = iot_events("DELETE", "/detector-models/$(detectorModelName)"; aws_config=aws_config)
DeleteDetectorModel(detectorModelName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("DELETE", "/detector-models/$(detectorModelName)", args; aws_config=aws_config)

"""
    DeleteInput()

Deletes an input.

# Required Parameters
- `inputName`: The name of the input to delete.

"""

DeleteInput(inputName; aws_config::AWSConfig=global_aws_config()) = iot_events("DELETE", "/inputs/$(inputName)"; aws_config=aws_config)
DeleteInput(inputName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("DELETE", "/inputs/$(inputName)", args; aws_config=aws_config)

"""
    DescribeDetectorModel()

Describes a detector model. If the version parameter is not specified, information about the latest version is returned.

# Required Parameters
- `detectorModelName`: The name of the detector model.

# Optional Parameters
- `version`: The version of the detector model.
"""

DescribeDetectorModel(detectorModelName; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/detector-models/$(detectorModelName)"; aws_config=aws_config)
DescribeDetectorModel(detectorModelName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/detector-models/$(detectorModelName)", args; aws_config=aws_config)

"""
    DescribeInput()

Describes an input.

# Required Parameters
- `inputName`: The name of the input.

"""

DescribeInput(inputName; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/inputs/$(inputName)"; aws_config=aws_config)
DescribeInput(inputName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/inputs/$(inputName)", args; aws_config=aws_config)

"""
    DescribeLoggingOptions()

Retrieves the current settings of the AWS IoT Events logging options.

"""

DescribeLoggingOptions(; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/logging"; aws_config=aws_config)
DescribeLoggingOptions(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/logging", args; aws_config=aws_config)

"""
    ListDetectorModelVersions()

Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.

# Required Parameters
- `detectorModelName`: The name of the detector model whose versions are returned.

# Optional Parameters
- `maxResults`: The maximum number of results to return at one time.
- `nextToken`: The token for the next set of results.
"""

ListDetectorModelVersions(detectorModelName; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/detector-models/$(detectorModelName)/versions"; aws_config=aws_config)
ListDetectorModelVersions(detectorModelName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/detector-models/$(detectorModelName)/versions", args; aws_config=aws_config)

"""
    ListDetectorModels()

Lists the detector models you have created. Only the metadata associated with each detector model is returned.

# Optional Parameters
- `maxResults`: The maximum number of results to return at one time.
- `nextToken`: The token for the next set of results.
"""

ListDetectorModels(; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/detector-models"; aws_config=aws_config)
ListDetectorModels(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/detector-models", args; aws_config=aws_config)

"""
    ListInputs()

Lists the inputs you have created.

# Optional Parameters
- `maxResults`: The maximum number of results to return at one time.
- `nextToken`: The token for the next set of results.
"""

ListInputs(; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/inputs"; aws_config=aws_config)
ListInputs(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/inputs", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags (metadata) you have assigned to the resource.

# Required Parameters
- `resourceArn`: The ARN of the resource.

"""

ListTagsForResource(resourceArn; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/tags", Dict{String, Any}("resourceArn"=>resourceArn); aws_config=aws_config)
ListTagsForResource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("GET", "/tags", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn), args)); aws_config=aws_config)

"""
    PutLoggingOptions()

Sets or updates the AWS IoT Events logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. If you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.

# Required Parameters
- `loggingOptions`: The new values of the AWS IoT Events logging options.

"""

PutLoggingOptions(loggingOptions; aws_config::AWSConfig=global_aws_config()) = iot_events("PUT", "/logging", Dict{String, Any}("loggingOptions"=>loggingOptions); aws_config=aws_config)
PutLoggingOptions(loggingOptions, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("PUT", "/logging", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("loggingOptions"=>loggingOptions), args)); aws_config=aws_config)

"""
    TagResource()

Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.

# Required Parameters
- `resourceArn`: The ARN of the resource.
- `tags`: The new or modified tags for the resource.

"""

TagResource(resourceArn, tags; aws_config::AWSConfig=global_aws_config()) = iot_events("POST", "/tags", Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags); aws_config=aws_config)
TagResource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("POST", "/tags", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes the given tags (metadata) from the resource.

# Required Parameters
- `resourceArn`: The ARN of the resource.
- `tagKeys`: A list of the keys of the tags to be removed from the resource.

"""

UntagResource(resourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = iot_events("DELETE", "/tags", Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys); aws_config=aws_config)
UntagResource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("DELETE", "/tags", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateDetectorModel()

Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.

# Required Parameters
- `detectorModelDefinition`: Information that defines how a detector operates.
- `detectorModelName`: The name of the detector model that is updated.
- `roleArn`: The ARN of the role that grants permission to AWS IoT Events to perform its operations.

# Optional Parameters
- `detectorModelDescription`: A brief description of the detector model.
- `evaluationMethod`: Information about the order in which events are evaluated and how actions are executed. 
"""

UpdateDetectorModel(detectorModelDefinition, detectorModelName, roleArn; aws_config::AWSConfig=global_aws_config()) = iot_events("POST", "/detector-models/$(detectorModelName)", Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition, "roleArn"=>roleArn); aws_config=aws_config)
UpdateDetectorModel(detectorModelDefinition, detectorModelName, roleArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("POST", "/detector-models/$(detectorModelName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition, "roleArn"=>roleArn), args)); aws_config=aws_config)

"""
    UpdateInput()

Updates an input.

# Required Parameters
- `inputDefinition`: The definition of the input.
- `inputName`: The name of the input you want to update.

# Optional Parameters
- `inputDescription`: A brief description of the input.
"""

UpdateInput(inputDefinition, inputName; aws_config::AWSConfig=global_aws_config()) = iot_events("PUT", "/inputs/$(inputName)", Dict{String, Any}("inputDefinition"=>inputDefinition); aws_config=aws_config)
UpdateInput(inputDefinition, inputName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = iot_events("PUT", "/inputs/$(inputName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("inputDefinition"=>inputDefinition), args)); aws_config=aws_config)
