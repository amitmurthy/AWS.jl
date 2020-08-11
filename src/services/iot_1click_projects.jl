# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
include("_utilities.jl")
using Compat
using UUIDs
using .AWSServices: iot_1click_projects

"""
    AssociateDeviceWithPlacement()

Associates a physical device with a placement.

# Required Parameters
- `deviceId`: The ID of the physical device to be associated with the given placement in the project. Note that a mandatory 4 character prefix is required for all deviceId values.
- `deviceTemplateName`: The device template name to associate with the device ID.
- `placementName`: The name of the placement in which to associate the device.
- `projectName`: The name of the project containing the placement in which to associate the device.

"""
AssociateDeviceWithPlacement(deviceId, deviceTemplateName, placementName, projectName) = iot_1click_projects("PUT", "/projects/$(projectName)/placements/$(placementName)/devices/$(deviceTemplateName)", Dict{String, Any}("deviceId"=>deviceId))
AssociateDeviceWithPlacement(deviceId, deviceTemplateName, placementName, projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("PUT", "/projects/$(projectName)/placements/$(placementName)/devices/$(deviceTemplateName)", Dict{String, Any}("deviceId"=>deviceId, args...))

"""
    CreatePlacement()

Creates an empty placement.

# Required Parameters
- `placementName`: The name of the placement to be created.
- `projectName`: The name of the project in which to create the placement.

# Optional Parameters
- `attributes`: Optional user-defined key/value pairs providing contextual data (such as location or function) for the placement.
"""
CreatePlacement(placementName, projectName) = iot_1click_projects("POST", "/projects/$(projectName)/placements", Dict{String, Any}("placementName"=>placementName))
CreatePlacement(placementName, projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("POST", "/projects/$(projectName)/placements", Dict{String, Any}("placementName"=>placementName, args...))

"""
    CreateProject()

Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.

# Required Parameters
- `projectName`: The name of the project to create.

# Optional Parameters
- `description`: An optional description for the project.
- `placementTemplate`: The schema defining the placement to be created. A placement template defines placement default attributes and device templates. You cannot add or remove device templates after the project has been created. However, you can update callbackOverrides for the device templates using the UpdateProject API.
- `tags`: Optional tags (metadata key/value pairs) to be associated with the project. For example, { {\"key1\": \"value1\", \"key2\": \"value2\"} }. For more information, see AWS Tagging Strategies.
"""
CreateProject(projectName) = iot_1click_projects("POST", "/projects", Dict{String, Any}("projectName"=>projectName))
CreateProject(projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("POST", "/projects", Dict{String, Any}("projectName"=>projectName, args...))

"""
    DeletePlacement()

Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable. 

# Required Parameters
- `placementName`: The name of the empty placement to delete.
- `projectName`: The project containing the empty placement to delete.

"""
DeletePlacement(placementName, projectName) = iot_1click_projects("DELETE", "/projects/$(projectName)/placements/$(placementName)")
DeletePlacement(placementName, projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("DELETE", "/projects/$(projectName)/placements/$(placementName)", args)

"""
    DeleteProject()

Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable. 

# Required Parameters
- `projectName`: The name of the empty project to delete.

"""
DeleteProject(projectName) = iot_1click_projects("DELETE", "/projects/$(projectName)")
DeleteProject(projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("DELETE", "/projects/$(projectName)", args)

"""
    DescribePlacement()

Describes a placement in a project.

# Required Parameters
- `placementName`: The name of the placement within a project.
- `projectName`: The project containing the placement to be described.

"""
DescribePlacement(placementName, projectName) = iot_1click_projects("GET", "/projects/$(projectName)/placements/$(placementName)")
DescribePlacement(placementName, projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("GET", "/projects/$(projectName)/placements/$(placementName)", args)

"""
    DescribeProject()

Returns an object describing a project.

# Required Parameters
- `projectName`: The name of the project to be described.

"""
DescribeProject(projectName) = iot_1click_projects("GET", "/projects/$(projectName)")
DescribeProject(projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("GET", "/projects/$(projectName)", args)

"""
    DisassociateDeviceFromPlacement()

Removes a physical device from a placement.

# Required Parameters
- `deviceTemplateName`: The device ID that should be removed from the placement.
- `placementName`: The name of the placement that the device should be removed from.
- `projectName`: The name of the project that contains the placement.

"""
DisassociateDeviceFromPlacement(deviceTemplateName, placementName, projectName) = iot_1click_projects("DELETE", "/projects/$(projectName)/placements/$(placementName)/devices/$(deviceTemplateName)")
DisassociateDeviceFromPlacement(deviceTemplateName, placementName, projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("DELETE", "/projects/$(projectName)/placements/$(placementName)/devices/$(deviceTemplateName)", args)

"""
    GetDevicesInPlacement()

Returns an object enumerating the devices in a placement.

# Required Parameters
- `placementName`: The name of the placement to get the devices from.
- `projectName`: The name of the project containing the placement.

"""
GetDevicesInPlacement(placementName, projectName) = iot_1click_projects("GET", "/projects/$(projectName)/placements/$(placementName)/devices")
GetDevicesInPlacement(placementName, projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("GET", "/projects/$(projectName)/placements/$(placementName)/devices", args)

"""
    ListPlacements()

Lists the placement(s) of a project.

# Required Parameters
- `projectName`: The project containing the placements to be listed.

# Optional Parameters
- `maxResults`: The maximum number of results to return per request. If not set, a default value of 100 is used.
- `nextToken`: The token to retrieve the next set of results.
"""
ListPlacements(projectName) = iot_1click_projects("GET", "/projects/$(projectName)/placements")
ListPlacements(projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("GET", "/projects/$(projectName)/placements", args)

"""
    ListProjects()

Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.

# Optional Parameters
- `maxResults`: The maximum number of results to return per request. If not set, a default value of 100 is used.
- `nextToken`: The token to retrieve the next set of results.
"""
ListProjects() = iot_1click_projects("GET", "/projects")
ListProjects(args::AbstractDict{String, Any}) = iot_1click_projects("GET", "/projects", args)

"""
    ListTagsForResource()

Lists the tags (metadata key/value pairs) which you have assigned to the resource.

# Required Parameters
- `resourceArn`: The ARN of the resource whose tags you want to list.

"""
ListTagsForResource(resourceArn) = iot_1click_projects("GET", "/tags/$(resourceArn)")
ListTagsForResource(resourceArn, args::AbstractDict{String, <:Any}) = iot_1click_projects("GET", "/tags/$(resourceArn)", args)

"""
    TagResource()

Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.

# Required Parameters
- `resourceArn`: The ARN of the resouce for which tag(s) should be added or modified.
- `tags`: The new or modifying tag(s) for the resource. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per resource.

"""
TagResource(resourceArn, tags) = iot_1click_projects("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags))
TagResource(resourceArn, tags, args::AbstractDict{String, <:Any}) = iot_1click_projects("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags, args...))

"""
    UntagResource()

Removes one or more tags (metadata key/value pairs) from a resource.

# Required Parameters
- `resourceArn`: The ARN of the resource whose tag you want to remove.
- `tagKeys`: The keys of those tags which you want to remove.

"""
UntagResource(resourceArn, tagKeys) = iot_1click_projects("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys))
UntagResource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}) = iot_1click_projects("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys, args...))

"""
    UpdatePlacement()

Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., \"\").

# Required Parameters
- `placementName`: The name of the placement to update.
- `projectName`: The name of the project containing the placement to be updated.

# Optional Parameters
- `attributes`: The user-defined object of attributes used to update the placement. The maximum number of key/value pairs is 50.
"""
UpdatePlacement(placementName, projectName) = iot_1click_projects("PUT", "/projects/$(projectName)/placements/$(placementName)")
UpdatePlacement(placementName, projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("PUT", "/projects/$(projectName)/placements/$(placementName)", args)

"""
    UpdateProject()

Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., \"\").

# Required Parameters
- `projectName`: The name of the project to be updated.

# Optional Parameters
- `description`: An optional user-defined description for the project.
- `placementTemplate`: An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given placementTemplate, you can update the associated callbackOverrides for the device definition using this API.
"""
UpdateProject(projectName) = iot_1click_projects("PUT", "/projects/$(projectName)")
UpdateProject(projectName, args::AbstractDict{String, <:Any}) = iot_1click_projects("PUT", "/projects/$(projectName)", args)
