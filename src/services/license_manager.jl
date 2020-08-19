# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: license_manager

using Compat
using UUIDs
"""
    CreateLicenseConfiguration()

Creates a license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), license affinity to host (how long a license must be associated with a host), and the number of licenses purchased and used.

# Required Parameters
- `LicenseCountingType`: Dimension used to track the license inventory.
- `Name`: Name of the license configuration.

# Optional Parameters
- `Description`: Description of the license configuration.
- `LicenseCount`: Number of licenses managed by the license configuration.
- `LicenseCountHardLimit`: Indicates whether hard or soft license enforcement is used. Exceeding a hard limit blocks the launch of new instances.
- `LicenseRules`: License rules. The syntax is #name=value (for example, #allowedTenancy=EC2-DedicatedHost). The available rules vary by dimension, as follows.    Cores dimension: allowedTenancy | licenseAffinityToHost | maximumCores | minimumCores     Instances dimension: allowedTenancy | maximumCores | minimumCores | maximumSockets | minimumSockets | maximumVcpus | minimumVcpus     Sockets dimension: allowedTenancy | licenseAffinityToHost | maximumSockets | minimumSockets     vCPUs dimension: allowedTenancy | honorVcpuOptimization | maximumVcpus | minimumVcpus    The unit for licenseAffinityToHost is days and the range is 1 to 180. The possible values for allowedTenancy are EC2-Default, EC2-DedicatedHost, and EC2-DedicatedInstance. The possible values for honorVcpuOptimization are True and False.
- `ProductInformationList`: Product information.
- `Tags`: Tags to add to the license configuration.
"""

CreateLicenseConfiguration(LicenseCountingType, Name; aws_config::AWSConfig=global_aws_config()) = license_manager("CreateLicenseConfiguration", Dict{String, Any}("LicenseCountingType"=>LicenseCountingType, "Name"=>Name); aws_config=aws_config)
CreateLicenseConfiguration(LicenseCountingType, Name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("CreateLicenseConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LicenseCountingType"=>LicenseCountingType, "Name"=>Name), args)); aws_config=aws_config)

"""
    DeleteLicenseConfiguration()

Deletes the specified license configuration. You cannot delete a license configuration that is in use.

# Required Parameters
- `LicenseConfigurationArn`: ID of the license configuration.

"""

DeleteLicenseConfiguration(LicenseConfigurationArn; aws_config::AWSConfig=global_aws_config()) = license_manager("DeleteLicenseConfiguration", Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn); aws_config=aws_config)
DeleteLicenseConfiguration(LicenseConfigurationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("DeleteLicenseConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn), args)); aws_config=aws_config)

"""
    GetLicenseConfiguration()

Gets detailed information about the specified license configuration.

# Required Parameters
- `LicenseConfigurationArn`: Amazon Resource Name (ARN) of the license configuration.

"""

GetLicenseConfiguration(LicenseConfigurationArn; aws_config::AWSConfig=global_aws_config()) = license_manager("GetLicenseConfiguration", Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn); aws_config=aws_config)
GetLicenseConfiguration(LicenseConfigurationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("GetLicenseConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn), args)); aws_config=aws_config)

"""
    GetServiceSettings()

Gets the License Manager settings for the current Region.

"""

GetServiceSettings(; aws_config::AWSConfig=global_aws_config()) = license_manager("GetServiceSettings"; aws_config=aws_config)
GetServiceSettings(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("GetServiceSettings", args; aws_config=aws_config)

"""
    ListAssociationsForLicenseConfiguration()

Lists the resource associations for the specified license configuration. Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance might not consume a license (depending on the license rules).

# Required Parameters
- `LicenseConfigurationArn`: Amazon Resource Name (ARN) of a license configuration.

# Optional Parameters
- `MaxResults`: Maximum number of results to return in a single call.
- `NextToken`: Token for the next set of results.
"""

ListAssociationsForLicenseConfiguration(LicenseConfigurationArn; aws_config::AWSConfig=global_aws_config()) = license_manager("ListAssociationsForLicenseConfiguration", Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn); aws_config=aws_config)
ListAssociationsForLicenseConfiguration(LicenseConfigurationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("ListAssociationsForLicenseConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn), args)); aws_config=aws_config)

"""
    ListFailuresForLicenseConfigurationOperations()

Lists the license configuration operations that failed.

# Required Parameters
- `LicenseConfigurationArn`: Amazon Resource Name of the license configuration.

# Optional Parameters
- `MaxResults`: Maximum number of results to return in a single call.
- `NextToken`: Token for the next set of results.
"""

ListFailuresForLicenseConfigurationOperations(LicenseConfigurationArn; aws_config::AWSConfig=global_aws_config()) = license_manager("ListFailuresForLicenseConfigurationOperations", Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn); aws_config=aws_config)
ListFailuresForLicenseConfigurationOperations(LicenseConfigurationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("ListFailuresForLicenseConfigurationOperations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn), args)); aws_config=aws_config)

"""
    ListLicenseConfigurations()

Lists the license configurations for your account.

# Optional Parameters
- `Filters`: Filters to scope the results. The following filters and logical operators are supported:    licenseCountingType - The dimension on which licenses are counted. Possible values are vCPU | Instance | Core | Socket. Logical operators are EQUALS | NOT_EQUALS.    enforceLicenseCount - A Boolean value that indicates whether hard license enforcement is used. Logical operators are EQUALS | NOT_EQUALS.    usagelimitExceeded - A Boolean value that indicates whether the available licenses have been exceeded. Logical operators are EQUALS | NOT_EQUALS.  
- `LicenseConfigurationArns`: Amazon Resource Names (ARN) of the license configurations.
- `MaxResults`: Maximum number of results to return in a single call.
- `NextToken`: Token for the next set of results.
"""

ListLicenseConfigurations(; aws_config::AWSConfig=global_aws_config()) = license_manager("ListLicenseConfigurations"; aws_config=aws_config)
ListLicenseConfigurations(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("ListLicenseConfigurations", args; aws_config=aws_config)

"""
    ListLicenseSpecificationsForResource()

Describes the license configurations for the specified resource.

# Required Parameters
- `ResourceArn`: Amazon Resource Name (ARN) of a resource that has an associated license configuration.

# Optional Parameters
- `MaxResults`: Maximum number of results to return in a single call.
- `NextToken`: Token for the next set of results.
"""

ListLicenseSpecificationsForResource(ResourceArn; aws_config::AWSConfig=global_aws_config()) = license_manager("ListLicenseSpecificationsForResource", Dict{String, Any}("ResourceArn"=>ResourceArn); aws_config=aws_config)
ListLicenseSpecificationsForResource(ResourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("ListLicenseSpecificationsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn), args)); aws_config=aws_config)

"""
    ListResourceInventory()

Lists resources managed using Systems Manager inventory.

# Optional Parameters
- `Filters`: Filters to scope the results. The following filters and logical operators are supported:    account_id - The ID of the AWS account that owns the resource. Logical operators are EQUALS | NOT_EQUALS.    application_name - The name of the application. Logical operators are EQUALS | BEGINS_WITH.    license_included - The type of license included. Logical operators are EQUALS | NOT_EQUALS. Possible values are sql-server-enterprise | sql-server-standard | sql-server-web | windows-server-datacenter.    platform - The platform of the resource. Logical operators are EQUALS | BEGINS_WITH.    resource_id - The ID of the resource. Logical operators are EQUALS | NOT_EQUALS.  
- `MaxResults`: Maximum number of results to return in a single call.
- `NextToken`: Token for the next set of results.
"""

ListResourceInventory(; aws_config::AWSConfig=global_aws_config()) = license_manager("ListResourceInventory"; aws_config=aws_config)
ListResourceInventory(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("ListResourceInventory", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags for the specified license configuration.

# Required Parameters
- `ResourceArn`: Amazon Resource Name (ARN) of the license configuration.

"""

ListTagsForResource(ResourceArn; aws_config::AWSConfig=global_aws_config()) = license_manager("ListTagsForResource", Dict{String, Any}("ResourceArn"=>ResourceArn); aws_config=aws_config)
ListTagsForResource(ResourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn), args)); aws_config=aws_config)

"""
    ListUsageForLicenseConfiguration()

Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.

# Required Parameters
- `LicenseConfigurationArn`: Amazon Resource Name (ARN) of the license configuration.

# Optional Parameters
- `Filters`: Filters to scope the results. The following filters and logical operators are supported:    resourceArn - The ARN of the license configuration resource. Logical operators are EQUALS | NOT_EQUALS.    resourceType - The resource type (EC2_INSTANCE | EC2_HOST | EC2_AMI | SYSTEMS_MANAGER_MANAGED_INSTANCE). Logical operators are EQUALS | NOT_EQUALS.    resourceAccount - The ID of the account that owns the resource. Logical operators are EQUALS | NOT_EQUALS.  
- `MaxResults`: Maximum number of results to return in a single call.
- `NextToken`: Token for the next set of results.
"""

ListUsageForLicenseConfiguration(LicenseConfigurationArn; aws_config::AWSConfig=global_aws_config()) = license_manager("ListUsageForLicenseConfiguration", Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn); aws_config=aws_config)
ListUsageForLicenseConfiguration(LicenseConfigurationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("ListUsageForLicenseConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn), args)); aws_config=aws_config)

"""
    TagResource()

Adds the specified tags to the specified license configuration.

# Required Parameters
- `ResourceArn`: Amazon Resource Name (ARN) of the license configuration.
- `Tags`: One or more tags.

"""

TagResource(ResourceArn, Tags; aws_config::AWSConfig=global_aws_config()) = license_manager("TagResource", Dict{String, Any}("ResourceArn"=>ResourceArn, "Tags"=>Tags); aws_config=aws_config)
TagResource(ResourceArn, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes the specified tags from the specified license configuration.

# Required Parameters
- `ResourceArn`: Amazon Resource Name (ARN) of the license configuration.
- `TagKeys`: Keys identifying the tags to remove.

"""

UntagResource(ResourceArn, TagKeys; aws_config::AWSConfig=global_aws_config()) = license_manager("UntagResource", Dict{String, Any}("ResourceArn"=>ResourceArn, "TagKeys"=>TagKeys); aws_config=aws_config)
UntagResource(ResourceArn, TagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn, "TagKeys"=>TagKeys), args)); aws_config=aws_config)

"""
    UpdateLicenseConfiguration()

Modifies the attributes of an existing license configuration.

# Required Parameters
- `LicenseConfigurationArn`: Amazon Resource Name (ARN) of the license configuration.

# Optional Parameters
- `Description`: New description of the license configuration.
- `LicenseConfigurationStatus`: New status of the license configuration.
- `LicenseCount`: New number of licenses managed by the license configuration.
- `LicenseCountHardLimit`: New hard limit of the number of available licenses.
- `LicenseRules`: New license rule. The only rule that you can add after you create a license configuration is licenseAffinityToHost.
- `Name`: New name of the license configuration.
- `ProductInformationList`: New product information.
"""

UpdateLicenseConfiguration(LicenseConfigurationArn; aws_config::AWSConfig=global_aws_config()) = license_manager("UpdateLicenseConfiguration", Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn); aws_config=aws_config)
UpdateLicenseConfiguration(LicenseConfigurationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("UpdateLicenseConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LicenseConfigurationArn"=>LicenseConfigurationArn), args)); aws_config=aws_config)

"""
    UpdateLicenseSpecificationsForResource()

Adds or removes the specified license configurations for the specified AWS resource. You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and AWS CloudFormation templates, as they send license configurations to the operation that creates the resource.

# Required Parameters
- `ResourceArn`: Amazon Resource Name (ARN) of the AWS resource.

# Optional Parameters
- `AddLicenseSpecifications`: ARNs of the license configurations to add.
- `RemoveLicenseSpecifications`: ARNs of the license configurations to remove.
"""

UpdateLicenseSpecificationsForResource(ResourceArn; aws_config::AWSConfig=global_aws_config()) = license_manager("UpdateLicenseSpecificationsForResource", Dict{String, Any}("ResourceArn"=>ResourceArn); aws_config=aws_config)
UpdateLicenseSpecificationsForResource(ResourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("UpdateLicenseSpecificationsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn), args)); aws_config=aws_config)

"""
    UpdateServiceSettings()

Updates License Manager settings for the current Region.

# Optional Parameters
- `EnableCrossAccountsDiscovery`: Activates cross-account discovery.
- `OrganizationConfiguration`: Enables integration with AWS Organizations for cross-account discovery.
- `S3BucketArn`: Amazon Resource Name (ARN) of the Amazon S3 bucket where the License Manager information is stored.
- `SnsTopicArn`: Amazon Resource Name (ARN) of the Amazon SNS topic used for License Manager alerts.
"""

UpdateServiceSettings(; aws_config::AWSConfig=global_aws_config()) = license_manager("UpdateServiceSettings"; aws_config=aws_config)
UpdateServiceSettings(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = license_manager("UpdateServiceSettings", args; aws_config=aws_config)
