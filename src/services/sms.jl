# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
using Compat
using .AWSServices: sms

"""
    CreateApp()

Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.

Optional Parameters
clientToken => A unique, case-sensitive identifier you provide to ensure idempotency of application creation.
description => Description of the new application
name => Name of the new application.
roleName => Name of service role in customer's account to be used by AWS SMS.
serverGroups => List of server groups to include in the application.
tags => List of tags to be associated with the application.
"""
CreateApp() = sms("CreateApp")
CreateApp(args::AbstractDict{String, <: Any}) = sms("CreateApp", args)

"""
    CreateReplicationJob()

Creates a replication job. The replication job schedules periodic replication runs to replicate your server to AWS. Each replication run creates an Amazon Machine Image (AMI).

Required Parameters
seedReplicationTime => The seed replication time.
serverId => The identifier of the server.

Optional Parameters
description => The description of the replication job.
encrypted => When true, the replication job produces encrypted AMIs. See also KmsKeyId below.
frequency => The time between consecutive replication runs, in hours.
kmsKeyId => KMS key ID for replication jobs that produce encrypted AMIs. Can be any of the following:    KMS key ID   KMS key alias   ARN referring to KMS key ID   ARN referring to KMS key alias    If encrypted is true but a KMS key id is not specified, the customer's default KMS key for EBS is used. 
licenseType => The license type to be used for the AMI created by a successful replication run.
numberOfRecentAmisToKeep => The maximum number of SMS-created AMIs to retain. The oldest will be deleted once the maximum number is reached and a new AMI is created.
roleName => The name of the IAM role to be used by the AWS SMS.
runOnce => 
"""
CreateReplicationJob(seedReplicationTime, serverId) = sms("CreateReplicationJob", Dict{String, Any}("seedReplicationTime"=>seedReplicationTime, "serverId"=>serverId))
CreateReplicationJob(seedReplicationTime, serverId, args::AbstractDict{String, <: Any}) = sms("CreateReplicationJob", Dict{String, Any}("seedReplicationTime"=>seedReplicationTime, "serverId"=>serverId, args...))

"""
    DeleteApp()

Deletes an existing application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.

Optional Parameters
appId => ID of the application to delete.
forceStopAppReplication => While deleting the application, stop all replication jobs corresponding to the servers in the application.
forceTerminateApp => While deleting the application, terminate the stack corresponding to the application.
"""
DeleteApp() = sms("DeleteApp")
DeleteApp(args::AbstractDict{String, <: Any}) = sms("DeleteApp", args)

"""
    DeleteAppLaunchConfiguration()

Deletes existing launch configuration for an application.

Optional Parameters
appId => ID of the application associated with the launch configuration.
"""
DeleteAppLaunchConfiguration() = sms("DeleteAppLaunchConfiguration")
DeleteAppLaunchConfiguration(args::AbstractDict{String, <: Any}) = sms("DeleteAppLaunchConfiguration", args)

"""
    DeleteAppReplicationConfiguration()

Deletes existing replication configuration for an application.

Optional Parameters
appId => ID of the application associated with the replication configuration.
"""
DeleteAppReplicationConfiguration() = sms("DeleteAppReplicationConfiguration")
DeleteAppReplicationConfiguration(args::AbstractDict{String, <: Any}) = sms("DeleteAppReplicationConfiguration", args)

"""
    DeleteReplicationJob()

Deletes the specified replication job. After you delete a replication job, there are no further replication runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS artifacts. The AMIs created by the replication runs are not deleted.

Required Parameters
replicationJobId => The identifier of the replication job.

"""
DeleteReplicationJob(replicationJobId) = sms("DeleteReplicationJob", Dict{String, Any}("replicationJobId"=>replicationJobId))
DeleteReplicationJob(replicationJobId, args::AbstractDict{String, <: Any}) = sms("DeleteReplicationJob", Dict{String, Any}("replicationJobId"=>replicationJobId, args...))

"""
    DeleteServerCatalog()

Deletes all servers from your server catalog.

"""
DeleteServerCatalog() = sms("DeleteServerCatalog")
DeleteServerCatalog(args::AbstractDict{String, <: Any}) = sms("DeleteServerCatalog", args)

"""
    DisassociateConnector()

Disassociates the specified connector from AWS SMS. After you disassociate a connector, it is no longer available to support replication jobs.

Required Parameters
connectorId => The identifier of the connector.

"""
DisassociateConnector(connectorId) = sms("DisassociateConnector", Dict{String, Any}("connectorId"=>connectorId))
DisassociateConnector(connectorId, args::AbstractDict{String, <: Any}) = sms("DisassociateConnector", Dict{String, Any}("connectorId"=>connectorId, args...))

"""
    GenerateChangeSet()

Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.

Optional Parameters
appId => ID of the application associated with the change set.
changesetFormat => Format for the change set.
"""
GenerateChangeSet() = sms("GenerateChangeSet")
GenerateChangeSet(args::AbstractDict{String, <: Any}) = sms("GenerateChangeSet", args)

"""
    GenerateTemplate()

Generates an Amazon CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.

Optional Parameters
appId => ID of the application associated with the Amazon CloudFormation template.
templateFormat => Format for generating the Amazon CloudFormation template.
"""
GenerateTemplate() = sms("GenerateTemplate")
GenerateTemplate(args::AbstractDict{String, <: Any}) = sms("GenerateTemplate", args)

"""
    GetApp()

Retrieve information about an application.

Optional Parameters
appId => ID of the application whose information is being retrieved.
"""
GetApp() = sms("GetApp")
GetApp(args::AbstractDict{String, <: Any}) = sms("GetApp", args)

"""
    GetAppLaunchConfiguration()

Retrieves the application launch configuration associated with an application.

Optional Parameters
appId => ID of the application launch configuration.
"""
GetAppLaunchConfiguration() = sms("GetAppLaunchConfiguration")
GetAppLaunchConfiguration(args::AbstractDict{String, <: Any}) = sms("GetAppLaunchConfiguration", args)

"""
    GetAppReplicationConfiguration()

Retrieves an application replication configuration associatd with an application.

Optional Parameters
appId => ID of the application associated with the replication configuration.
"""
GetAppReplicationConfiguration() = sms("GetAppReplicationConfiguration")
GetAppReplicationConfiguration(args::AbstractDict{String, <: Any}) = sms("GetAppReplicationConfiguration", args)

"""
    GetConnectors()

Describes the connectors registered with the AWS SMS.

Optional Parameters
maxResults => The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned NextToken value.
nextToken => The token for the next set of results.
"""
GetConnectors() = sms("GetConnectors")
GetConnectors(args::AbstractDict{String, <: Any}) = sms("GetConnectors", args)

"""
    GetReplicationJobs()

Describes the specified replication job or all of your replication jobs.

Optional Parameters
maxResults => The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned NextToken value.
nextToken => The token for the next set of results.
replicationJobId => The identifier of the replication job.
"""
GetReplicationJobs() = sms("GetReplicationJobs")
GetReplicationJobs(args::AbstractDict{String, <: Any}) = sms("GetReplicationJobs", args)

"""
    GetReplicationRuns()

Describes the replication runs for the specified replication job.

Required Parameters
replicationJobId => The identifier of the replication job.

Optional Parameters
maxResults => The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned NextToken value.
nextToken => The token for the next set of results.
"""
GetReplicationRuns(replicationJobId) = sms("GetReplicationRuns", Dict{String, Any}("replicationJobId"=>replicationJobId))
GetReplicationRuns(replicationJobId, args::AbstractDict{String, <: Any}) = sms("GetReplicationRuns", Dict{String, Any}("replicationJobId"=>replicationJobId, args...))

"""
    GetServers()

Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.

Optional Parameters
maxResults => The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned NextToken value.
nextToken => The token for the next set of results.
vmServerAddressList => List of VmServerAddress objects
"""
GetServers() = sms("GetServers")
GetServers(args::AbstractDict{String, <: Any}) = sms("GetServers", args)

"""
    ImportServerCatalog()

Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers that you want to import. This call returns immediately, but might take additional time to retrieve all the servers.

"""
ImportServerCatalog() = sms("ImportServerCatalog")
ImportServerCatalog(args::AbstractDict{String, <: Any}) = sms("ImportServerCatalog", args)

"""
    LaunchApp()

Launches an application stack.

Optional Parameters
appId => ID of the application to launch.
"""
LaunchApp() = sms("LaunchApp")
LaunchApp(args::AbstractDict{String, <: Any}) = sms("LaunchApp", args)

"""
    ListApps()

Returns a list of summaries for all applications.

Optional Parameters
appIds => 
maxResults => The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned NextToken value. 
nextToken => The token for the next set of results.
"""
ListApps() = sms("ListApps")
ListApps(args::AbstractDict{String, <: Any}) = sms("ListApps", args)

"""
    PutAppLaunchConfiguration()

Creates a launch configuration for an application.

Optional Parameters
appId => ID of the application associated with the launch configuration.
roleName => Name of service role in the customer's account that Amazon CloudFormation uses to launch the application.
serverGroupLaunchConfigurations => Launch configurations for server groups in the application.
"""
PutAppLaunchConfiguration() = sms("PutAppLaunchConfiguration")
PutAppLaunchConfiguration(args::AbstractDict{String, <: Any}) = sms("PutAppLaunchConfiguration", args)

"""
    PutAppReplicationConfiguration()

Creates or updates a replication configuration for an application.

Optional Parameters
appId => ID of the application tassociated with the replication configuration.
serverGroupReplicationConfigurations => Replication configurations for server groups in the application.
"""
PutAppReplicationConfiguration() = sms("PutAppReplicationConfiguration")
PutAppReplicationConfiguration(args::AbstractDict{String, <: Any}) = sms("PutAppReplicationConfiguration", args)

"""
    StartAppReplication()

Starts replicating an application.

Optional Parameters
appId => ID of the application to replicate.
"""
StartAppReplication() = sms("StartAppReplication")
StartAppReplication(args::AbstractDict{String, <: Any}) = sms("StartAppReplication", args)

"""
    StartOnDemandReplicationRun()

Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs you can request in a 24-hour period.

Required Parameters
replicationJobId => The identifier of the replication job.

Optional Parameters
description => The description of the replication run.
"""
StartOnDemandReplicationRun(replicationJobId) = sms("StartOnDemandReplicationRun", Dict{String, Any}("replicationJobId"=>replicationJobId))
StartOnDemandReplicationRun(replicationJobId, args::AbstractDict{String, <: Any}) = sms("StartOnDemandReplicationRun", Dict{String, Any}("replicationJobId"=>replicationJobId, args...))

"""
    StopAppReplication()

Stops replicating an application.

Optional Parameters
appId => ID of the application to stop replicating.
"""
StopAppReplication() = sms("StopAppReplication")
StopAppReplication(args::AbstractDict{String, <: Any}) = sms("StopAppReplication", args)

"""
    TerminateApp()

Terminates the stack for an application.

Optional Parameters
appId => ID of the application to terminate.
"""
TerminateApp() = sms("TerminateApp")
TerminateApp(args::AbstractDict{String, <: Any}) = sms("TerminateApp", args)

"""
    UpdateApp()

Updates an application.

Optional Parameters
appId => ID of the application to update.
description => New description of the application.
name => New name of the application.
roleName => Name of the service role in the customer's account used by AWS SMS.
serverGroups => List of server groups in the application to update.
tags => List of tags to associate with the application.
"""
UpdateApp() = sms("UpdateApp")
UpdateApp(args::AbstractDict{String, <: Any}) = sms("UpdateApp", args)

"""
    UpdateReplicationJob()

Updates the specified settings for the specified replication job.

Required Parameters
replicationJobId => The identifier of the replication job.

Optional Parameters
description => The description of the replication job.
encrypted => When true, the replication job produces encrypted AMIs . See also KmsKeyId below.
frequency => The time between consecutive replication runs, in hours.
kmsKeyId =>  KMS key ID for replication jobs that produce encrypted AMIs. Can be any of the following:    KMS key ID   KMS key alias   ARN referring to KMS key ID   ARN referring to KMS key alias    If encrypted is true but a KMS key id is not specified, the customer's default KMS key for EBS is used. 
licenseType => The license type to be used for the AMI created by a successful replication run.
nextReplicationRunStartTime => The start time of the next replication run.
numberOfRecentAmisToKeep => The maximum number of SMS-created AMIs to retain. The oldest will be deleted once the maximum number is reached and a new AMI is created.
roleName => The name of the IAM role to be used by AWS SMS.
"""
UpdateReplicationJob(replicationJobId) = sms("UpdateReplicationJob", Dict{String, Any}("replicationJobId"=>replicationJobId))
UpdateReplicationJob(replicationJobId, args::AbstractDict{String, <: Any}) = sms("UpdateReplicationJob", Dict{String, Any}("replicationJobId"=>replicationJobId, args...))
