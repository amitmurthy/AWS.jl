# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: application_insights
using AWS.Compat
using AWS.UUIDs

"""
    create_application(resource_group_name)
    create_application(resource_group_name, params::Dict{String,<:Any})

Adds an application that is created from a resource group.

# Arguments
- `resource_group_name`: The name of the resource group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CWEMonitorEnabled"`:  Indicates whether Application Insights can listen to CloudWatch
  events for the application resources, such as instance terminated, failed deployment, and
  others.
- `"OpsCenterEnabled"`:  When set to true, creates opsItems for any problems detected on an
  application.
- `"OpsItemSNSTopicArn"`:  The SNS topic provided to Application Insights that is
  associated to the created opsItem. Allows you to receive notifications for updates to the
  opsItem.
- `"Tags"`: List of tags to add to the application. tag key (Key) and an associated tag
  value (Value). The maximum length of a tag key is 128 characters. The maximum length of a
  tag value is 256 characters.
"""
create_application(ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("CreateApplication", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
create_application(ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("CreateApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    create_component(component_name, resource_group_name, resource_list)
    create_component(component_name, resource_group_name, resource_list, params::Dict{String,<:Any})

Creates a custom component by grouping similar standalone instances to monitor.

# Arguments
- `component_name`: The name of the component.
- `resource_group_name`: The name of the resource group.
- `resource_list`: The list of resource ARNs that belong to the component.

"""
create_component(ComponentName, ResourceGroupName, ResourceList; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("CreateComponent", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName, "ResourceList"=>ResourceList); aws_config=aws_config)
create_component(ComponentName, ResourceGroupName, ResourceList, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("CreateComponent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName, "ResourceList"=>ResourceList), params)); aws_config=aws_config)

"""
    create_log_pattern(pattern, pattern_name, pattern_set_name, rank, resource_group_name)
    create_log_pattern(pattern, pattern_name, pattern_set_name, rank, resource_group_name, params::Dict{String,<:Any})

Adds an log pattern to a LogPatternSet.

# Arguments
- `pattern`: The log pattern. The pattern must be DFA compatible. Patterns that utilize
  forward lookahead or backreference constructions are not supported.
- `pattern_name`: The name of the log pattern.
- `pattern_set_name`: The name of the log pattern set.
- `rank`: Rank of the log pattern. Must be a value between 1 and 1,000,000. The patterns
  are sorted by rank, so we recommend that you set your highest priority patterns with the
  lowest rank. A pattern of rank 1 will be the first to get matched to a log line. A pattern
  of rank 1,000,000 will be last to get matched. When you configure custom log patterns from
  the console, a Low severity pattern translates to a 750,000 rank. A Medium severity pattern
  translates to a 500,000 rank. And a High severity pattern translates to a 250,000 rank.
  Rank values less than 1 or greater than 1,000,000 are reserved for AWS-provided patterns.
- `resource_group_name`: The name of the resource group.

"""
create_log_pattern(Pattern, PatternName, PatternSetName, Rank, ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("CreateLogPattern", Dict{String, Any}("Pattern"=>Pattern, "PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "Rank"=>Rank, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
create_log_pattern(Pattern, PatternName, PatternSetName, Rank, ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("CreateLogPattern", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Pattern"=>Pattern, "PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "Rank"=>Rank, "ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    delete_application(resource_group_name)
    delete_application(resource_group_name, params::Dict{String,<:Any})

Removes the specified application from monitoring. Does not delete the application.

# Arguments
- `resource_group_name`: The name of the resource group.

"""
delete_application(ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DeleteApplication", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
delete_application(ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DeleteApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    delete_component(component_name, resource_group_name)
    delete_component(component_name, resource_group_name, params::Dict{String,<:Any})

Ungroups a custom component. When you ungroup custom components, all applicable monitors
that are set up for the component are removed and the instances revert to their standalone
status.

# Arguments
- `component_name`: The name of the component.
- `resource_group_name`: The name of the resource group.

"""
delete_component(ComponentName, ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DeleteComponent", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
delete_component(ComponentName, ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DeleteComponent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    delete_log_pattern(pattern_name, pattern_set_name, resource_group_name)
    delete_log_pattern(pattern_name, pattern_set_name, resource_group_name, params::Dict{String,<:Any})

Removes the specified log pattern from a LogPatternSet.

# Arguments
- `pattern_name`: The name of the log pattern.
- `pattern_set_name`: The name of the log pattern set.
- `resource_group_name`: The name of the resource group.

"""
delete_log_pattern(PatternName, PatternSetName, ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DeleteLogPattern", Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
delete_log_pattern(PatternName, PatternSetName, ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DeleteLogPattern", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    describe_application(resource_group_name)
    describe_application(resource_group_name, params::Dict{String,<:Any})

Describes the application.

# Arguments
- `resource_group_name`: The name of the resource group.

"""
describe_application(ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeApplication", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
describe_application(ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    describe_component(component_name, resource_group_name)
    describe_component(component_name, resource_group_name, params::Dict{String,<:Any})

Describes a component and lists the resources that are grouped together in a component.

# Arguments
- `component_name`: The name of the component.
- `resource_group_name`: The name of the resource group.

"""
describe_component(ComponentName, ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeComponent", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
describe_component(ComponentName, ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeComponent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    describe_component_configuration(component_name, resource_group_name)
    describe_component_configuration(component_name, resource_group_name, params::Dict{String,<:Any})

Describes the monitoring configuration of the component.

# Arguments
- `component_name`: The name of the component.
- `resource_group_name`: The name of the resource group.

"""
describe_component_configuration(ComponentName, ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeComponentConfiguration", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
describe_component_configuration(ComponentName, ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeComponentConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    describe_component_configuration_recommendation(component_name, resource_group_name, tier)
    describe_component_configuration_recommendation(component_name, resource_group_name, tier, params::Dict{String,<:Any})

Describes the recommended monitoring configuration of the component.

# Arguments
- `component_name`: The name of the component.
- `resource_group_name`: The name of the resource group.
- `tier`: The tier of the application component. Supported tiers include DOT_NET_CORE,
  DOT_NET_WORKER, DOT_NET_WEB, SQL_SERVER, and DEFAULT.

"""
describe_component_configuration_recommendation(ComponentName, ResourceGroupName, Tier; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeComponentConfigurationRecommendation", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName, "Tier"=>Tier); aws_config=aws_config)
describe_component_configuration_recommendation(ComponentName, ResourceGroupName, Tier, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeComponentConfigurationRecommendation", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName, "Tier"=>Tier), params)); aws_config=aws_config)

"""
    describe_log_pattern(pattern_name, pattern_set_name, resource_group_name)
    describe_log_pattern(pattern_name, pattern_set_name, resource_group_name, params::Dict{String,<:Any})

Describe a specific log pattern from a LogPatternSet.

# Arguments
- `pattern_name`: The name of the log pattern.
- `pattern_set_name`: The name of the log pattern set.
- `resource_group_name`: The name of the resource group.

"""
describe_log_pattern(PatternName, PatternSetName, ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeLogPattern", Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
describe_log_pattern(PatternName, PatternSetName, ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeLogPattern", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    describe_observation(observation_id)
    describe_observation(observation_id, params::Dict{String,<:Any})

Describes an anomaly or error with the application.

# Arguments
- `observation_id`: The ID of the observation.

"""
describe_observation(ObservationId; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeObservation", Dict{String, Any}("ObservationId"=>ObservationId); aws_config=aws_config)
describe_observation(ObservationId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeObservation", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ObservationId"=>ObservationId), params)); aws_config=aws_config)

"""
    describe_problem(problem_id)
    describe_problem(problem_id, params::Dict{String,<:Any})

Describes an application problem.

# Arguments
- `problem_id`: The ID of the problem.

"""
describe_problem(ProblemId; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeProblem", Dict{String, Any}("ProblemId"=>ProblemId); aws_config=aws_config)
describe_problem(ProblemId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeProblem", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProblemId"=>ProblemId), params)); aws_config=aws_config)

"""
    describe_problem_observations(problem_id)
    describe_problem_observations(problem_id, params::Dict{String,<:Any})

Describes the anomalies or errors associated with the problem.

# Arguments
- `problem_id`: The ID of the problem.

"""
describe_problem_observations(ProblemId; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeProblemObservations", Dict{String, Any}("ProblemId"=>ProblemId); aws_config=aws_config)
describe_problem_observations(ProblemId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("DescribeProblemObservations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProblemId"=>ProblemId), params)); aws_config=aws_config)

"""
    list_applications()
    list_applications(params::Dict{String,<:Any})

Lists the IDs of the applications that you are monitoring.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return in a single call. To retrieve the
  remaining results, make another call with the returned NextToken value.
- `"NextToken"`: The token to request the next page of results.
"""
list_applications(; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListApplications"; aws_config=aws_config)
list_applications(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListApplications", params; aws_config=aws_config)

"""
    list_components(resource_group_name)
    list_components(resource_group_name, params::Dict{String,<:Any})

Lists the auto-grouped, standalone, and custom components of the application.

# Arguments
- `resource_group_name`: The name of the resource group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return in a single call. To retrieve the
  remaining results, make another call with the returned NextToken value.
- `"NextToken"`: The token to request the next page of results.
"""
list_components(ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListComponents", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
list_components(ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListComponents", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    list_configuration_history()
    list_configuration_history(params::Dict{String,<:Any})

 Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by
Application Insights. Examples of events represented are:    INFO: creating a new alarm or
updating an alarm threshold.   WARN: alarm not created due to insufficient data points used
to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding
quotas.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"EndTime"`: The end time of the event.
- `"EventStatus"`: The status of the configuration update event. Possible values include
  INFO, WARN, and ERROR.
- `"MaxResults"`:  The maximum number of results returned by ListConfigurationHistory in
  paginated output. When this parameter is used, ListConfigurationHistory returns only
  MaxResults in a single page along with a NextToken response element. The remaining results
  of the initial request can be seen by sending another ListConfigurationHistory request with
  the returned NextToken value. If this parameter is not used, then ListConfigurationHistory
  returns all results.
- `"NextToken"`: The NextToken value returned from a previous paginated
  ListConfigurationHistory request where MaxResults was used and the results exceeded the
  value of that parameter. Pagination continues from the end of the previous results that
  returned the NextToken value. This value is null when there are no more results to return.
- `"ResourceGroupName"`: Resource group to which the application belongs.
- `"StartTime"`: The start time of the event.
"""
list_configuration_history(; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListConfigurationHistory"; aws_config=aws_config)
list_configuration_history(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListConfigurationHistory", params; aws_config=aws_config)

"""
    list_log_pattern_sets(resource_group_name)
    list_log_pattern_sets(resource_group_name, params::Dict{String,<:Any})

Lists the log pattern sets in the specific application.

# Arguments
- `resource_group_name`: The name of the resource group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return in a single call. To retrieve the
  remaining results, make another call with the returned NextToken value.
- `"NextToken"`: The token to request the next page of results.
"""
list_log_pattern_sets(ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListLogPatternSets", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
list_log_pattern_sets(ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListLogPatternSets", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    list_log_patterns(resource_group_name)
    list_log_patterns(resource_group_name, params::Dict{String,<:Any})

Lists the log patterns in the specific log LogPatternSet.

# Arguments
- `resource_group_name`: The name of the resource group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to return in a single call. To retrieve the
  remaining results, make another call with the returned NextToken value.
- `"NextToken"`: The token to request the next page of results.
- `"PatternSetName"`: The name of the log pattern set.
"""
list_log_patterns(ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListLogPatterns", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
list_log_patterns(ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListLogPatterns", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    list_problems()
    list_problems(params::Dict{String,<:Any})

Lists the problems with your application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"EndTime"`: The time when the problem ended, in epoch seconds. If not specified,
  problems within the past seven days are returned.
- `"MaxResults"`: The maximum number of results to return in a single call. To retrieve the
  remaining results, make another call with the returned NextToken value.
- `"NextToken"`: The token to request the next page of results.
- `"ResourceGroupName"`: The name of the resource group.
- `"StartTime"`: The time when the problem was detected, in epoch seconds. If you don't
  specify a time frame for the request, problems within the past seven days are returned.
"""
list_problems(; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListProblems"; aws_config=aws_config)
list_problems(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListProblems", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Retrieve a list of the tags (keys and values) that are associated with a specified
application. A tag is a label that you optionally define and associate with an application.
Each tag consists of a required tag key and an optional associated tag value. A tag key is
a general label that acts as a category for more specific tag values. A tag value acts as a
descriptor within a tag key.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the application that you want to
  retrieve tag information for.

"""
list_tags_for_resource(ResourceARN; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
list_tags_for_resource(ResourceARN, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), params)); aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Add one or more tags (keys and values) to a specified application. A tag is a label that
you optionally define and associate with an application. Tags can help you categorize and
manage application in different ways, such as by purpose, owner, environment, or other
criteria.  Each tag consists of a required tag key and an associated tag value, both of
which you define. A tag key is a general label that acts as a category for more specific
tag values. A tag value acts as a descriptor within a tag key.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the application that you want to add
  one or more tags to.
- `tags`: A list of tags that to add to the application. A tag consists of a required tag
  key (Key) and an associated tag value (Value). The maximum length of a tag key is 128
  characters. The maximum length of a tag value is 256 characters.

"""
tag_resource(ResourceARN, Tags; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceARN, Tags, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Remove one or more tags (keys and values) from a specified application.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the application that you want to remove
  one or more tags from.
- `tag_keys`: The tags (tag keys) that you want to remove from the resource. When you
  specify a tag key, the action removes both that key and its associated tag value. To remove
  more than one tag from the application, append the TagKeys parameter and argument for each
  additional tag to remove, separated by an ampersand.

"""
untag_resource(ResourceARN, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys); aws_config=aws_config)
untag_resource(ResourceARN, TagKeys, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys), params)); aws_config=aws_config)

"""
    update_application(resource_group_name)
    update_application(resource_group_name, params::Dict{String,<:Any})

Updates the application.

# Arguments
- `resource_group_name`: The name of the resource group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CWEMonitorEnabled"`:  Indicates whether Application Insights can listen to CloudWatch
  events for the application resources, such as instance terminated, failed deployment, and
  others.
- `"OpsCenterEnabled"`:  When set to true, creates opsItems for any problems detected on an
  application.
- `"OpsItemSNSTopicArn"`:  The SNS topic provided to Application Insights that is
  associated to the created opsItem. Allows you to receive notifications for updates to the
  opsItem.
- `"RemoveSNSTopic"`:  Disassociates the SNS topic from the opsItem created for detected
  problems.
"""
update_application(ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UpdateApplication", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
update_application(ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UpdateApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    update_component(component_name, resource_group_name)
    update_component(component_name, resource_group_name, params::Dict{String,<:Any})

Updates the custom component name and/or the list of resources that make up the component.

# Arguments
- `component_name`: The name of the component.
- `resource_group_name`: The name of the resource group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"NewComponentName"`: The new name of the component.
- `"ResourceList"`: The list of resource ARNs that belong to the component.
"""
update_component(ComponentName, ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UpdateComponent", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
update_component(ComponentName, ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UpdateComponent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    update_component_configuration(component_name, resource_group_name)
    update_component_configuration(component_name, resource_group_name, params::Dict{String,<:Any})

Updates the monitoring configurations for the component. The configuration input parameter
is an escaped JSON of the configuration and should match the schema of what is returned by
DescribeComponentConfigurationRecommendation.

# Arguments
- `component_name`: The name of the component.
- `resource_group_name`: The name of the resource group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ComponentConfiguration"`: The configuration settings of the component. The value is the
  escaped JSON of the configuration. For more information about the JSON format, see Working
  with JSON. You can send a request to DescribeComponentConfigurationRecommendation to see
  the recommended configuration for a component. For the complete format of the component
  configuration file, see Component Configuration.
- `"Monitor"`: Indicates whether the application component is monitored.
- `"Tier"`: The tier of the application component. Supported tiers include DOT_NET_WORKER,
  DOT_NET_WEB, DOT_NET_CORE, SQL_SERVER, and DEFAULT.
"""
update_component_configuration(ComponentName, ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UpdateComponentConfiguration", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
update_component_configuration(ComponentName, ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UpdateComponentConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)

"""
    update_log_pattern(pattern_name, pattern_set_name, resource_group_name)
    update_log_pattern(pattern_name, pattern_set_name, resource_group_name, params::Dict{String,<:Any})

Adds a log pattern to a LogPatternSet.

# Arguments
- `pattern_name`: The name of the log pattern.
- `pattern_set_name`: The name of the log pattern set.
- `resource_group_name`: The name of the resource group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Pattern"`: The log pattern. The pattern must be DFA compatible. Patterns that utilize
  forward lookahead or backreference constructions are not supported.
- `"Rank"`: Rank of the log pattern. Must be a value between 1 and 1,000,000. The patterns
  are sorted by rank, so we recommend that you set your highest priority patterns with the
  lowest rank. A pattern of rank 1 will be the first to get matched to a log line. A pattern
  of rank 1,000,000 will be last to get matched. When you configure custom log patterns from
  the console, a Low severity pattern translates to a 750,000 rank. A Medium severity pattern
  translates to a 500,000 rank. And a High severity pattern translates to a 250,000 rank.
  Rank values less than 1 or greater than 1,000,000 are reserved for AWS-provided patterns.
"""
update_log_pattern(PatternName, PatternSetName, ResourceGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UpdateLogPattern", Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
update_log_pattern(PatternName, PatternSetName, ResourceGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = application_insights("UpdateLogPattern", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName), params)); aws_config=aws_config)
