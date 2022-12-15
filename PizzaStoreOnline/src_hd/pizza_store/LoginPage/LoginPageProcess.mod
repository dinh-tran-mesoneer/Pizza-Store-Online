[Ivy]
[>Created: Thu Dec 15 17:26:00 ICT 2022]
184F4B193B4510F5 3.18 #module
>Proto >Proto Collection #zClass
Ls0 LoginPageProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogProcessEnd f1 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @RichDialogProcessStart f3 '' #zField
Ls0 @Alternative f6 '' #zField
Ls0 @PushWFArc f7 '' #zField
Ls0 @RichDialogProcessEnd f8 '' #zField
Ls0 @PushWFArc f9 '' #zField
Ls0 @RichDialogEnd f4 '' #zField
Ls0 @PushWFArc f5 '' #zField
>Proto Ls0 Ls0 LoginPageProcess #zField
Ls0 f0 guid 184F4B193C211AD3 #txt
Ls0 f0 type pizza_store.LoginPage.LoginPageData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 inActionCode 'out.isValid = true;' #txt
Ls0 f0 outParameterDecl '<java.lang.String Password,java.lang.String Username> result;
' #txt
Ls0 f0 outParameterMapAction 'result.Password=in.Password;
result.Username=in.Username;
' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -16 15 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type pizza_store.LoginPage.LoginPageData #txt
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 109 64 211 64 #arcP
Ls0 f3 guid 184F4B193C868746 #txt
Ls0 f3 type pizza_store.LoginPage.LoginPageData #txt
Ls0 f3 actionDecl 'pizza_store.LoginPage.LoginPageData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 actionCode 'out.isValid = ivy.session.loginSessionUser(in.username, in.password);

if (out.isValid) {
	ivy.log.info("Login Susscess with username: " + in.Username);
} else {
	ivy.log.info("Login Failed with username: " + in.Username + " and password: " + in.Password);
}
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 147 26 26 -13 15 #rect
Ls0 f3 @|RichDialogProcessStartIcon #fIcon
Ls0 f6 type pizza_store.LoginPage.LoginPageData #txt
Ls0 f6 176 144 32 32 0 16 #rect
Ls0 f6 @|AlternativeIcon #fIcon
Ls0 f7 expr out #txt
Ls0 f7 109 160 176 160 #arcP
Ls0 f8 type pizza_store.LoginPage.LoginPageData #txt
Ls0 f8 371 211 26 26 0 12 #rect
Ls0 f8 @|RichDialogProcessEndIcon #fIcon
Ls0 f9 expr in #txt
Ls0 f9 outCond 'in.isValid == false' #txt
Ls0 f9 192 176 371 224 #arcP
Ls0 f9 1 192 224 #addKink
Ls0 f9 1 0.07022634943153867 0 0 #arcLabel
Ls0 f4 type pizza_store.LoginPage.LoginPageData #txt
Ls0 f4 guid 1851551BAD9737E0 #txt
Ls0 f4 371 147 26 26 0 12 #rect
Ls0 f4 @|RichDialogEndIcon #fIcon
Ls0 f5 expr in #txt
Ls0 f5 208 160 371 160 #arcP
>Proto Ls0 .type pizza_store.LoginPage.LoginPageData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f3 mainOut f7 tail #connect
Ls0 f7 head f6 in #connect
Ls0 f6 out f9 tail #connect
Ls0 f9 head f8 mainIn #connect
Ls0 f6 out f5 tail #connect
Ls0 f5 head f4 mainIn #connect
