# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: iot_data_plane

using Compat
using UUIDs
"""
    DeleteThingShadow()

Deletes the shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.

# Required Parameters
- `thingName`: The name of the thing.

# Optional Parameters
- `name`: The name of the shadow.
"""

DeleteThingShadow(thingName; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("DELETE", "/things/$(thingName)/shadow"; aws_config=aws_config)
DeleteThingShadow(thingName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("DELETE", "/things/$(thingName)/shadow", args; aws_config=aws_config)

"""
    GetThingShadow()

Gets the shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.

# Required Parameters
- `thingName`: The name of the thing.

# Optional Parameters
- `name`: The name of the shadow.
"""

GetThingShadow(thingName; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("GET", "/things/$(thingName)/shadow"; aws_config=aws_config)
GetThingShadow(thingName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("GET", "/things/$(thingName)/shadow", args; aws_config=aws_config)

"""
    ListNamedShadowsForThing()

Lists the shadows for the specified thing.

# Required Parameters
- `thingName`: The name of the thing.

# Optional Parameters
- `nextToken`: The token to retrieve the next set of results.
- `pageSize`: The result page size.
"""

ListNamedShadowsForThing(thingName; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("GET", "/api/things/shadow/ListNamedShadowsForThing/$(thingName)"; aws_config=aws_config)
ListNamedShadowsForThing(thingName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("GET", "/api/things/shadow/ListNamedShadowsForThing/$(thingName)", args; aws_config=aws_config)

"""
    Publish()

Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.

# Required Parameters
- `topic`: The name of the MQTT topic.

# Optional Parameters
- `payload`: The state information, in JSON format.
- `qos`: The Quality of Service (QoS) level.
"""

Publish(topic; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("POST", "/topics/$(topic)"; aws_config=aws_config)
Publish(topic, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("POST", "/topics/$(topic)", args; aws_config=aws_config)

"""
    UpdateThingShadow()

Updates the shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.

# Required Parameters
- `payload`: The state information, in JSON format.
- `thingName`: The name of the thing.

# Optional Parameters
- `name`: The name of the shadow.
"""

UpdateThingShadow(payload, thingName; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("POST", "/things/$(thingName)/shadow", Dict{String, Any}("payload"=>payload); aws_config=aws_config)
UpdateThingShadow(payload, thingName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = iot_data_plane("POST", "/things/$(thingName)/shadow", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("payload"=>payload), args)); aws_config=aws_config)
