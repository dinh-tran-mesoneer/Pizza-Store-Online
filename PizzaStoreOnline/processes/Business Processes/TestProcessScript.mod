[Ivy]
[>Created: Fri Dec 09 10:36:25 ICT 2022]
184F4F038AF8AD35 3.18 #module
>Proto >Proto Collection #zClass
Tt0 TestProcessScript Big #zClass
Tt0 B #cInfo
Tt0 #process
Tt0 @TextInP .resExport .resExport #zField
Tt0 @TextInP .type .type #zField
Tt0 @TextInP .processKind .processKind #zField
Tt0 @AnnotationInP-0n ai ai #zField
Tt0 @MessageFlowInP-0n messageIn messageIn #zField
Tt0 @MessageFlowOutP-0n messageOut messageOut #zField
Tt0 @TextInP .xml .xml #zField
Tt0 @TextInP .responsibility .responsibility #zField
Tt0 @StartRequest f0 '' #zField
Tt0 @EndTask f1 '' #zField
Tt0 @GridStep f2 '' #zField
Tt0 @PushWFArc f4 '' #zField
Tt0 @RichDialog f3 '' #zField
Tt0 @PushWFArc f5 '' #zField
Tt0 @PushWFArc f6 '' #zField
>Proto Tt0 Tt0 TestProcessScript #zField
Tt0 f0 outLink start.ivp #txt
Tt0 f0 type pizza_store.Data #txt
Tt0 f0 inParamDecl '<> param;' #txt
Tt0 f0 actionDecl 'pizza_store.Data out;
' #txt
Tt0 f0 guid 184F4F038B14ECBF #txt
Tt0 f0 requestEnabled true #txt
Tt0 f0 triggerEnabled false #txt
Tt0 f0 callSignature start() #txt
Tt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Tt0 f0 @C|.responsibility Everybody #txt
Tt0 f0 81 49 30 30 -21 17 #rect
Tt0 f0 @|StartRequestIcon #fIcon
Tt0 f1 type pizza_store.Data #txt
Tt0 f1 713 369 30 30 0 15 #rect
Tt0 f1 @|EndIcon #fIcon
Tt0 f2 actionDecl 'pizza_store.Data out;
' #txt
Tt0 f2 actionTable 'out=in;
' #txt
Tt0 f2 actionCode 'System.out.println("Hello world");' #txt
Tt0 f2 type pizza_store.Data #txt
Tt0 f2 440 354 112 44 0 -8 #rect
Tt0 f2 @|StepIcon #fIcon
Tt0 f4 expr out #txt
Tt0 f4 552 376 713 383 #arcP
Tt0 f3 targetWindow NEW:card: #txt
Tt0 f3 targetDisplay TOP #txt
Tt0 f3 richDialogId pizza_store.TestDialog #txt
Tt0 f3 startMethod start(pizza_store.Data) #txt
Tt0 f3 type pizza_store.Data #txt
Tt0 f3 requestActionDecl '<pizza_store.Data data> param;' #txt
Tt0 f3 requestMappingAction 'param.data=in;
' #txt
Tt0 f3 responseActionDecl 'pizza_store.Data out;
' #txt
Tt0 f3 responseMappingAction 'out=result.data;
' #txt
Tt0 f3 windowConfiguration '* ' #txt
Tt0 f3 isAsynch false #txt
Tt0 f3 isInnerRd false #txt
Tt0 f3 userContext '* ' #txt
Tt0 f3 264 202 112 44 0 -8 #rect
Tt0 f3 @|RichDialogIcon #fIcon
Tt0 f5 expr out #txt
Tt0 f5 108 72 320 202 #arcP
Tt0 f6 expr out #txt
Tt0 f6 320 246 496 354 #arcP
>Proto Tt0 .type pizza_store.Data #txt
>Proto Tt0 .processKind NORMAL #txt
>Proto Tt0 0 0 32 24 18 0 #rect
>Proto Tt0 @|BIcon #fIcon
Tt0 f2 mainOut f4 tail #connect
Tt0 f4 head f1 mainIn #connect
Tt0 f0 mainOut f5 tail #connect
Tt0 f5 head f3 mainIn #connect
Tt0 f3 mainOut f6 tail #connect
Tt0 f6 head f2 mainIn #connect
