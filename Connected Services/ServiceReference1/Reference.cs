﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Paint_Nest_WebApp.ServiceReference1 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.WebService1Soap")]
    public interface WebService1Soap {
        
        // CODEGEN: Generating message contract since element name HelloWorldResult from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/HelloWorld", ReplyAction="*")]
        Paint_Nest_WebApp.ServiceReference1.HelloWorldResponse HelloWorld(Paint_Nest_WebApp.ServiceReference1.HelloWorldRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/HelloWorld", ReplyAction="*")]
        System.Threading.Tasks.Task<Paint_Nest_WebApp.ServiceReference1.HelloWorldResponse> HelloWorldAsync(Paint_Nest_WebApp.ServiceReference1.HelloWorldRequest request);
        
        // CODEGEN: Generating message contract since element name a from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/SendEmail", ReplyAction="*")]
        Paint_Nest_WebApp.ServiceReference1.SendEmailResponse SendEmail(Paint_Nest_WebApp.ServiceReference1.SendEmailRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/SendEmail", ReplyAction="*")]
        System.Threading.Tasks.Task<Paint_Nest_WebApp.ServiceReference1.SendEmailResponse> SendEmailAsync(Paint_Nest_WebApp.ServiceReference1.SendEmailRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class HelloWorldRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="HelloWorld", Namespace="http://tempuri.org/", Order=0)]
        public Paint_Nest_WebApp.ServiceReference1.HelloWorldRequestBody Body;
        
        public HelloWorldRequest() {
        }
        
        public HelloWorldRequest(Paint_Nest_WebApp.ServiceReference1.HelloWorldRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class HelloWorldRequestBody {
        
        public HelloWorldRequestBody() {
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class HelloWorldResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="HelloWorldResponse", Namespace="http://tempuri.org/", Order=0)]
        public Paint_Nest_WebApp.ServiceReference1.HelloWorldResponseBody Body;
        
        public HelloWorldResponse() {
        }
        
        public HelloWorldResponse(Paint_Nest_WebApp.ServiceReference1.HelloWorldResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class HelloWorldResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string HelloWorldResult;
        
        public HelloWorldResponseBody() {
        }
        
        public HelloWorldResponseBody(string HelloWorldResult) {
            this.HelloWorldResult = HelloWorldResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class SendEmailRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="SendEmail", Namespace="http://tempuri.org/", Order=0)]
        public Paint_Nest_WebApp.ServiceReference1.SendEmailRequestBody Body;
        
        public SendEmailRequest() {
        }
        
        public SendEmailRequest(Paint_Nest_WebApp.ServiceReference1.SendEmailRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class SendEmailRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string a;
        
        public SendEmailRequestBody() {
        }
        
        public SendEmailRequestBody(string a) {
            this.a = a;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class SendEmailResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="SendEmailResponse", Namespace="http://tempuri.org/", Order=0)]
        public Paint_Nest_WebApp.ServiceReference1.SendEmailResponseBody Body;
        
        public SendEmailResponse() {
        }
        
        public SendEmailResponse(Paint_Nest_WebApp.ServiceReference1.SendEmailResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class SendEmailResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string SendEmailResult;
        
        public SendEmailResponseBody() {
        }
        
        public SendEmailResponseBody(string SendEmailResult) {
            this.SendEmailResult = SendEmailResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface WebService1SoapChannel : Paint_Nest_WebApp.ServiceReference1.WebService1Soap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class WebService1SoapClient : System.ServiceModel.ClientBase<Paint_Nest_WebApp.ServiceReference1.WebService1Soap>, Paint_Nest_WebApp.ServiceReference1.WebService1Soap {
        
        public WebService1SoapClient() {
        }
        
        public WebService1SoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public WebService1SoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebService1SoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebService1SoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Paint_Nest_WebApp.ServiceReference1.HelloWorldResponse Paint_Nest_WebApp.ServiceReference1.WebService1Soap.HelloWorld(Paint_Nest_WebApp.ServiceReference1.HelloWorldRequest request) {
            return base.Channel.HelloWorld(request);
        }
        
        public string HelloWorld() {
            Paint_Nest_WebApp.ServiceReference1.HelloWorldRequest inValue = new Paint_Nest_WebApp.ServiceReference1.HelloWorldRequest();
            inValue.Body = new Paint_Nest_WebApp.ServiceReference1.HelloWorldRequestBody();
            Paint_Nest_WebApp.ServiceReference1.HelloWorldResponse retVal = ((Paint_Nest_WebApp.ServiceReference1.WebService1Soap)(this)).HelloWorld(inValue);
            return retVal.Body.HelloWorldResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<Paint_Nest_WebApp.ServiceReference1.HelloWorldResponse> Paint_Nest_WebApp.ServiceReference1.WebService1Soap.HelloWorldAsync(Paint_Nest_WebApp.ServiceReference1.HelloWorldRequest request) {
            return base.Channel.HelloWorldAsync(request);
        }
        
        public System.Threading.Tasks.Task<Paint_Nest_WebApp.ServiceReference1.HelloWorldResponse> HelloWorldAsync() {
            Paint_Nest_WebApp.ServiceReference1.HelloWorldRequest inValue = new Paint_Nest_WebApp.ServiceReference1.HelloWorldRequest();
            inValue.Body = new Paint_Nest_WebApp.ServiceReference1.HelloWorldRequestBody();
            return ((Paint_Nest_WebApp.ServiceReference1.WebService1Soap)(this)).HelloWorldAsync(inValue);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Paint_Nest_WebApp.ServiceReference1.SendEmailResponse Paint_Nest_WebApp.ServiceReference1.WebService1Soap.SendEmail(Paint_Nest_WebApp.ServiceReference1.SendEmailRequest request) {
            return base.Channel.SendEmail(request);
        }
        
        public string SendEmail(string a) {
            Paint_Nest_WebApp.ServiceReference1.SendEmailRequest inValue = new Paint_Nest_WebApp.ServiceReference1.SendEmailRequest();
            inValue.Body = new Paint_Nest_WebApp.ServiceReference1.SendEmailRequestBody();
            inValue.Body.a = a;
            Paint_Nest_WebApp.ServiceReference1.SendEmailResponse retVal = ((Paint_Nest_WebApp.ServiceReference1.WebService1Soap)(this)).SendEmail(inValue);
            return retVal.Body.SendEmailResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<Paint_Nest_WebApp.ServiceReference1.SendEmailResponse> Paint_Nest_WebApp.ServiceReference1.WebService1Soap.SendEmailAsync(Paint_Nest_WebApp.ServiceReference1.SendEmailRequest request) {
            return base.Channel.SendEmailAsync(request);
        }
        
        public System.Threading.Tasks.Task<Paint_Nest_WebApp.ServiceReference1.SendEmailResponse> SendEmailAsync(string a) {
            Paint_Nest_WebApp.ServiceReference1.SendEmailRequest inValue = new Paint_Nest_WebApp.ServiceReference1.SendEmailRequest();
            inValue.Body = new Paint_Nest_WebApp.ServiceReference1.SendEmailRequestBody();
            inValue.Body.a = a;
            return ((Paint_Nest_WebApp.ServiceReference1.WebService1Soap)(this)).SendEmailAsync(inValue);
        }
    }
}
