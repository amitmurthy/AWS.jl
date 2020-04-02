include("../AWSServices.jl")
using .AWSServices: elastic_load_balancing_v2

"""
    DescribeLoadBalancerAttributes()

Describes the attributes for the specified Application Load Balancer or Network Load Balancer. For more information, see Load Balancer Attributes in the Application Load Balancers Guide or Load Balancer Attributes in the Network Load Balancers Guide.

Required Parameters
{
  "LoadBalancerArn": "The Amazon Resource Name (ARN) of the load balancer."
}
"""
DescribeLoadBalancerAttributes(args) = elastic_load_balancing_v2("DescribeLoadBalancerAttributes", args)

"""
    DescribeListeners()

Describes the specified listeners or the listeners for the specified Application Load Balancer or Network Load Balancer. You must specify either a load balancer or one or more listeners. For an HTTPS or TLS listener, the output includes the default certificate for the listener. To describe the certificate list for the listener, use DescribeListenerCertificates.

Optional Parameters
{
  "Marker": "The marker for the next set of results. (You received this marker from a previous call.)",
  "ListenerArns": "The Amazon Resource Names (ARN) of the listeners.",
  "PageSize": "The maximum number of results to return with this call.",
  "LoadBalancerArn": "The Amazon Resource Name (ARN) of the load balancer."
}
"""
DescribeListeners() = elastic_load_balancing_v2("DescribeListeners")
DescribeListeners(args) = elastic_load_balancing_v2("DescribeListeners", args)

"""
    DescribeSSLPolicies()

Describes the specified policies or all policies used for SSL negotiation. For more information, see Security Policies in the Application Load Balancers Guide.

Optional Parameters
{
  "Marker": "The marker for the next set of results. (You received this marker from a previous call.)",
  "Names": "The names of the policies.",
  "PageSize": "The maximum number of results to return with this call."
}
"""
DescribeSSLPolicies() = elastic_load_balancing_v2("DescribeSSLPolicies")
DescribeSSLPolicies(args) = elastic_load_balancing_v2("DescribeSSLPolicies", args)

"""
    DescribeTargetGroupAttributes()

Describes the attributes for the specified target group. For more information, see Target Group Attributes in the Application Load Balancers Guide or Target Group Attributes in the Network Load Balancers Guide.

Required Parameters
{
  "TargetGroupArn": "The Amazon Resource Name (ARN) of the target group."
}
"""
DescribeTargetGroupAttributes(args) = elastic_load_balancing_v2("DescribeTargetGroupAttributes", args)

"""
    DescribeListenerCertificates()

Describes the default certificate and the certificate list for the specified HTTPS or TLS listener. If the default certificate is also in the certificate list, it appears twice in the results (once with IsDefault set to true and once with IsDefault set to false). For more information, see SSL Certificates in the Application Load Balancers Guide.

Required Parameters
{
  "ListenerArn": "The Amazon Resource Names (ARN) of the listener."
}

Optional Parameters
{
  "Marker": "The marker for the next set of results. (You received this marker from a previous call.)",
  "PageSize": "The maximum number of results to return with this call."
}
"""
DescribeListenerCertificates(args) = elastic_load_balancing_v2("DescribeListenerCertificates", args)

"""
    DescribeTargetHealth()

Describes the health of the specified targets or all of your targets.

Required Parameters
{
  "TargetGroupArn": "The Amazon Resource Name (ARN) of the target group."
}

Optional Parameters
{
  "Targets": "The targets."
}
"""
DescribeTargetHealth(args) = elastic_load_balancing_v2("DescribeTargetHealth", args)

"""
    ModifyLoadBalancerAttributes()

Modifies the specified attributes of the specified Application Load Balancer or Network Load Balancer. If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.

Required Parameters
{
  "Attributes": "The load balancer attributes.",
  "LoadBalancerArn": "The Amazon Resource Name (ARN) of the load balancer."
}
"""
ModifyLoadBalancerAttributes(args) = elastic_load_balancing_v2("ModifyLoadBalancerAttributes", args)

"""
    DeleteListener()

Deletes the specified listener. Alternatively, your listener is deleted when you delete the load balancer to which it is attached, using DeleteLoadBalancer.

Required Parameters
{
  "ListenerArn": "The Amazon Resource Name (ARN) of the listener."
}
"""
DeleteListener(args) = elastic_load_balancing_v2("DeleteListener", args)

"""
    ModifyListener()

Replaces the specified properties of the specified listener. Any properties that you do not specify remain unchanged. Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the security policy and default certificate properties. If you change the protocol from HTTP to HTTPS, or from TCP to TLS, you must add the security policy and default certificate properties. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action.

Required Parameters
{
  "ListenerArn": "The Amazon Resource Name (ARN) of the listener."
}

Optional Parameters
{
  "SslPolicy": "[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are supported. The following are the possible values:    ELBSecurityPolicy-2016-08     ELBSecurityPolicy-TLS-1-0-2015-04     ELBSecurityPolicy-TLS-1-1-2017-01     ELBSecurityPolicy-TLS-1-2-2017-01     ELBSecurityPolicy-TLS-1-2-Ext-2018-06     ELBSecurityPolicy-FS-2018-06     ELBSecurityPolicy-FS-1-1-2019-08     ELBSecurityPolicy-FS-1-2-2019-08     ELBSecurityPolicy-FS-1-2-Res-2019-08    For more information, see Security Policies in the Application Load Balancers Guide and Security Policies in the Network Load Balancers Guide.",
  "Certificates": "[HTTPS and TLS listeners] The default certificate for the listener. You must provide exactly one certificate. Set CertificateArn to the certificate ARN but do not set IsDefault. To create a certificate list, use AddListenerCertificates.",
  "DefaultActions": "The actions for the default rule. The rule must include one forward action or one or more fixed-response actions. If the action type is forward, you specify one or more target groups. The protocol of the target group must be HTTP or HTTPS for an Application Load Balancer. The protocol of the target group must be TCP, TLS, UDP, or TCP_UDP for a Network Load Balancer. [HTTPS listeners] If the action type is authenticate-oidc, you authenticate users through an identity provider that is OpenID Connect (OIDC) compliant. [HTTPS listeners] If the action type is authenticate-cognito, you authenticate users through the user pools supported by Amazon Cognito. [Application Load Balancer] If the action type is redirect, you redirect specified client requests from one URL to another. [Application Load Balancer] If the action type is fixed-response, you drop specified client requests and return a custom HTTP response.",
  "Protocol": "The protocol for connections from clients to the load balancer. Application Load Balancers support the HTTP and HTTPS protocols. Network Load Balancers support the TCP, TLS, UDP, and TCP_UDP protocols.",
  "Port": "The port for connections from clients to the load balancer."
}
"""
ModifyListener(args) = elastic_load_balancing_v2("ModifyListener", args)

"""
    ModifyTargetGroupAttributes()

Modifies the specified attributes of the specified target group.

Required Parameters
{
  "Attributes": "The attributes.",
  "TargetGroupArn": "The Amazon Resource Name (ARN) of the target group."
}
"""
ModifyTargetGroupAttributes(args) = elastic_load_balancing_v2("ModifyTargetGroupAttributes", args)

"""
    DeregisterTargets()

Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.

Required Parameters
{
  "TargetGroupArn": "The Amazon Resource Name (ARN) of the target group.",
  "Targets": "The targets. If you specified a port override when you registered a target, you must specify both the target ID and the port when you deregister it."
}
"""
DeregisterTargets(args) = elastic_load_balancing_v2("DeregisterTargets", args)

"""
    RemoveTags()

Removes the specified tags from the specified Elastic Load Balancing resource. To list the current tags for your resources, use DescribeTags.

Required Parameters
{
  "ResourceArns": "The Amazon Resource Name (ARN) of the resource.",
  "TagKeys": "The tag keys for the tags to remove."
}
"""
RemoveTags(args) = elastic_load_balancing_v2("RemoveTags", args)

"""
    RegisterTargets()

Registers the specified targets with the specified target group. If the target is an EC2 instance, it must be in the running state when you register it. By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports. With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address. To remove a target from a target group, use DeregisterTargets.

Required Parameters
{
  "TargetGroupArn": "The Amazon Resource Name (ARN) of the target group.",
  "Targets": "The targets. To register a target by instance ID, specify the instance ID. To register a target by IP address, specify the IP address. To register a Lambda function, specify the ARN of the Lambda function."
}
"""
RegisterTargets(args) = elastic_load_balancing_v2("RegisterTargets", args)

"""
    DescribeLoadBalancers()

Describes the specified load balancers or all of your load balancers. To describe the listeners for a load balancer, use DescribeListeners. To describe the attributes for a load balancer, use DescribeLoadBalancerAttributes.

Optional Parameters
{
  "Marker": "The marker for the next set of results. (You received this marker from a previous call.)",
  "Names": "The names of the load balancers.",
  "LoadBalancerArns": "The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load balancers in a single call.",
  "PageSize": "The maximum number of results to return with this call."
}
"""
DescribeLoadBalancers() = elastic_load_balancing_v2("DescribeLoadBalancers")
DescribeLoadBalancers(args) = elastic_load_balancing_v2("DescribeLoadBalancers", args)

"""
    SetSubnets()

Enables the Availability Zones for the specified public subnets for the specified load balancer. The specified subnets replace the previously enabled subnets. When you specify subnets for a Network Load Balancer, you must include all subnets that were enabled previously, with their existing configurations, plus any additional subnets.

Required Parameters
{
  "LoadBalancerArn": "The Amazon Resource Name (ARN) of the load balancer."
}

Optional Parameters
{
  "Subnets": "The IDs of the public subnets. You must specify subnets from at least two Availability Zones. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings.",
  "SubnetMappings": "The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings. [Application Load Balancers] You must specify subnets from at least two Availability Zones. You cannot specify Elastic IP addresses for your subnets. [Network Load Balancers] You can specify subnets from one or more Availability Zones. If you need static IP addresses for your internet-facing load balancer, you can specify one Elastic IP address per subnet. For internal load balancers, you can specify one private IP address per subnet from the IPv4 range of the subnet."
}
"""
SetSubnets(args) = elastic_load_balancing_v2("SetSubnets", args)

"""
    CreateRule()

Creates a rule for the specified listener. The listener must be associated with an Application Load Balancer. Rules are evaluated in priority order, from the lowest value to the highest value. When the conditions for a rule are met, its actions are performed. If the conditions for no rules are met, the actions for the default rule are performed. For more information, see Listener Rules in the Application Load Balancers Guide. To view your current rules, use DescribeRules. To update a rule, use ModifyRule. To set the priorities of your rules, use SetRulePriorities. To delete a rule, use DeleteRule.

Required Parameters
{
  "Actions": "The actions. Each rule must include exactly one of the following types of actions: forward, fixed-response, or redirect, and it must be the last action to be performed. If the action type is forward, you specify one or more target groups. The protocol of the target group must be HTTP or HTTPS for an Application Load Balancer. The protocol of the target group must be TCP, TLS, UDP, or TCP_UDP for a Network Load Balancer. [HTTPS listeners] If the action type is authenticate-oidc, you authenticate users through an identity provider that is OpenID Connect (OIDC) compliant. [HTTPS listeners] If the action type is authenticate-cognito, you authenticate users through the user pools supported by Amazon Cognito. [Application Load Balancer] If the action type is redirect, you redirect specified client requests from one URL to another. [Application Load Balancer] If the action type is fixed-response, you drop specified client requests and return a custom HTTP response.",
  "ListenerArn": "The Amazon Resource Name (ARN) of the listener.",
  "Conditions": "The conditions. Each rule can include zero or one of the following conditions: http-request-method, host-header, path-pattern, and source-ip, and zero or more of the following conditions: http-header and query-string.",
  "Priority": "The rule priority. A listener can't have multiple rules with the same priority."
}
"""
CreateRule(args) = elastic_load_balancing_v2("CreateRule", args)

"""
    CreateListener()

Creates a listener for the specified Application Load Balancer or Network Load Balancer. To update a listener, use ModifyListener. When you are finished with a listener, you can delete it using DeleteListener. If you are finished with both the listener and the load balancer, you can delete them both using DeleteLoadBalancer. This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds. For more information, see Listeners for Your Application Load Balancers in the Application Load Balancers Guide and Listeners for Your Network Load Balancers in the Network Load Balancers Guide.

Required Parameters
{
  "DefaultActions": "The actions for the default rule. The rule must include one forward action or one or more fixed-response actions. If the action type is forward, you specify one or more target groups. The protocol of the target group must be HTTP or HTTPS for an Application Load Balancer. The protocol of the target group must be TCP, TLS, UDP, or TCP_UDP for a Network Load Balancer. [HTTPS listeners] If the action type is authenticate-oidc, you authenticate users through an identity provider that is OpenID Connect (OIDC) compliant. [HTTPS listeners] If the action type is authenticate-cognito, you authenticate users through the user pools supported by Amazon Cognito. [Application Load Balancer] If the action type is redirect, you redirect specified client requests from one URL to another. [Application Load Balancer] If the action type is fixed-response, you drop specified client requests and return a custom HTTP response.",
  "Protocol": "The protocol for connections from clients to the load balancer. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, and TCP_UDP.",
  "LoadBalancerArn": "The Amazon Resource Name (ARN) of the load balancer.",
  "Port": "The port on which the load balancer is listening."
}

Optional Parameters
{
  "SslPolicy": "[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are supported. The following are the possible values:    ELBSecurityPolicy-2016-08     ELBSecurityPolicy-TLS-1-0-2015-04     ELBSecurityPolicy-TLS-1-1-2017-01     ELBSecurityPolicy-TLS-1-2-2017-01     ELBSecurityPolicy-TLS-1-2-Ext-2018-06     ELBSecurityPolicy-FS-2018-06     ELBSecurityPolicy-FS-1-1-2019-08     ELBSecurityPolicy-FS-1-2-2019-08     ELBSecurityPolicy-FS-1-2-Res-2019-08    For more information, see Security Policies in the Application Load Balancers Guide and Security Policies in the Network Load Balancers Guide.",
  "Certificates": "[HTTPS and TLS listeners] The default certificate for the listener. You must provide exactly one certificate. Set CertificateArn to the certificate ARN but do not set IsDefault. To create a certificate list for the listener, use AddListenerCertificates."
}
"""
CreateListener(args) = elastic_load_balancing_v2("CreateListener", args)

"""
    DescribeTags()

Describes the tags for the specified resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, and target groups.

Required Parameters
{
  "ResourceArns": "The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a single call."
}
"""
DescribeTags(args) = elastic_load_balancing_v2("DescribeTags", args)

"""
    CreateTargetGroup()

Creates a target group. To register targets with the target group, use RegisterTargets. To update the health check settings for the target group, use ModifyTargetGroup. To monitor the health of targets in the target group, use DescribeTargetHealth. To route traffic to the targets in a target group, specify the target group in an action using CreateListener or CreateRule. To delete a target group, use DeleteTargetGroup. This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds. For more information, see Target Groups for Your Application Load Balancers in the Application Load Balancers Guide or Target Groups for Your Network Load Balancers in the Network Load Balancers Guide.

Required Parameters
{
  "Name": "The name of the target group. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen."
}

Optional Parameters
{
  "HealthCheckProtocol": "The protocol the load balancer uses when performing health checks on targets. For Application Load Balancers, the default is HTTP. For Network Load Balancers, the default is TCP. The TCP protocol is supported for health checks only if the protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The TLS, UDP, and TCP_UDP protocols are not supported for health checks.",
  "UnhealthyThresholdCount": "The number of consecutive health check failures required before considering a target unhealthy. For target groups with a protocol of HTTP or HTTPS, the default is 2. For target groups with a protocol of TCP or TLS, this value must be the same as the healthy threshold count. If the target type is lambda, the default is 2.",
  "Protocol": "The protocol to use for routing traffic to the targets. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, or TCP_UDP. A TCP_UDP listener must be associated with a TCP_UDP target group. If the target is a Lambda function, this parameter does not apply.",
  "TargetType": "The type of target that you must specify when registering targets with this target group. You can't specify targets for a target group using more than one target type.    instance - Targets are specified by instance ID. This is the default value. If the target group protocol is UDP or TCP_UDP, the target type must be instance.    ip - Targets are specified by IP address. You can specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.    lambda - The target groups contains a single Lambda function.  ",
  "HealthCheckPath": "[HTTP/HTTPS health checks] The ping path that is the destination on the targets for health checks. The default is /.",
  "HealthCheckTimeoutSeconds": "The amount of time, in seconds, during which no response from a target means a failed health check. For target groups with a protocol of HTTP or HTTPS, the default is 5 seconds. For target groups with a protocol of TCP or TLS, this value must be 6 seconds for HTTP health checks and 10 seconds for TCP and HTTPS health checks. If the target type is lambda, the default is 30 seconds.",
  "HealthyThresholdCount": "The number of consecutive health checks successes required before considering an unhealthy target healthy. For target groups with a protocol of HTTP or HTTPS, the default is 5. For target groups with a protocol of TCP or TLS, the default is 3. If the target type is lambda, the default is 5.",
  "VpcId": "The identifier of the virtual private cloud (VPC). If the target is a Lambda function, this parameter does not apply. Otherwise, this parameter is required.",
  "Matcher": "[HTTP/HTTPS health checks] The HTTP codes to use when checking for a successful response from a target.",
  "HealthCheckPort": "The port the load balancer uses when performing health checks on targets. The default is traffic-port, which is the port on which each target receives traffic from the load balancer.",
  "Port": "The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target. If the target is a Lambda function, this parameter does not apply.",
  "HealthCheckIntervalSeconds": "The approximate amount of time, in seconds, between health checks of an individual target. For HTTP and HTTPS health checks, the range is 5–300 seconds. For TCP health checks, the supported values are 10 and 30 seconds. If the target type is instance or ip, the default is 30 seconds. If the target type is lambda, the default is 35 seconds.",
  "HealthCheckEnabled": "Indicates whether health checks are enabled. If the target type is lambda, health checks are disabled by default but can be enabled. If the target type is instance or ip, health checks are always enabled and cannot be disabled."
}
"""
CreateTargetGroup(args) = elastic_load_balancing_v2("CreateTargetGroup", args)

"""
    SetIpAddressType()

Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer.

Required Parameters
{
  "IpAddressType": "The IP address type. The possible values are ipv4 (for IPv4 addresses) and dualstack (for IPv4 and IPv6 addresses). Internal load balancers must use ipv4. Network Load Balancers must use ipv4.",
  "LoadBalancerArn": "The Amazon Resource Name (ARN) of the load balancer."
}
"""
SetIpAddressType(args) = elastic_load_balancing_v2("SetIpAddressType", args)

"""
    CreateLoadBalancer()

Creates an Application Load Balancer or a Network Load Balancer. When you create a load balancer, you can specify security groups, public subnets, IP address type, and tags. Otherwise, you could do so later using SetSecurityGroups, SetSubnets, SetIpAddressType, and AddTags. To create listeners for your load balancer, use CreateListener. To describe your current load balancers, see DescribeLoadBalancers. When you are finished with a load balancer, you can delete it using DeleteLoadBalancer. For limit information, see Limits for Your Application Load Balancer in the Application Load Balancers Guide and Limits for Your Network Load Balancer in the Network Load Balancers Guide. This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple load balancers with the same settings, each call succeeds. For more information, see Application Load Balancers in the Application Load Balancers Guide and Network Load Balancers in the Network Load Balancers Guide.

Required Parameters
{
  "Name": "The name of the load balancer. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must not begin with \"internal-\"."
}

Optional Parameters
{
  "IpAddressType": "[Application Load Balancers] The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 (for IPv4 addresses) and dualstack (for IPv4 and IPv6 addresses). Internal load balancers must use ipv4.",
  "Scheme": "The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the internet. The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can route requests only from clients with access to the VPC for the load balancer. The default is an Internet-facing load balancer.",
  "Tags": "One or more tags to assign to the load balancer.",
  "Subnets": "The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings. [Application Load Balancers] You must specify subnets from at least two Availability Zones. [Network Load Balancers] You can specify subnets from one or more Availability Zones.",
  "SecurityGroups": "[Application Load Balancers] The IDs of the security groups for the load balancer.",
  "Type": "The type of load balancer. The default is application.",
  "SubnetMappings": "The IDs of the public subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings. [Application Load Balancers] You must specify subnets from at least two Availability Zones. You cannot specify Elastic IP addresses for your subnets. [Network Load Balancers] You can specify subnets from one or more Availability Zones. You can specify one Elastic IP address per subnet if you need static IP addresses for your internet-facing load balancer. For internal load balancers, you can specify one private IP address per subnet from the IPv4 range of the subnet."
}
"""
CreateLoadBalancer(args) = elastic_load_balancing_v2("CreateLoadBalancer", args)

"""
    ModifyTargetGroup()

Modifies the health checks used when evaluating the health state of the targets in the specified target group. To monitor the health of the targets, use DescribeTargetHealth.

Required Parameters
{
  "TargetGroupArn": "The Amazon Resource Name (ARN) of the target group."
}

Optional Parameters
{
  "HealthCheckPort": "The port the load balancer uses when performing health checks on targets.",
  "HealthCheckPath": "[HTTP/HTTPS health checks] The ping path that is the destination for the health check request.",
  "HealthCheckProtocol": "The protocol the load balancer uses when performing health checks on targets. The TCP protocol is supported for health checks only if the protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The TLS, UDP, and TCP_UDP protocols are not supported for health checks. With Network Load Balancers, you can't modify this setting.",
  "HealthCheckIntervalSeconds": "The approximate amount of time, in seconds, between health checks of an individual target. For Application Load Balancers, the range is 5 to 300 seconds. For Network Load Balancers, the supported values are 10 or 30 seconds. With Network Load Balancers, you can't modify this setting.",
  "HealthCheckTimeoutSeconds": "[HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means a failed health check. With Network Load Balancers, you can't modify this setting.",
  "HealthyThresholdCount": "The number of consecutive health checks successes required before considering an unhealthy target healthy.",
  "UnhealthyThresholdCount": "The number of consecutive health check failures required before considering the target unhealthy. For Network Load Balancers, this value must be the same as the healthy threshold count.",
  "HealthCheckEnabled": "Indicates whether health checks are enabled.",
  "Matcher": "[HTTP/HTTPS health checks] The HTTP codes to use when checking for a successful response from a target. With Network Load Balancers, you can't modify this setting."
}
"""
ModifyTargetGroup(args) = elastic_load_balancing_v2("ModifyTargetGroup", args)

"""
    DeleteRule()

Deletes the specified rule.

Required Parameters
{
  "RuleArn": "The Amazon Resource Name (ARN) of the rule."
}
"""
DeleteRule(args) = elastic_load_balancing_v2("DeleteRule", args)

"""
    DescribeTargetGroups()

Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups. To describe the targets for a target group, use DescribeTargetHealth. To describe the attributes of a target group, use DescribeTargetGroupAttributes.

Optional Parameters
{
  "Marker": "The marker for the next set of results. (You received this marker from a previous call.)",
  "Names": "The names of the target groups.",
  "TargetGroupArns": "The Amazon Resource Names (ARN) of the target groups.",
  "PageSize": "The maximum number of results to return with this call.",
  "LoadBalancerArn": "The Amazon Resource Name (ARN) of the load balancer."
}
"""
DescribeTargetGroups() = elastic_load_balancing_v2("DescribeTargetGroups")
DescribeTargetGroups(args) = elastic_load_balancing_v2("DescribeTargetGroups", args)

"""
    AddListenerCertificates()

Adds the specified SSL server certificate to the certificate list for the specified HTTPS or TLS listener. If the certificate in already in the certificate list, the call is successful but the certificate is not added again. To get the certificate list for a listener, use DescribeListenerCertificates. To remove certificates from the certificate list for a listener, use RemoveListenerCertificates. To replace the default certificate for a listener, use ModifyListener. For more information, see SSL Certificates in the Application Load Balancers Guide.

Required Parameters
{
  "ListenerArn": "The Amazon Resource Name (ARN) of the listener.",
  "Certificates": "The certificate to add. You can specify one certificate per call. Set CertificateArn to the certificate ARN but do not set IsDefault."
}
"""
AddListenerCertificates(args) = elastic_load_balancing_v2("AddListenerCertificates", args)

"""
    DescribeRules()

Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.

Optional Parameters
{
  "Marker": "The marker for the next set of results. (You received this marker from a previous call.)",
  "ListenerArn": "The Amazon Resource Name (ARN) of the listener.",
  "RuleArns": "The Amazon Resource Names (ARN) of the rules.",
  "PageSize": "The maximum number of results to return with this call."
}
"""
DescribeRules() = elastic_load_balancing_v2("DescribeRules")
DescribeRules(args) = elastic_load_balancing_v2("DescribeRules", args)

"""
    ModifyRule()

Replaces the specified properties of the specified rule. Any properties that you do not specify are unchanged. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action. To modify the actions for the default rule, use ModifyListener.

Required Parameters
{
  "RuleArn": "The Amazon Resource Name (ARN) of the rule."
}

Optional Parameters
{
  "Actions": "The actions. Each rule must include exactly one of the following types of actions: forward, fixed-response, or redirect, and it must be the last action to be performed. If the action type is forward, you specify one or more target groups. The protocol of the target group must be HTTP or HTTPS for an Application Load Balancer. The protocol of the target group must be TCP, TLS, UDP, or TCP_UDP for a Network Load Balancer. [HTTPS listeners] If the action type is authenticate-oidc, you authenticate users through an identity provider that is OpenID Connect (OIDC) compliant. [HTTPS listeners] If the action type is authenticate-cognito, you authenticate users through the user pools supported by Amazon Cognito. [Application Load Balancer] If the action type is redirect, you redirect specified client requests from one URL to another. [Application Load Balancer] If the action type is fixed-response, you drop specified client requests and return a custom HTTP response.",
  "Conditions": "The conditions. Each rule can include zero or one of the following conditions: http-request-method, host-header, path-pattern, and source-ip, and zero or more of the following conditions: http-header and query-string."
}
"""
ModifyRule(args) = elastic_load_balancing_v2("ModifyRule", args)

"""
    AddTags()

Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, and your target groups. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, AddTags updates its value. To list the current tags for your resources, use DescribeTags. To remove tags from your resources, use RemoveTags.

Required Parameters
{
  "ResourceArns": "The Amazon Resource Name (ARN) of the resource.",
  "Tags": "The tags."
}
"""
AddTags(args) = elastic_load_balancing_v2("AddTags", args)

"""
    DeleteLoadBalancer()

Deletes the specified Application Load Balancer or Network Load Balancer and its attached listeners. You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds. Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.

Required Parameters
{
  "LoadBalancerArn": "The Amazon Resource Name (ARN) of the load balancer."
}
"""
DeleteLoadBalancer(args) = elastic_load_balancing_v2("DeleteLoadBalancer", args)

"""
    SetRulePriorities()

Sets the priorities of the specified rules. You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.

Required Parameters
{
  "RulePriorities": "The rule priorities."
}
"""
SetRulePriorities(args) = elastic_load_balancing_v2("SetRulePriorities", args)

"""
    DescribeAccountLimits()

Describes the current Elastic Load Balancing resource limits for your AWS account. For more information, see Limits for Your Application Load Balancers in the Application Load Balancer Guide or Limits for Your Network Load Balancers in the Network Load Balancers Guide.

Optional Parameters
{
  "Marker": "The marker for the next set of results. (You received this marker from a previous call.)",
  "PageSize": "The maximum number of results to return with this call."
}
"""
DescribeAccountLimits() = elastic_load_balancing_v2("DescribeAccountLimits")
DescribeAccountLimits(args) = elastic_load_balancing_v2("DescribeAccountLimits", args)

"""
    RemoveListenerCertificates()

Removes the specified certificate from the certificate list for the specified HTTPS or TLS listener. You can't remove the default certificate for a listener. To replace the default certificate, call ModifyListener. To list the certificates for your listener, use DescribeListenerCertificates.

Required Parameters
{
  "ListenerArn": "The Amazon Resource Name (ARN) of the listener.",
  "Certificates": "The certificate to remove. You can specify one certificate per call. Set CertificateArn to the certificate ARN but do not set IsDefault."
}
"""
RemoveListenerCertificates(args) = elastic_load_balancing_v2("RemoveListenerCertificates", args)

"""
    SetSecurityGroups()

Associates the specified security groups with the specified Application Load Balancer. The specified security groups override the previously associated security groups. You can't specify a security group for a Network Load Balancer.

Required Parameters
{
  "SecurityGroups": "The IDs of the security groups.",
  "LoadBalancerArn": "The Amazon Resource Name (ARN) of the load balancer."
}
"""
SetSecurityGroups(args) = elastic_load_balancing_v2("SetSecurityGroups", args)

"""
    DeleteTargetGroup()

Deletes the specified target group. You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks.

Required Parameters
{
  "TargetGroupArn": "The Amazon Resource Name (ARN) of the target group."
}
"""
DeleteTargetGroup(args) = elastic_load_balancing_v2("DeleteTargetGroup", args)