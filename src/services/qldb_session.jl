# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: qldb_session

using Compat
using UUIDs
"""
    SendCommand()

Sends a command to an Amazon QLDB ledger.  Instead of interacting directly with this API, we recommend that you use the Amazon QLDB Driver or the QLDB Shell to execute data transactions on a ledger.   If you are working with an AWS SDK, use the QLDB Driver. The driver provides a high-level abstraction layer above this qldbsession data plane and manages SendCommand API calls for you. For information and a list of supported programming languages, see Getting started with the driver in the Amazon QLDB Developer Guide.   If you are working with the AWS Command Line Interface (AWS CLI), use the QLDB Shell. The shell is a command line interface that uses the QLDB Driver to interact with a ledger. For information, see Accessing Amazon QLDB using the QLDB Shell.   

# Optional Parameters
- `AbortTransaction`: Command to abort the current transaction.
- `CommitTransaction`: Command to commit the specified transaction.
- `EndSession`: Command to end the current session.
- `ExecuteStatement`: Command to execute a statement in the specified transaction.
- `FetchPage`: Command to fetch a page.
- `SessionToken`: Specifies the session token for the current command. A session token is constant throughout the life of the session. To obtain a session token, run the StartSession command. This SessionToken is required for every subsequent command that is issued during the current session.
- `StartSession`: Command to start a new session. A session token is obtained as part of the response.
- `StartTransaction`: Command to start a new transaction.
"""

SendCommand(; aws_config::AWSConfig=AWS.aws_config) = qldb_session("SendCommand"; aws_config=aws_config)
SendCommand(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = qldb_session("SendCommand", args; aws_config=aws_config)
