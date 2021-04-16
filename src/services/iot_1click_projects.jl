# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: iot_1click_projects
using AWS.Compat
using AWS.UUIDs

"""
    associate_device_with_placement(device_id, device_template_name, placement_name, project_name)
    associate_device_with_placement(device_id, device_template_name, placement_name, project_name, params::Dict{String,<:Any})

Associates a physical device with a placement.

# Arguments
- `device_id`: The ID of the physical device to be associated with the given placement in
  the project. Note that a mandatory 4 character prefix is required for all deviceId values.
- `device_template_name`: The device template name to associate with the device ID.
- `placement_name`: The name of the placement in which to associate the device.
- `project_name`: The name of the project containing the placement in which to associate
  the device.

"""
associate_device_with_placement(deviceId, deviceTemplateName, placementName, projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("PUT", "/projects/$(projectName)/placements/$(placementName)/devices/$(deviceTemplateName)", Dict{String, Any}("deviceId"=>deviceId); aws_config=aws_config)
associate_device_with_placement(deviceId, deviceTemplateName, placementName, projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("PUT", "/projects/$(projectName)/placements/$(placementName)/devices/$(deviceTemplateName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("deviceId"=>deviceId), params)); aws_config=aws_config)

"""
    create_placement(placement_name, project_name)
    create_placement(placement_name, project_name, params::Dict{String,<:Any})

Creates an empty placement.

# Arguments
- `placement_name`: The name of the placement to be created.
- `project_name`: The name of the project in which to create the placement.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"attributes"`: Optional user-defined key/value pairs providing contextual data (such as
  location or function) for the placement.
"""
create_placement(placementName, projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("POST", "/projects/$(projectName)/placements", Dict{String, Any}("placementName"=>placementName); aws_config=aws_config)
create_placement(placementName, projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("POST", "/projects/$(projectName)/placements", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("placementName"=>placementName), params)); aws_config=aws_config)

"""
    create_project(project_name)
    create_project(project_name, params::Dict{String,<:Any})

Creates an empty project with a placement template. A project contains zero or more
placements that adhere to the placement template defined in the project.

# Arguments
- `project_name`: The name of the project to create.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: An optional description for the project.
- `"placementTemplate"`: The schema defining the placement to be created. A placement
  template defines placement default attributes and device templates. You cannot add or
  remove device templates after the project has been created. However, you can update
  callbackOverrides for the device templates using the UpdateProject API.
- `"tags"`: Optional tags (metadata key/value pairs) to be associated with the project. For
  example, { {\"key1\": \"value1\", \"key2\": \"value2\"} }. For more information, see AWS
  Tagging Strategies.
"""
create_project(projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("POST", "/projects", Dict{String, Any}("projectName"=>projectName); aws_config=aws_config)
create_project(projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("POST", "/projects", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("projectName"=>projectName), params)); aws_config=aws_config)

"""
    delete_placement(placement_name, project_name)
    delete_placement(placement_name, project_name, params::Dict{String,<:Any})

Deletes a placement. To delete a placement, it must not have any devices associated with
it.  When you delete a placement, all associated data becomes irretrievable.

# Arguments
- `placement_name`: The name of the empty placement to delete.
- `project_name`: The project containing the empty placement to delete.

"""
delete_placement(placementName, projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("DELETE", "/projects/$(projectName)/placements/$(placementName)"; aws_config=aws_config)
delete_placement(placementName, projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("DELETE", "/projects/$(projectName)/placements/$(placementName)", params; aws_config=aws_config)

"""
    delete_project(project_name)
    delete_project(project_name, params::Dict{String,<:Any})

Deletes a project. To delete a project, it must not have any placements associated with it.
 When you delete a project, all associated data becomes irretrievable.

# Arguments
- `project_name`: The name of the empty project to delete.

"""
delete_project(projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("DELETE", "/projects/$(projectName)"; aws_config=aws_config)
delete_project(projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("DELETE", "/projects/$(projectName)", params; aws_config=aws_config)

"""
    describe_placement(placement_name, project_name)
    describe_placement(placement_name, project_name, params::Dict{String,<:Any})

Describes a placement in a project.

# Arguments
- `placement_name`: The name of the placement within a project.
- `project_name`: The project containing the placement to be described.

"""
describe_placement(placementName, projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects/$(projectName)/placements/$(placementName)"; aws_config=aws_config)
describe_placement(placementName, projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects/$(projectName)/placements/$(placementName)", params; aws_config=aws_config)

"""
    describe_project(project_name)
    describe_project(project_name, params::Dict{String,<:Any})

Returns an object describing a project.

# Arguments
- `project_name`: The name of the project to be described.

"""
describe_project(projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects/$(projectName)"; aws_config=aws_config)
describe_project(projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects/$(projectName)", params; aws_config=aws_config)

"""
    disassociate_device_from_placement(device_template_name, placement_name, project_name)
    disassociate_device_from_placement(device_template_name, placement_name, project_name, params::Dict{String,<:Any})

Removes a physical device from a placement.

# Arguments
- `device_template_name`: The device ID that should be removed from the placement.
- `placement_name`: The name of the placement that the device should be removed from.
- `project_name`: The name of the project that contains the placement.

"""
disassociate_device_from_placement(deviceTemplateName, placementName, projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("DELETE", "/projects/$(projectName)/placements/$(placementName)/devices/$(deviceTemplateName)"; aws_config=aws_config)
disassociate_device_from_placement(deviceTemplateName, placementName, projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("DELETE", "/projects/$(projectName)/placements/$(placementName)/devices/$(deviceTemplateName)", params; aws_config=aws_config)

"""
    get_devices_in_placement(placement_name, project_name)
    get_devices_in_placement(placement_name, project_name, params::Dict{String,<:Any})

Returns an object enumerating the devices in a placement.

# Arguments
- `placement_name`: The name of the placement to get the devices from.
- `project_name`: The name of the project containing the placement.

"""
get_devices_in_placement(placementName, projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects/$(projectName)/placements/$(placementName)/devices"; aws_config=aws_config)
get_devices_in_placement(placementName, projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects/$(projectName)/placements/$(placementName)/devices", params; aws_config=aws_config)

"""
    list_placements(project_name)
    list_placements(project_name, params::Dict{String,<:Any})

Lists the placement(s) of a project.

# Arguments
- `project_name`: The project containing the placements to be listed.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per request. If not set, a
  default value of 100 is used.
- `"nextToken"`: The token to retrieve the next set of results.
"""
list_placements(projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects/$(projectName)/placements"; aws_config=aws_config)
list_placements(projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects/$(projectName)/placements", params; aws_config=aws_config)

"""
    list_projects()
    list_projects(params::Dict{String,<:Any})

Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per request. If not set, a
  default value of 100 is used.
- `"nextToken"`: The token to retrieve the next set of results.
"""
list_projects(; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects"; aws_config=aws_config)
list_projects(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/projects", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags (metadata key/value pairs) which you have assigned to the resource.

# Arguments
- `resource_arn`: The ARN of the resource whose tags you want to list.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("GET", "/tags/$(resourceArn)", params; aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be
used to manage a resource. For more information, see AWS Tagging Strategies.

# Arguments
- `resource_arn`: The ARN of the resouce for which tag(s) should be added or modified.
- `tags`: The new or modifying tag(s) for the resource. See AWS IoT 1-Click Service Limits
  for the maximum number of tags allowed per resource.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes one or more tags (metadata key/value pairs) from a resource.

# Arguments
- `resource_arn`: The ARN of the resource whose tag you want to remove.
- `tag_keys`: The keys of those tags which you want to remove.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), params)); aws_config=aws_config)

"""
    update_placement(placement_name, project_name)
    update_placement(placement_name, project_name, params::Dict{String,<:Any})

Updates a placement with the given attributes. To clear an attribute, pass an empty value
(i.e., \"\").

# Arguments
- `placement_name`: The name of the placement to update.
- `project_name`: The name of the project containing the placement to be updated.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"attributes"`: The user-defined object of attributes used to update the placement. The
  maximum number of key/value pairs is 50.
"""
update_placement(placementName, projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("PUT", "/projects/$(projectName)/placements/$(placementName)"; aws_config=aws_config)
update_placement(placementName, projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("PUT", "/projects/$(projectName)/placements/$(placementName)", params; aws_config=aws_config)

"""
    update_project(project_name)
    update_project(project_name, params::Dict{String,<:Any})

Updates a project associated with your AWS account and region. With the exception of device
template names, you can pass just the values that need to be updated because the update
request will change only the values that are provided. To clear a value, pass the empty
string (i.e., \"\").

# Arguments
- `project_name`: The name of the project to be updated.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: An optional user-defined description for the project.
- `"placementTemplate"`: An object defining the project update. Once a project has been
  created, you cannot add device template names to the project. However, for a given
  placementTemplate, you can update the associated callbackOverrides for the device
  definition using this API.
"""
update_project(projectName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("PUT", "/projects/$(projectName)"; aws_config=aws_config)
update_project(projectName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_1click_projects("PUT", "/projects/$(projectName)", params; aws_config=aws_config)
