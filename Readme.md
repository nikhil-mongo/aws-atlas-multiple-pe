##NOTES:

**Scenario-1-**

- PersonalA and PersonalB Account
- AWS and Atlas Region - London
- AWS VPC CIDR - 10.0.0.0/16(PersonalA and PersonalB) and Atlas VPC CIDR - 192.168.240.0/21
- AWS Subnets deployed in same AZ and same subnet CIDR in both the AWS accounts.(10.0.1.0/24, 10.0.2.0/24)
- Create one Atlas MongoDB Private Endpoint Service in London Region, and then the respection VPC_Endpoint in the PersonalA and PersonalB Accounts, which then connects to the Atlas MongoDB Private Endpoint Service in London Region

```js
AWS	eu-west-2	com.amazonaws.vpce.eu-west-2.vpce-svc-003e8fa0f550cebd4	Available vpce-0c3cf361495e7a4c7	 Available
AWS	eu-west-2	com.amazonaws.vpce.eu-west-2.vpce-svc-003e8fa0f550cebd4	Available vpce-01f7ff45e0c5d0dd8	 Available

```

**Scenario-2-**

- Personal Account
- AWS and Atlas Region - London
- AWS VPC CIDR - 10.0.0.0/16, 172.31.0.0/16 and Atlas VPC CIDR - 192.168.240.0/21
- AWS Subnets deployed in same AZ in both the AWS VPC.(10.0.1.0/24, 10.0.2.0/24 and 172.31.1.0/24, 172.31.2.0/24)
- Create one Atlas MongoDB Private Endpoint Service in London Region, and then the respection VPC_Endpoint in the Personal Account for 2 VPC, which then connects to the Atlas MongoDB Private Endpoint Service in London Region

```js
AWS	eu-west-2	com.amazonaws.vpce.eu-west-2.vpce-svc-0b5f6a90e59aa17d9	Available vpce-0a4aa20a9b6ee210b	 Available
AWS	eu-west-2	com.amazonaws.vpce.eu-west-2.vpce-svc-0b5f6a90e59aa17d9	Available vpce-0e1d46e9c0aebea0b	 Available

```

**Scenario-3-**

- Personal Account
- AWS and Atlas Region - London
- AWS VPC CIDR - 10.0.0.0/16 and Atlas VPC CIDR - 192.168.240.0/21
- AWS Subnets deployed in 2 AZ in the AWS VPC.(10.0.1.0/24, 10.0.2.0/24)
- Create one Atlas MongoDB Private Endpoint Service in London Region, and then the 2 VPC_Endpoint in the Personal Account for this VPC, which then connects to the Atlas MongoDB Private Endpoint Service in London Region

```js
AWS	eu-west-2	com.amazonaws.vpce.eu-west-2.vpce-svc-00b0b253b5e35ad1c	Available vpce-0f742d87ab30f7098	 Available
AWS	eu-west-2	com.amazonaws.vpce.eu-west-2.vpce-svc-00b0b253b5e35ad1c	Available vpce-0ac5b67949fd38d9f	 Available

```