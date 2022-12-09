[Ivy]
[>Created: Fri Dec 09 11:58:53 ICT 2022]
184F49D3699BD1B3 3.18 #module
>Proto >Proto Collection #zClass
Ln0 Login Big #zClass
Ln0 B #cInfo
Ln0 #process
Ln0 @TextInP .resExport .resExport #zField
Ln0 @TextInP .type .type #zField
Ln0 @TextInP .processKind .processKind #zField
Ln0 @AnnotationInP-0n ai ai #zField
Ln0 @MessageFlowInP-0n messageIn messageIn #zField
Ln0 @MessageFlowOutP-0n messageOut messageOut #zField
Ln0 @TextInP .xml .xml #zField
Ln0 @TextInP .responsibility .responsibility #zField
Ln0 @StartRequest f0 '' #zField
Ln0 @EndTask f1 '' #zField
Ln0 @Alternative f4 '' #zField
Ln0 @PushWFArc f2 '' #zField
Ln0 @EndTask f6 '' #zField
Ln0 @PushWFArc f7 '' #zField
Ln0 @RichDialog f3 '' #zField
Ln0 @PushWFArc f5 '' #zField
Ln0 @GridStep f9 '' #zField
Ln0 @PushWFArc f10 '' #zField
Ln0 @PushWFArc f8 '' #zField
>Proto Ln0 Ln0 Login #zField
Ln0 f0 outLink start.ivp #txt
Ln0 f0 type pizza_store.User #txt
Ln0 f0 inParamDecl '<> param;' #txt
Ln0 f0 actionDecl 'pizza_store.User out;
' #txt
Ln0 f0 guid 184F49D36A3DB949 #txt
Ln0 f0 requestEnabled true #txt
Ln0 f0 triggerEnabled false #txt
Ln0 f0 callSignature start() #txt
Ln0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ln0 f0 @C|.responsibility Everybody #txt
Ln0 f0 -15 49 30 30 -21 17 #rect
Ln0 f0 @|StartRequestIcon #fIcon
Ln0 f1 type pizza_store.User #txt
Ln0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login Sucess</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f1 609 49 30 30 -38 17 #rect
Ln0 f1 @|EndIcon #fIcon
Ln0 f4 type pizza_store.User #txt
Ln0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Vaild Login?</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f4 400 48 32 32 -34 18 #rect
Ln0 f4 @|AlternativeIcon #fIcon
Ln0 f2 expr in #txt
Ln0 f2 outCond '"Dinh"==in.name && "1234" == in.password' #txt
Ln0 f2 432 64 609 64 #arcP
Ln0 f6 type pizza_store.User #txt
Ln0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login Failed</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f6 609 145 30 30 -34 17 #rect
Ln0 f6 @|EndIcon #fIcon
Ln0 f7 expr in #txt
Ln0 f7 432 64 609 160 #arcP
Ln0 f7 1 512 64 #addKink
Ln0 f7 2 512 160 #addKink
Ln0 f7 1 0.5052083333333334 0 0 #arcLabel
Ln0 f3 targetWindow NEW:card: #txt
Ln0 f3 targetDisplay TOP #txt
Ln0 f3 richDialogId pizza_store.LoginPage #txt
Ln0 f3 startMethod start() #txt
Ln0 f3 type pizza_store.User #txt
Ln0 f3 requestActionDecl '<> param;' #txt
Ln0 f3 responseActionDecl 'pizza_store.User out;
' #txt
Ln0 f3 responseMappingAction 'out=in;
out.password=result.Password;
out.username=result.Username;
' #txt
Ln0 f3 windowConfiguration '* ' #txt
Ln0 f3 isAsynch false #txt
Ln0 f3 isInnerRd false #txt
Ln0 f3 userContext '* ' #txt
Ln0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login Page</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f3 96 42 112 44 -31 -8 #rect
Ln0 f3 @|RichDialogIcon #fIcon
Ln0 f5 expr out #txt
Ln0 f5 15 64 96 64 #arcP
Ln0 f9 actionDecl 'pizza_store.User out;
' #txt
Ln0 f9 actionTable 'out=in;
' #txt
Ln0 f9 actionCode 'ivy.log.info(in.username);
ivy.log.info(in.password);' #txt
Ln0 f9 type pizza_store.User #txt
Ln0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check valid login</name>
        <nameStyle>17
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f9 256 42 112 44 -46 -8 #rect
Ln0 f9 @|StepIcon #fIcon
Ln0 f10 expr out #txt
Ln0 f10 208 64 256 64 #arcP
Ln0 f10 0 0.6173640976594557 0 0 #arcLabel
Ln0 f8 expr out #txt
Ln0 f8 368 64 400 64 #arcP
>Proto Ln0 .type pizza_store.User #txt
>Proto Ln0 .processKind NORMAL #txt
>Proto Ln0 0 0 32 24 18 0 #rect
>Proto Ln0 @|BIcon #fIcon
Ln0 f4 out f2 tail #connect
Ln0 f2 head f1 mainIn #connect
Ln0 f4 out f7 tail #connect
Ln0 f7 head f6 mainIn #connect
Ln0 f0 mainOut f5 tail #connect
Ln0 f5 head f3 mainIn #connect
Ln0 f3 mainOut f10 tail #connect
Ln0 f10 head f9 mainIn #connect
Ln0 f9 mainOut f8 tail #connect
Ln0 f8 head f4 in #connect
