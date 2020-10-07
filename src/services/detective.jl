# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: detective
using AWS.Compat
using AWS.UUIDs

"""
    AcceptInvitation()

Accepts an invitation for the member account to contribute data to a behavior graph. This operation can only be called by an invited member account.  The request provides the ARN of behavior graph. The member account status in the graph must be INVITED.

# Required Parameters
- `GraphArn`: The ARN of the behavior graph that the member account is accepting the invitation for. The member account status in the behavior graph must be INVITED.

"""
<<<<<<< HEAD
accept_invitation(GraphArn; aws_config::AWSConfig=global_aws_config()) = detective("PUT", "/invitation", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
accept_invitation(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = detective("PUT", "/invitation", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
=======

accept_invitation(GraphArn; aws_config::AbstractAWSConfig=global_aws_config()) = detective("PUT", "/invitation", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
accept_invitation(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("PUT", "/invitation", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    CreateGraph()

Creates a new behavior graph for the calling account, and sets that account as the master account. This operation is called by the account that is enabling Detective. Before you try to enable Detective, make sure that your account has been enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet this requirement, you cannot enable Detective. If you do meet the GuardDuty prerequisite, then when you make the request to enable Detective, it checks whether your data volume is within the Detective quota. If it exceeds the quota, then you cannot enable Detective.  The operation also enables Detective for the calling account in the currently selected Region. It returns the ARN of the new behavior graph.  CreateGraph triggers a process to create the corresponding data tables for the new behavior graph. An account can only be the master account for one behavior graph within a Region. If the same account calls CreateGraph with the same master account, it always returns the same behavior graph ARN. It does not create a new behavior graph.

"""
<<<<<<< HEAD
create_graph(; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph"; aws_config=aws_config)
create_graph(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph", args; aws_config=aws_config)
=======

create_graph(; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph"; aws_config=aws_config)
create_graph(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    CreateMembers()

Sends a request to invite the specified AWS accounts to be member accounts in the behavior graph. This operation can only be called by the master account for a behavior graph.   CreateMembers verifies the accounts and then sends invitations to the verified accounts. The request provides the behavior graph ARN and the list of accounts to invite. The response separates the requested accounts into two lists:   The accounts that CreateMembers was able to start the verification for. This list includes member accounts that are being verified, that have passed verification and are being sent an invitation, and that have failed verification.   The accounts that CreateMembers was unable to process. This list includes accounts that were already invited to be member accounts in the behavior graph.  

# Required Parameters
- `Accounts`: The list of AWS accounts to invite to become member accounts in the behavior graph. For each invited account, the account list contains the account identifier and the AWS account root user email address.
- `GraphArn`: The ARN of the behavior graph to invite the member accounts to contribute their data to.

# Optional Parameters
- `Message`: Customized message text to include in the invitation email message to the invited member accounts.
"""
<<<<<<< HEAD
create_members(Accounts, GraphArn; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/members", Dict{String, Any}("Accounts"=>Accounts, "GraphArn"=>GraphArn); aws_config=aws_config)
create_members(Accounts, GraphArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/members", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Accounts"=>Accounts, "GraphArn"=>GraphArn), args)); aws_config=aws_config)
=======

create_members(Accounts, GraphArn; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/members", Dict{String, Any}("Accounts"=>Accounts, "GraphArn"=>GraphArn); aws_config=aws_config)
create_members(Accounts, GraphArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/members", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Accounts"=>Accounts, "GraphArn"=>GraphArn), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DeleteGraph()

Disables the specified behavior graph and queues it to be deleted. This operation removes the graph from each member account's list of behavior graphs.  DeleteGraph can only be called by the master account for a behavior graph.

# Required Parameters
- `GraphArn`: The ARN of the behavior graph to disable.

"""
<<<<<<< HEAD
delete_graph(GraphArn; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/removal", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
delete_graph(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/removal", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
=======

delete_graph(GraphArn; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/removal", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
delete_graph(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/removal", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DeleteMembers()

Deletes one or more member accounts from the master account behavior graph. This operation can only be called by a Detective master account. That account cannot use DeleteMembers to delete their own account from the behavior graph. To disable a behavior graph, the master account uses the DeleteGraph API method.

# Required Parameters
- `AccountIds`: The list of AWS account identifiers for the member accounts to delete from the behavior graph.
- `GraphArn`: The ARN of the behavior graph to delete members from.

"""
<<<<<<< HEAD
delete_members(AccountIds, GraphArn; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/members/removal", Dict{String, Any}("AccountIds"=>AccountIds, "GraphArn"=>GraphArn); aws_config=aws_config)
delete_members(AccountIds, GraphArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/members/removal", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountIds"=>AccountIds, "GraphArn"=>GraphArn), args)); aws_config=aws_config)
=======

delete_members(AccountIds, GraphArn; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/members/removal", Dict{String, Any}("AccountIds"=>AccountIds, "GraphArn"=>GraphArn); aws_config=aws_config)
delete_members(AccountIds, GraphArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/members/removal", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountIds"=>AccountIds, "GraphArn"=>GraphArn), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DisassociateMembership()

Removes the member account from the specified behavior graph. This operation can only be called by a member account that has the ENABLED status.

# Required Parameters
- `GraphArn`: The ARN of the behavior graph to remove the member account from. The member account's member status in the behavior graph must be ENABLED.

"""
<<<<<<< HEAD
disassociate_membership(GraphArn; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/membership/removal", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
disassociate_membership(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/membership/removal", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
=======

disassociate_membership(GraphArn; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/membership/removal", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
disassociate_membership(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/membership/removal", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    GetMembers()

Returns the membership details for specified member accounts for a behavior graph.

# Required Parameters
- `AccountIds`: The list of AWS account identifiers for the member account for which to return member details. You cannot use GetMembers to retrieve information about member accounts that were removed from the behavior graph.
- `GraphArn`: The ARN of the behavior graph for which to request the member details.

"""
<<<<<<< HEAD
get_members(AccountIds, GraphArn; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/members/get", Dict{String, Any}("AccountIds"=>AccountIds, "GraphArn"=>GraphArn); aws_config=aws_config)
get_members(AccountIds, GraphArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/members/get", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountIds"=>AccountIds, "GraphArn"=>GraphArn), args)); aws_config=aws_config)
=======

get_members(AccountIds, GraphArn; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/members/get", Dict{String, Any}("AccountIds"=>AccountIds, "GraphArn"=>GraphArn); aws_config=aws_config)
get_members(AccountIds, GraphArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/members/get", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountIds"=>AccountIds, "GraphArn"=>GraphArn), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListGraphs()

Returns the list of behavior graphs that the calling account is a master of. This operation can only be called by a master account. Because an account can currently only be the master of one behavior graph within a Region, the results always contain a single graph.

# Optional Parameters
- `MaxResults`: The maximum number of graphs to return at a time. The total must be less than the overall limit on the number of results to return, which is currently 200.
- `NextToken`: For requests to get the next page of results, the pagination token that was returned with the previous set of results. The initial request does not include a pagination token.
"""
<<<<<<< HEAD
list_graphs(; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graphs/list"; aws_config=aws_config)
list_graphs(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graphs/list", args; aws_config=aws_config)
=======

list_graphs(; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graphs/list"; aws_config=aws_config)
list_graphs(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graphs/list", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListInvitations()

Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by a member account. Open invitations are invitations that the member account has not responded to. The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.

# Optional Parameters
- `MaxResults`: The maximum number of behavior graph invitations to return in the response. The total must be less than the overall limit on the number of results to return, which is currently 200.
- `NextToken`: For requests to retrieve the next page of results, the pagination token that was returned with the previous page of results. The initial request does not include a pagination token.
"""
<<<<<<< HEAD
list_invitations(; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/invitations/list"; aws_config=aws_config)
list_invitations(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/invitations/list", args; aws_config=aws_config)
=======

list_invitations(; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/invitations/list"; aws_config=aws_config)
list_invitations(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/invitations/list", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListMembers()

Retrieves the list of member accounts for a behavior graph. Does not return member accounts that were removed from the behavior graph.

# Required Parameters
- `GraphArn`: The ARN of the behavior graph for which to retrieve the list of member accounts.

# Optional Parameters
- `MaxResults`: The maximum number of member accounts to include in the response. The total must be less than the overall limit on the number of results to return, which is currently 200.
- `NextToken`: For requests to retrieve the next page of member account results, the pagination token that was returned with the previous page of results. The initial request does not include a pagination token.
"""
<<<<<<< HEAD
list_members(GraphArn; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/members/list", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
list_members(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/members/list", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
=======

list_members(GraphArn; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/members/list", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
list_members(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/members/list", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    RejectInvitation()

Rejects an invitation to contribute the account data to a behavior graph. This operation must be called by a member account that has the INVITED status.

# Required Parameters
- `GraphArn`: The ARN of the behavior graph to reject the invitation to. The member account's current member status in the behavior graph must be INVITED.

"""
<<<<<<< HEAD
reject_invitation(GraphArn; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/invitation/removal", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
reject_invitation(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/invitation/removal", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
=======

reject_invitation(GraphArn; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/invitation/removal", Dict{String, Any}("GraphArn"=>GraphArn); aws_config=aws_config)
reject_invitation(GraphArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/invitation/removal", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("GraphArn"=>GraphArn), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    StartMonitoringMember()

Sends a request to enable data ingest for a member account that has a status of ACCEPTED_BUT_DISABLED. For valid member accounts, the status is updated as follows.   If Detective enabled the member account, then the new status is ENABLED.   If Detective cannot enable the member account, the status remains ACCEPTED_BUT_DISABLED.   

# Required Parameters
- `AccountId`: The account ID of the member account to try to enable. The account must be an invited member account with a status of ACCEPTED_BUT_DISABLED. 
- `GraphArn`: The ARN of the behavior graph.

"""
<<<<<<< HEAD
start_monitoring_member(AccountId, GraphArn; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/member/monitoringstate", Dict{String, Any}("AccountId"=>AccountId, "GraphArn"=>GraphArn); aws_config=aws_config)
start_monitoring_member(AccountId, GraphArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = detective("POST", "/graph/member/monitoringstate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "GraphArn"=>GraphArn), args)); aws_config=aws_config)
=======

start_monitoring_member(AccountId, GraphArn; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/member/monitoringstate", Dict{String, Any}("AccountId"=>AccountId, "GraphArn"=>GraphArn); aws_config=aws_config)
start_monitoring_member(AccountId, GraphArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = detective("POST", "/graph/member/monitoringstate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "GraphArn"=>GraphArn), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype
