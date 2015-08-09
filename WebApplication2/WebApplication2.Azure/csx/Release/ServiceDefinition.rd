<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="WebApplication2.Azure" generation="1" functional="0" release="0" Id="75e38d31-a6dd-4e94-82f7-d75ff8ac39f8" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="WebApplication2.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WebApplication2:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/LB:WebApplication2:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WebApplication2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapWebApplication2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebApplication2Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapWebApplication2Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WebApplication2:Endpoint1">
          <toPorts>
            <inPortMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWebApplication2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWebApplication2Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WebApplication2" generation="1" functional="0" release="0" software="H:\Projects\CSharp\WebApplication2\WebApplication2.Azure\csx\Release\roles\WebApplication2" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebApplication2&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebApplication2&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2Instances" />
            <sCSPolicyUpdateDomainMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WebApplication2UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WebApplication2FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WebApplication2Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="ee033037-1d1e-478a-be37-e40ce32c0143" ref="Microsoft.RedDog.Contract\ServiceContract\WebApplication2.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="0f466032-9343-4c23-b397-c91ace51c496" ref="Microsoft.RedDog.Contract\Interface\WebApplication2:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>