# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: sfn

using Compat
using UUIDs
"""
    CreateActivity()

Creates an activity. An activity is a task that you write in any programming language and host on any machine that has access to AWS Step Functions. Activities must poll Step Functions using the GetActivityTask API action and respond using SendTask* API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateActivity is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateActivity's idempotency check is based on the activity name. If a following request has different tags values, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, tags will not be updated, even if they are different. 

# Required Parameters
- `name`: The name of the activity to create. This name must be unique for your AWS account and region for 90 days. For more information, see  Limits Related to State Machine Executions in the AWS Step Functions Developer Guide. A name must not contain:   white space   brackets &lt; &gt; { } [ ]    wildcard characters ? *    special characters \" # %   ^ | ~ `   &amp; , ; : /    control characters (U+0000-001F, U+007F-009F)   To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.

# Optional Parameters
- `tags`: The list of tags to add to a resource. An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide, and Controlling Access Using IAM Tags. Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
"""

CreateActivity(name; aws_config::AWSConfig=global_aws_config()) = sfn("CreateActivity", Dict{String, Any}("name"=>name); aws_config=aws_config)
CreateActivity(name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("CreateActivity", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("name"=>name), args)); aws_config=aws_config)

"""
    CreateStateMachine()

Creates a state machine. A state machine consists of a collection of states that can do work (Task states), determine to which states to transition next (Choice states), stop an execution with an error (Fail states), and so on. State machines are specified using a JSON-based, structured language. For more information, see Amazon States Language in the AWS Step Functions User Guide.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateStateMachine is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateStateMachine's idempotency check is based on the state machine name, definition, type, and LoggingConfiguration. If a following request has a different roleArn or tags, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, roleArn and tags will not be updated, even if they are different. 

# Required Parameters
- `definition`: The Amazon States Language definition of the state machine. See Amazon States Language.
- `name`: The name of the state machine.  A name must not contain:   white space   brackets &lt; &gt; { } [ ]    wildcard characters ? *    special characters \" # %   ^ | ~ `   &amp; , ; : /    control characters (U+0000-001F, U+007F-009F)   To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
- `roleArn`: The Amazon Resource Name (ARN) of the IAM role to use for this state machine.

# Optional Parameters
- `loggingConfiguration`: Defines what execution history events are logged and where they are logged.  By default, the level is set to OFF. For more information see Log Levels in the AWS Step Functions User Guide. 
- `tags`: Tags to be added when creating a state machine. An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide, and Controlling Access Using IAM Tags. Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
- `type`: Determines whether a Standard or Express state machine is created. The default is STANDARD. You cannot update the type of a state machine once it has been created.
"""

CreateStateMachine(definition, name, roleArn; aws_config::AWSConfig=global_aws_config()) = sfn("CreateStateMachine", Dict{String, Any}("definition"=>definition, "name"=>name, "roleArn"=>roleArn); aws_config=aws_config)
CreateStateMachine(definition, name, roleArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("CreateStateMachine", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("definition"=>definition, "name"=>name, "roleArn"=>roleArn), args)); aws_config=aws_config)

"""
    DeleteActivity()

Deletes an activity.

# Required Parameters
- `activityArn`: The Amazon Resource Name (ARN) of the activity to delete.

"""

DeleteActivity(activityArn; aws_config::AWSConfig=global_aws_config()) = sfn("DeleteActivity", Dict{String, Any}("activityArn"=>activityArn); aws_config=aws_config)
DeleteActivity(activityArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("DeleteActivity", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("activityArn"=>activityArn), args)); aws_config=aws_config)

"""
    DeleteStateMachine()

Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to DELETING and begins the deletion process.   For EXPRESSstate machines, the deletion will happen eventually (usually less than a minute). Running executions may emit logs after DeleteStateMachine API is called. 

# Required Parameters
- `stateMachineArn`: The Amazon Resource Name (ARN) of the state machine to delete.

"""

DeleteStateMachine(stateMachineArn; aws_config::AWSConfig=global_aws_config()) = sfn("DeleteStateMachine", Dict{String, Any}("stateMachineArn"=>stateMachineArn); aws_config=aws_config)
DeleteStateMachine(stateMachineArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("DeleteStateMachine", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("stateMachineArn"=>stateMachineArn), args)); aws_config=aws_config)

"""
    DescribeActivity()

Describes an activity.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 

# Required Parameters
- `activityArn`: The Amazon Resource Name (ARN) of the activity to describe.

"""

DescribeActivity(activityArn; aws_config::AWSConfig=global_aws_config()) = sfn("DescribeActivity", Dict{String, Any}("activityArn"=>activityArn); aws_config=aws_config)
DescribeActivity(activityArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("DescribeActivity", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("activityArn"=>activityArn), args)); aws_config=aws_config)

"""
    DescribeExecution()

Describes an execution.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.

# Required Parameters
- `executionArn`: The Amazon Resource Name (ARN) of the execution to describe.

"""

DescribeExecution(executionArn; aws_config::AWSConfig=global_aws_config()) = sfn("DescribeExecution", Dict{String, Any}("executionArn"=>executionArn); aws_config=aws_config)
DescribeExecution(executionArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("DescribeExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("executionArn"=>executionArn), args)); aws_config=aws_config)

"""
    DescribeStateMachine()

Describes a state machine.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 

# Required Parameters
- `stateMachineArn`: The Amazon Resource Name (ARN) of the state machine to describe.

"""

DescribeStateMachine(stateMachineArn; aws_config::AWSConfig=global_aws_config()) = sfn("DescribeStateMachine", Dict{String, Any}("stateMachineArn"=>stateMachineArn); aws_config=aws_config)
DescribeStateMachine(stateMachineArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("DescribeStateMachine", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("stateMachineArn"=>stateMachineArn), args)); aws_config=aws_config)

"""
    DescribeStateMachineForExecution()

Describes the state machine associated with a specific execution.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.

# Required Parameters
- `executionArn`: The Amazon Resource Name (ARN) of the execution you want state machine information for.

"""

DescribeStateMachineForExecution(executionArn; aws_config::AWSConfig=global_aws_config()) = sfn("DescribeStateMachineForExecution", Dict{String, Any}("executionArn"=>executionArn); aws_config=aws_config)
DescribeStateMachineForExecution(executionArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("DescribeStateMachineForExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("executionArn"=>executionArn), args)); aws_config=aws_config)

"""
    GetActivityTask()

Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a taskToken with a null string.  Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request). Polling with GetActivityTask can cause latency in some implementations. See Avoid Latency When Polling for Activity Tasks in the Step Functions Developer Guide. 

# Required Parameters
- `activityArn`: The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task using CreateActivity.)

# Optional Parameters
- `workerName`: You can provide an arbitrary name in order to identify the worker that the task is assigned to. This name is used when it is logged in the execution history.
"""

GetActivityTask(activityArn; aws_config::AWSConfig=global_aws_config()) = sfn("GetActivityTask", Dict{String, Any}("activityArn"=>activityArn); aws_config=aws_config)
GetActivityTask(activityArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("GetActivityTask", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("activityArn"=>activityArn), args)); aws_config=aws_config)

"""
    GetExecutionHistory()

Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the timeStamp of the events. Use the reverseOrder parameter to get the latest events first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error. This API action is not supported by EXPRESS state machines.

# Required Parameters
- `executionArn`: The Amazon Resource Name (ARN) of the execution.

# Optional Parameters
- `maxResults`: The maximum number of results that are returned per call. You can use nextToken to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
- `nextToken`: If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.
- `reverseOrder`: Lists events in descending order of their timeStamp.
"""

GetExecutionHistory(executionArn; aws_config::AWSConfig=global_aws_config()) = sfn("GetExecutionHistory", Dict{String, Any}("executionArn"=>executionArn); aws_config=aws_config)
GetExecutionHistory(executionArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("GetExecutionHistory", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("executionArn"=>executionArn), args)); aws_config=aws_config)

"""
    ListActivities()

Lists the existing activities. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 

# Optional Parameters
- `maxResults`: The maximum number of results that are returned per call. You can use nextToken to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
- `nextToken`: If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.
"""

ListActivities(; aws_config::AWSConfig=global_aws_config()) = sfn("ListActivities"; aws_config=aws_config)
ListActivities(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("ListActivities", args; aws_config=aws_config)

"""
    ListExecutions()

Lists the executions of a state machine that meet the filtering criteria. Results are sorted by time, with the most recent execution first. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.

# Required Parameters
- `stateMachineArn`: The Amazon Resource Name (ARN) of the state machine whose executions is listed.

# Optional Parameters
- `maxResults`: The maximum number of results that are returned per call. You can use nextToken to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
- `nextToken`: If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.
- `statusFilter`: If specified, only list the executions whose current execution status matches the given filter.
"""

ListExecutions(stateMachineArn; aws_config::AWSConfig=global_aws_config()) = sfn("ListExecutions", Dict{String, Any}("stateMachineArn"=>stateMachineArn); aws_config=aws_config)
ListExecutions(stateMachineArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("ListExecutions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("stateMachineArn"=>stateMachineArn), args)); aws_config=aws_config)

"""
    ListStateMachines()

Lists the existing state machines. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes. 

# Optional Parameters
- `maxResults`: The maximum number of results that are returned per call. You can use nextToken to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
- `nextToken`: If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.
"""

ListStateMachines(; aws_config::AWSConfig=global_aws_config()) = sfn("ListStateMachines"; aws_config=aws_config)
ListStateMachines(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("ListStateMachines", args; aws_config=aws_config)

"""
    ListTagsForResource()

List tags for a given resource. Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) for the Step Functions state machine or activity.

"""

ListTagsForResource(resourceArn; aws_config::AWSConfig=global_aws_config()) = sfn("ListTagsForResource", Dict{String, Any}("resourceArn"=>resourceArn); aws_config=aws_config)
ListTagsForResource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn), args)); aws_config=aws_config)

"""
    SendTaskFailure()

Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken failed.

# Required Parameters
- `taskToken`: The token that represents this task. Task tokens are generated by Step Functions when tasks are assigned to a worker, or in the context object when a workflow enters a task state. See GetActivityTaskOutput taskToken.

# Optional Parameters
- `cause`: A more detailed explanation of the cause of the failure.
- `error`: The error code of the failure.
"""

SendTaskFailure(taskToken; aws_config::AWSConfig=global_aws_config()) = sfn("SendTaskFailure", Dict{String, Any}("taskToken"=>taskToken); aws_config=aws_config)
SendTaskFailure(taskToken, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("SendTaskFailure", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("taskToken"=>taskToken), args)); aws_config=aws_config)

"""
    SendTaskHeartbeat()

Used by activity workers and task states using the callback pattern to report to Step Functions that the task represented by the specified taskToken is still making progress. This action resets the Heartbeat clock. The Heartbeat threshold is specified in the state machine's Amazon States Language definition (HeartbeatSeconds). This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an ActivityTimedOut entry for activities, or a TaskTimedOut entry for for tasks using the job run or callback pattern.  The Timeout of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of SendTaskHeartbeat requests received. Use HeartbeatSeconds to configure the timeout interval for heartbeats. 

# Required Parameters
- `taskToken`: The token that represents this task. Task tokens are generated by Step Functions when tasks are assigned to a worker, or in the context object when a workflow enters a task state. See GetActivityTaskOutput taskToken.

"""

SendTaskHeartbeat(taskToken; aws_config::AWSConfig=global_aws_config()) = sfn("SendTaskHeartbeat", Dict{String, Any}("taskToken"=>taskToken); aws_config=aws_config)
SendTaskHeartbeat(taskToken, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("SendTaskHeartbeat", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("taskToken"=>taskToken), args)); aws_config=aws_config)

"""
    SendTaskSuccess()

Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken completed successfully.

# Required Parameters
- `output`: The JSON output of the task.
- `taskToken`: The token that represents this task. Task tokens are generated by Step Functions when tasks are assigned to a worker, or in the context object when a workflow enters a task state. See GetActivityTaskOutput taskToken.

"""

SendTaskSuccess(output, taskToken; aws_config::AWSConfig=global_aws_config()) = sfn("SendTaskSuccess", Dict{String, Any}("output"=>output, "taskToken"=>taskToken); aws_config=aws_config)
SendTaskSuccess(output, taskToken, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("SendTaskSuccess", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("output"=>output, "taskToken"=>taskToken), args)); aws_config=aws_config)

"""
    StartExecution()

Starts a state machine execution.   StartExecution is idempotent. If StartExecution is called with the same name and input as a running execution, the call will succeed and return the same response as the original request. If the execution is closed or if the input is different, it will return a 400 ExecutionAlreadyExists error. Names can be reused after 90 days.  

# Required Parameters
- `stateMachineArn`: The Amazon Resource Name (ARN) of the state machine to execute.

# Optional Parameters
- `input`: The string that contains the JSON input data for the execution, for example:  \"input\": \"{ \"first_name \" :  \"test \"}\"   If you don't include any JSON input data, you still must include the two braces, for example: \"input\": \"{}\"  
- `name`: The name of the execution. This name must be unique for your AWS account, region, and state machine for 90 days. For more information, see  Limits Related to State Machine Executions in the AWS Step Functions Developer Guide. A name must not contain:   white space   brackets &lt; &gt; { } [ ]    wildcard characters ? *    special characters \" # %   ^ | ~ `   &amp; , ; : /    control characters (U+0000-001F, U+007F-009F)   To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
"""

StartExecution(stateMachineArn; aws_config::AWSConfig=global_aws_config()) = sfn("StartExecution", Dict{String, Any}("stateMachineArn"=>stateMachineArn); aws_config=aws_config)
StartExecution(stateMachineArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("StartExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("stateMachineArn"=>stateMachineArn), args)); aws_config=aws_config)

"""
    StopExecution()

Stops an execution. This API action is not supported by EXPRESS state machines.

# Required Parameters
- `executionArn`: The Amazon Resource Name (ARN) of the execution to stop.

# Optional Parameters
- `cause`: A more detailed explanation of the cause of the failure.
- `error`: The error code of the failure.
"""

StopExecution(executionArn; aws_config::AWSConfig=global_aws_config()) = sfn("StopExecution", Dict{String, Any}("executionArn"=>executionArn); aws_config=aws_config)
StopExecution(executionArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("StopExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("executionArn"=>executionArn), args)); aws_config=aws_config)

"""
    TagResource()

Add a tag to a Step Functions resource. An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide, and Controlling Access Using IAM Tags. Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) for the Step Functions state machine or activity.
- `tags`: The list of tags to add to a resource. Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.

"""

TagResource(resourceArn, tags; aws_config::AWSConfig=global_aws_config()) = sfn("TagResource", Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags); aws_config=aws_config)
TagResource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Remove a tag from a Step Functions resource

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) for the Step Functions state machine or activity.
- `tagKeys`: The list of tags to remove from the resource.

"""

UntagResource(resourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = sfn("UntagResource", Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys); aws_config=aws_config)
UntagResource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateStateMachine()

Updates an existing state machine by modifying its definition, roleArn, or loggingConfiguration. Running executions will continue to use the previous definition and roleArn. You must include at least one of definition or roleArn or you will receive a MissingRequiredParameter error.  All StartExecution calls within a few seconds will use the updated definition and roleArn. Executions started immediately after calling UpdateStateMachine may use the previous state machine definition and roleArn.  

# Required Parameters
- `stateMachineArn`: The Amazon Resource Name (ARN) of the state machine.

# Optional Parameters
- `definition`: The Amazon States Language definition of the state machine. See Amazon States Language.
- `loggingConfiguration`: The LoggingConfiguration data type is used to set CloudWatch Logs options.
- `roleArn`: The Amazon Resource Name (ARN) of the IAM role of the state machine.
"""

UpdateStateMachine(stateMachineArn; aws_config::AWSConfig=global_aws_config()) = sfn("UpdateStateMachine", Dict{String, Any}("stateMachineArn"=>stateMachineArn); aws_config=aws_config)
UpdateStateMachine(stateMachineArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sfn("UpdateStateMachine", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("stateMachineArn"=>stateMachineArn), args)); aws_config=aws_config)
