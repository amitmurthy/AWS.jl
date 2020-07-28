# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
using Compat
using .AWSServices: transfer

"""
    CreateServer()

Instantiates an autoscaling virtual server based on the selected file transfer protocol in AWS. When you make updates to your file transfer protocol-enabled server or when you work with users, use the service-generated ServerId property that is assigned to the newly created server.

Optional Parameters
Certificate => The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate. Required when Protocols is set to FTPS. To request a new public certificate, see Request a public certificate in the  AWS Certificate Manager User Guide. To import an existing certificate into ACM, see Importing certificates into ACM in the  AWS Certificate Manager User Guide. To request a private certificate to use FTPS through private IP addresses, see Request a private certificate in the  AWS Certificate Manager User Guide. Certificates with the following cryptographic algorithms and key sizes are supported:   2048-bit RSA (RSA_2048)   4096-bit RSA (RSA_4096)   Elliptic Prime Curve 256 bit (EC_prime256v1)   Elliptic Prime Curve 384 bit (EC_secp384r1)   Elliptic Prime Curve 521 bit (EC_secp521r1)    The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP address specified and information about the issuer. 
EndpointDetails => The virtual private cloud (VPC) endpoint settings that are configured for your file transfer protocol-enabled server. When you host your endpoint within your VPC, you can make it accessible only to resources within your VPC, or you can attach Elastic IPs and make it accessible to clients over the internet. Your VPC's default security groups are automatically assigned to your endpoint.
EndpointType => The type of VPC endpoint that you want your file transfer protocol-enabled server to connect to. You can choose to connect to the public internet or a VPC endpoint. With a VPC endpoint, you can restrict access to your server and resources only within your VPC.  It is recommended that you use VPC as the EndpointType. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included) with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with EndpointType set to VPC_ENDPOINT. 
HostKey => The RSA private key as generated by the ssh-keygen -N "" -m PEM -f my-new-server-key command.  If you aren't planning to migrate existing users from an existing SFTP-enabled server to a new server, don't update the host key. Accidentally changing a server's host key can be disruptive.  For more information, see Change the host key for your SFTP-enabled server in the AWS Transfer Family User Guide.
IdentityProviderDetails => Required when IdentityProviderType is set to API_GATEWAY. Accepts an array containing all of the information required to call a customer-supplied authentication API, including the API Gateway URL. Not required when IdentityProviderType is set to SERVICE_MANAGED.
IdentityProviderType => Specifies the mode of authentication for a file transfer protocol-enabled server. The default value is SERVICE_MANAGED, which allows you to store and access user credentials within the AWS Transfer Family service. Use the API_GATEWAY value to integrate with an identity provider of your choosing. The API_GATEWAY setting requires you to provide an API Gateway endpoint URL to call for authentication using the IdentityProviderDetails parameter.
LoggingRole => Allows the service to write your users' activity to your Amazon CloudWatch logs for monitoring and auditing purposes.
Protocols => Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:    SFTP (Secure Shell (SSH) File Transfer Protocol): File transfer over SSH    FTPS (File Transfer Protocol Secure): File transfer with TLS encryption    FTP (File Transfer Protocol): Unencrypted file transfer    If you select FTPS, you must choose a certificate stored in AWS Certificate Manager (ACM) which will be used to identify your server when clients connect to it over FTPS. If Protocol includes either FTP or FTPS, then the EndpointType must be VPC and the IdentityProviderType must be API_GATEWAY. If Protocol includes FTP, then AddressAllocationIds cannot be associated. If Protocol is set only to SFTP, the EndpointType can be set to PUBLIC and the IdentityProviderType can be set to SERVICE_MANAGED. 
Tags => Key-value pairs that can be used to group and search for file transfer protocol-enabled servers.
"""
CreateServer() = transfer("CreateServer")
CreateServer(args::AbstractDict{String, <: Any}) = transfer("CreateServer", args)

"""
    CreateUser()

Creates a user and associates them with an existing file transfer protocol-enabled server. You can only create and associate users with servers that have the IdentityProviderType set to SERVICE_MANAGED. Using parameters for CreateUser, you can specify the user name, set the home directory, store the user's public key, and assign the user's AWS Identity and Access Management (IAM) role. You can also optionally add a scope-down policy, and assign metadata with tags that can be used to group and search for users.

Required Parameters
Role => The IAM role that controls your users' access to your Amazon S3 bucket. The policies attached to this role will determine the level of access you want to provide your users when transferring files into and out of your Amazon S3 bucket or buckets. The IAM role should also contain a trust relationship that allows the file transfer protocol-enabled server to access your resources when servicing your users' transfer requests.
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server instance. This is the specific server that you added your user to.
UserName => A unique string that identifies a user and is associated with a file transfer protocol-enabled server as specified by the ServerId. This user name must be a minimum of 3 and a maximum of 32 characters long. The following are valid characters: a-z, A-Z, 0-9, underscore, and hyphen. The user name can't start with a hyphen.

Optional Parameters
HomeDirectory => The landing directory (folder) for a user when they log in to the file transfer protocol-enabled server using the client. An example is  your-Amazon-S3-bucket-name&gt;/home/username .
HomeDirectoryMappings => Logical directory mappings that specify what Amazon S3 paths and keys should be visible to your user and how you want to make them visible. You will need to specify the "Entry" and "Target" pair, where Entry shows how the path is made visible and Target is the actual Amazon S3 path. If you only specify a target, it will be displayed as is. You will need to also make sure that your IAM role provides access to paths in Target. The following is an example.  '[ "/bucket2/documentation", { "Entry": "your-personal-report.pdf", "Target": "/bucket3/customized-reports/ {transfer:UserName}.pdf" } ]'  In most cases, you can use this value instead of the scope-down policy to lock your user down to the designated home directory ("chroot"). To do this, you can set Entry to '/' and set Target to the HomeDirectory parameter value.  If the target of a logical directory entry does not exist in Amazon S3, the entry will be ignored. As a workaround, you can use the Amazon S3 api to create 0 byte objects as place holders for your directory. If using the CLI, use the s3api call instead of s3 so you can use the put-object operation. For example, you use the following: aws s3api put-object --bucket bucketname --key path/to/folder/. Make sure that the end of the key name ends in a '/' for it to be considered a folder. 
HomeDirectoryType => The type of landing directory (folder) you want your users' home directory to be when they log into the file transfer protocol-enabled server. If you set it to PATH, the user will see the absolute Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it LOGICAL, you will need to provide mappings in the HomeDirectoryMappings for how you want to make Amazon S3 paths visible to your users.
Policy => A scope-down policy for your user so you can use the same IAM role across multiple users. This policy scopes down user access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include  {Transfer:UserName},  {Transfer:HomeDirectory}, and  {Transfer:HomeBucket}.  For scope-down policies, AWS Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the Policy argument. For an example of a scope-down policy, see Creating a scope-down policy. For more information, see AssumeRole in the AWS Security Token Service API Reference. 
SshPublicKeyBody => The public portion of the Secure Shell (SSH) key used to authenticate the user to the file transfer protocol-enabled server.
Tags => Key-value pairs that can be used to group and search for users. Tags are metadata attached to users for any purpose.
"""
CreateUser(Role, ServerId, UserName) = transfer("CreateUser", Dict{String, Any}("Role"=>Role, "ServerId"=>ServerId, "UserName"=>UserName))
CreateUser(Role, ServerId, UserName, args::AbstractDict{String, <: Any}) = transfer("CreateUser", Dict{String, Any}("Role"=>Role, "ServerId"=>ServerId, "UserName"=>UserName, args...))

"""
    DeleteServer()

Deletes the file transfer protocol-enabled server that you specify. No response returns from this operation.

Required Parameters
ServerId => A unique system-assigned identifier for a file transfer protocol-enabled server instance.

"""
DeleteServer(ServerId) = transfer("DeleteServer", Dict{String, Any}("ServerId"=>ServerId))
DeleteServer(ServerId, args::AbstractDict{String, <: Any}) = transfer("DeleteServer", Dict{String, Any}("ServerId"=>ServerId, args...))

"""
    DeleteSshPublicKey()

Deletes a user's Secure Shell (SSH) public key. No response is returned from this operation.

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server instance that has the user assigned to it.
SshPublicKeyId => A unique identifier used to reference your user's specific SSH key.
UserName => A unique string that identifies a user whose public key is being deleted.

"""
DeleteSshPublicKey(ServerId, SshPublicKeyId, UserName) = transfer("DeleteSshPublicKey", Dict{String, Any}("ServerId"=>ServerId, "SshPublicKeyId"=>SshPublicKeyId, "UserName"=>UserName))
DeleteSshPublicKey(ServerId, SshPublicKeyId, UserName, args::AbstractDict{String, <: Any}) = transfer("DeleteSshPublicKey", Dict{String, Any}("ServerId"=>ServerId, "SshPublicKeyId"=>SshPublicKeyId, "UserName"=>UserName, args...))

"""
    DeleteUser()

Deletes the user belonging to a file transfer protocol-enabled server you specify. No response returns from this operation.  When you delete a user from a server, the user's information is lost. 

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server instance that has the user assigned to it.
UserName => A unique string that identifies a user that is being deleted from a file transfer protocol-enabled server.

"""
DeleteUser(ServerId, UserName) = transfer("DeleteUser", Dict{String, Any}("ServerId"=>ServerId, "UserName"=>UserName))
DeleteUser(ServerId, UserName, args::AbstractDict{String, <: Any}) = transfer("DeleteUser", Dict{String, Any}("ServerId"=>ServerId, "UserName"=>UserName, args...))

"""
    DescribeServer()

Describes a file transfer protocol-enabled server that you specify by passing the ServerId parameter. The response contains a description of a server's properties. When you set EndpointType to VPC, the response will contain the EndpointDetails.

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server.

"""
DescribeServer(ServerId) = transfer("DescribeServer", Dict{String, Any}("ServerId"=>ServerId))
DescribeServer(ServerId, args::AbstractDict{String, <: Any}) = transfer("DescribeServer", Dict{String, Any}("ServerId"=>ServerId, args...))

"""
    DescribeUser()

Describes the user assigned to the specific file transfer protocol-enabled server, as identified by its ServerId property. The response from this call returns the properties of the user associated with the ServerId value that was specified.

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server that has this user assigned.
UserName => The name of the user assigned to one or more file transfer protocol-enabled servers. User names are part of the sign-in credentials to use the AWS Transfer Family service and perform file transfer tasks.

"""
DescribeUser(ServerId, UserName) = transfer("DescribeUser", Dict{String, Any}("ServerId"=>ServerId, "UserName"=>UserName))
DescribeUser(ServerId, UserName, args::AbstractDict{String, <: Any}) = transfer("DescribeUser", Dict{String, Any}("ServerId"=>ServerId, "UserName"=>UserName, args...))

"""
    ImportSshPublicKey()

Adds a Secure Shell (SSH) public key to a user account identified by a UserName value assigned to the specific file transfer protocol-enabled server, identified by ServerId. The response returns the UserName value, the ServerId value, and the name of the SshPublicKeyId.

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server.
SshPublicKeyBody => The public key portion of an SSH key pair.
UserName => The name of the user account that is assigned to one or more file transfer protocol-enabled servers.

"""
ImportSshPublicKey(ServerId, SshPublicKeyBody, UserName) = transfer("ImportSshPublicKey", Dict{String, Any}("ServerId"=>ServerId, "SshPublicKeyBody"=>SshPublicKeyBody, "UserName"=>UserName))
ImportSshPublicKey(ServerId, SshPublicKeyBody, UserName, args::AbstractDict{String, <: Any}) = transfer("ImportSshPublicKey", Dict{String, Any}("ServerId"=>ServerId, "SshPublicKeyBody"=>SshPublicKeyBody, "UserName"=>UserName, args...))

"""
    ListServers()

Lists the file transfer protocol-enabled servers that are associated with your AWS account.

Optional Parameters
MaxResults => Specifies the number of file transfer protocol-enabled servers to return as a response to the ListServers query.
NextToken => When additional results are obtained from theListServers command, a NextToken parameter is returned in the output. You can then pass the NextToken parameter in a subsequent command to continue listing additional file transfer protocol-enabled servers.
"""
ListServers() = transfer("ListServers")
ListServers(args::AbstractDict{String, <: Any}) = transfer("ListServers", args)

"""
    ListTagsForResource()

Lists all of the tags associated with the Amazon Resource Number (ARN) you specify. The resource can be a user, server, or role.

Required Parameters
Arn => Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an identifier for a specific AWS resource, such as a server, user, or role.

Optional Parameters
MaxResults => Specifies the number of tags to return as a response to the ListTagsForResource request.
NextToken => When you request additional results from the ListTagsForResource operation, a NextToken parameter is returned in the input. You can then pass in a subsequent command to the NextToken parameter to continue listing additional tags.
"""
ListTagsForResource(Arn) = transfer("ListTagsForResource", Dict{String, Any}("Arn"=>Arn))
ListTagsForResource(Arn, args::AbstractDict{String, <: Any}) = transfer("ListTagsForResource", Dict{String, Any}("Arn"=>Arn, args...))

"""
    ListUsers()

Lists the users for a file transfer protocol-enabled server that you specify by passing the ServerId parameter.

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server that has users assigned to it.

Optional Parameters
MaxResults => Specifies the number of users to return as a response to the ListUsers request.
NextToken => When you can get additional results from the ListUsers call, a NextToken parameter is returned in the output. You can then pass in a subsequent command to the NextToken parameter to continue listing additional users.
"""
ListUsers(ServerId) = transfer("ListUsers", Dict{String, Any}("ServerId"=>ServerId))
ListUsers(ServerId, args::AbstractDict{String, <: Any}) = transfer("ListUsers", Dict{String, Any}("ServerId"=>ServerId, args...))

"""
    StartServer()

Changes the state of a file transfer protocol-enabled server from OFFLINE to ONLINE. It has no impact on a server that is already ONLINE. An ONLINE server can accept and process file transfer jobs. The state of STARTING indicates that the server is in an intermediate state, either not fully able to respond, or not fully online. The values of START_FAILED can indicate an error condition. No response is returned from this call.

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server that you start.

"""
StartServer(ServerId) = transfer("StartServer", Dict{String, Any}("ServerId"=>ServerId))
StartServer(ServerId, args::AbstractDict{String, <: Any}) = transfer("StartServer", Dict{String, Any}("ServerId"=>ServerId, args...))

"""
    StopServer()

Changes the state of a file transfer protocol-enabled server from ONLINE to OFFLINE. An OFFLINE server cannot accept and process file transfer jobs. Information tied to your server, such as server and user properties, are not affected by stopping your server. Stopping the server will not reduce or impact your file transfer protocol endpoint billing. The state of STOPPING indicates that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of STOP_FAILED can indicate an error condition. No response is returned from this call.

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server that you stopped.

"""
StopServer(ServerId) = transfer("StopServer", Dict{String, Any}("ServerId"=>ServerId))
StopServer(ServerId, args::AbstractDict{String, <: Any}) = transfer("StopServer", Dict{String, Any}("ServerId"=>ServerId, args...))

"""
    TagResource()

Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities. There is no response returned from this call.

Required Parameters
Arn => An Amazon Resource Name (ARN) for a specific AWS resource, such as a server, user, or role.
Tags => Key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to user accounts for any purpose.

"""
TagResource(Arn, Tags) = transfer("TagResource", Dict{String, Any}("Arn"=>Arn, "Tags"=>Tags))
TagResource(Arn, Tags, args::AbstractDict{String, <: Any}) = transfer("TagResource", Dict{String, Any}("Arn"=>Arn, "Tags"=>Tags, args...))

"""
    TestIdentityProvider()

If the IdentityProviderType of a file transfer protocol-enabled server is API_Gateway, tests whether your API Gateway is set up successfully. We highly recommend that you call this operation to test your authentication method as soon as you create your server. By doing so, you can troubleshoot issues with the API Gateway integration to ensure that your users can successfully use the service.

Required Parameters
ServerId => A system-assigned identifier for a specific file transfer protocol-enabled server. That server's user authentication method is tested with a user name and password.
UserName => The name of the user account to be tested.

Optional Parameters
ServerProtocol => The type of file transfer protocol to be tested. The available protocols are:   Secure Shell (SSH) File Transfer Protocol (SFTP)   File Transfer Protocol Secure (FTPS)   File Transfer Protocol (FTP)  
SourceIp => The source IP address of the user account to be tested.
UserPassword => The password of the user account to be tested.
"""
TestIdentityProvider(ServerId, UserName) = transfer("TestIdentityProvider", Dict{String, Any}("ServerId"=>ServerId, "UserName"=>UserName))
TestIdentityProvider(ServerId, UserName, args::AbstractDict{String, <: Any}) = transfer("TestIdentityProvider", Dict{String, Any}("ServerId"=>ServerId, "UserName"=>UserName, args...))

"""
    UntagResource()

Detaches a key-value pair from a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities. No response is returned from this call.

Required Parameters
Arn => The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is an identifier for a specific AWS resource, such as a server, user, or role.
TagKeys => TagKeys are key-value pairs assigned to ARNs that can be used to group and search for resources by type. This metadata can be attached to resources for any purpose.

"""
UntagResource(Arn, TagKeys) = transfer("UntagResource", Dict{String, Any}("Arn"=>Arn, "TagKeys"=>TagKeys))
UntagResource(Arn, TagKeys, args::AbstractDict{String, <: Any}) = transfer("UntagResource", Dict{String, Any}("Arn"=>Arn, "TagKeys"=>TagKeys, args...))

"""
    UpdateServer()

Updates the file transfer protocol-enabled server's properties after that server has been created. The UpdateServer call returns the ServerId of the server you updated.

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server instance that the user account is assigned to.

Optional Parameters
Certificate => The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate. Required when Protocols is set to FTPS. To request a new public certificate, see Request a public certificate in the  AWS Certificate Manager User Guide. To import an existing certificate into ACM, see Importing certificates into ACM in the  AWS Certificate Manager User Guide. To request a private certificate to use FTPS through private IP addresses, see Request a private certificate in the  AWS Certificate Manager User Guide. Certificates with the following cryptographic algorithms and key sizes are supported:   2048-bit RSA (RSA_2048)   4096-bit RSA (RSA_4096)   Elliptic Prime Curve 256 bit (EC_prime256v1)   Elliptic Prime Curve 384 bit (EC_secp384r1)   Elliptic Prime Curve 521 bit (EC_secp521r1)    The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP address specified and information about the issuer. 
EndpointDetails => The virtual private cloud (VPC) endpoint settings that are configured for your file transfer protocol-enabled server. With a VPC endpoint, you can restrict access to your server to resources only within your VPC. To control incoming internet traffic, you will need to associate one or more Elastic IP addresses with your server's endpoint.
EndpointType => The type of endpoint that you want your file transfer protocol-enabled server to connect to. You can choose to connect to the public internet or a VPC endpoint. With a VPC endpoint, you can restrict access to your server and resources only within your VPC.  It is recommended that you use VPC as the EndpointType. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included) with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with EndpointType set to VPC_ENDPOINT. 
HostKey => The RSA private key as generated by ssh-keygen -N "" -m PEM -f my-new-server-key.  If you aren't planning to migrate existing users from an existing file transfer protocol-enabled server to a new server, don't update the host key. Accidentally changing a server's host key can be disruptive.  For more information, see Change the host key for your SFTP-enabled server in the AWS Transfer Family User Guide.
IdentityProviderDetails => An array containing all of the information required to call a customer's authentication API method.
LoggingRole => Changes the AWS Identity and Access Management (IAM) role that allows Amazon S3 events to be logged in Amazon CloudWatch, turning logging on or off.
Protocols => Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:   Secure Shell (SSH) File Transfer Protocol (SFTP): File transfer over SSH   File Transfer Protocol Secure (FTPS): File transfer with TLS encryption   File Transfer Protocol (FTP): Unencrypted file transfer    If you select FTPS, you must choose a certificate stored in AWS Certificate Manager (ACM) which will be used to identify your server when clients connect to it over FTPS. If Protocol includes either FTP or FTPS, then the EndpointType must be VPC and the IdentityProviderType must be API_GATEWAY. If Protocol includes FTP, then AddressAllocationIds cannot be associated. If Protocol is set only to SFTP, the EndpointType can be set to PUBLIC and the IdentityProviderType can be set to SERVICE_MANAGED. 
"""
UpdateServer(ServerId) = transfer("UpdateServer", Dict{String, Any}("ServerId"=>ServerId))
UpdateServer(ServerId, args::AbstractDict{String, <: Any}) = transfer("UpdateServer", Dict{String, Any}("ServerId"=>ServerId, args...))

"""
    UpdateUser()

Assigns new properties to a user. Parameters you pass modify any or all of the following: the home directory, role, and policy for the UserName and ServerId you specify. The response returns the ServerId and the UserName for the updated user.

Required Parameters
ServerId => A system-assigned unique identifier for a file transfer protocol-enabled server instance that the user account is assigned to.
UserName => A unique string that identifies a user and is associated with a file transfer protocol-enabled server as specified by the ServerId. This is the string that will be used by your user when they log in to your server. This user name is a minimum of 3 and a maximum of 32 characters long. The following are valid characters: a-z, A-Z, 0-9, underscore, and hyphen. The user name can't start with a hyphen.

Optional Parameters
HomeDirectory => Specifies the landing directory (folder) for a user when they log in to the file transfer protocol-enabled server using their file transfer protocol client. An example is your-Amazon-S3-bucket-name&gt;/home/username.
HomeDirectoryMappings => Logical directory mappings that specify what Amazon S3 paths and keys should be visible to your user and how you want to make them visible. You will need to specify the "Entry" and "Target" pair, where Entry shows how the path is made visible and Target is the actual Amazon S3 path. If you only specify a target, it will be displayed as is. You will need to also make sure that your IAM role provides access to paths in Target. The following is an example.  '[ "/bucket2/documentation", { "Entry": "your-personal-report.pdf", "Target": "/bucket3/customized-reports/ {transfer:UserName}.pdf" } ]'  In most cases, you can use this value instead of the scope-down policy to lock your user down to the designated home directory ("chroot"). To do this, you can set Entry to '/' and set Target to the HomeDirectory parameter value.  If the target of a logical directory entry does not exist in Amazon S3, the entry will be ignored. As a workaround, you can use the Amazon S3 api to create 0 byte objects as place holders for your directory. If using the CLI, use the s3api call instead of s3 so you can use the put-object operation. For example, you use the following: aws s3api put-object --bucket bucketname --key path/to/folder/. Make sure that the end of the key name ends in a / for it to be considered a folder. 
HomeDirectoryType => The type of landing directory (folder) you want your users' home directory to be when they log into the file transfer protocol-enabled server. If you set it to PATH, the user will see the absolute Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it LOGICAL, you will need to provide mappings in the HomeDirectoryMappings for how you want to make Amazon S3 paths visible to your users.
Policy => Allows you to supply a scope-down policy for your user so you can use the same IAM role across multiple users. The policy scopes down user access to portions of your Amazon S3 bucket. Variables you can use inside this policy include  {Transfer:UserName},  {Transfer:HomeDirectory}, and  {Transfer:HomeBucket}.  For scope-down policies, AWS Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the Policy argument. For an example of a scope-down policy, see Creating a scope-down policy. For more information, see AssumeRole in the AWS Security Token Service API Reference. 
Role => The IAM role that controls your users' access to your Amazon S3 bucket. The policies attached to this role will determine the level of access you want to provide your users when transferring files into and out of your Amazon S3 bucket or buckets. The IAM role should also contain a trust relationship that allows the file transfer protocol-enabled server to access your resources when servicing your users' transfer requests.
"""
UpdateUser(ServerId, UserName) = transfer("UpdateUser", Dict{String, Any}("ServerId"=>ServerId, "UserName"=>UserName))
UpdateUser(ServerId, UserName, args::AbstractDict{String, <: Any}) = transfer("UpdateUser", Dict{String, Any}("ServerId"=>ServerId, "UserName"=>UserName, args...))
