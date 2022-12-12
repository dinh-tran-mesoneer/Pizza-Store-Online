[Ivy]
[>Created: Mon Dec 12 10:20:45 ICT 2022]
185004AE7988CFE4 3.18 #module
>Proto >Proto Collection #zClass
Cr0 ConfirmOrder Big #zClass
Cr0 B #cInfo
Cr0 #process
Cr0 @TextInP .resExport .resExport #zField
Cr0 @TextInP .type .type #zField
Cr0 @TextInP .processKind .processKind #zField
Cr0 @AnnotationInP-0n ai ai #zField
Cr0 @MessageFlowInP-0n messageIn messageIn #zField
Cr0 @MessageFlowOutP-0n messageOut messageOut #zField
Cr0 @TextInP .xml .xml #zField
Cr0 @TextInP .responsibility .responsibility #zField
Cr0 @StartRequest f0 '' #zField
Cr0 @EndTask f1 '' #zField
Cr0 @UserTask f5 '' #zField
Cr0 @PushWFArc f2 '' #zField
Cr0 @TkArc f3 '' #zField
>Proto Cr0 Cr0 ConfirmOrder #zField
Cr0 f0 outLink start.ivp #txt
Cr0 f0 type pizza_store.ConfirmOrderData #txt
Cr0 f0 inParamDecl '<> param;' #txt
Cr0 f0 actionDecl 'pizza_store.ConfirmOrderData out;
' #txt
Cr0 f0 guid 185004AE84FEE666 #txt
Cr0 f0 requestEnabled true #txt
Cr0 f0 triggerEnabled false #txt
Cr0 f0 callSignature start() #txt
Cr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Cr0 f0 @C|.responsibility Everybody #txt
Cr0 f0 81 49 30 30 -21 17 #rect
Cr0 f0 @|StartRequestIcon #fIcon
Cr0 f1 type pizza_store.ConfirmOrderData #txt
Cr0 f1 561 49 30 30 0 15 #rect
Cr0 f1 @|EndIcon #fIcon
Cr0 f5 richDialogId pizza_store.ConfirmOrderPage #txt
Cr0 f5 startMethod start(pizza_store.ConfirmOrderData) #txt
Cr0 f5 requestActionDecl '<pizza_store.ConfirmOrderData confirmOrderData> param;' #txt
Cr0 f5 responseActionDecl 'pizza_store.ConfirmOrderData out;
' #txt
Cr0 f5 responseMappingAction 'out=in;
' #txt
Cr0 f5 outLinks "TaskA.ivp" #txt
Cr0 f5 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.PRI=2
TaskA.ROL=Receptionist
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Cr0 f5 type pizza_store.ConfirmOrderData #txt
Cr0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm Order Task</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Cr0 f5 280 42 112 44 -53 -8 #rect
Cr0 f5 @|UserTaskIcon #fIcon
Cr0 f2 expr data #txt
Cr0 f2 outCond ivp=="TaskA.ivp" #txt
Cr0 f2 392 64 561 64 #arcP
Cr0 f3 expr out #txt
Cr0 f3 type pizza_store.ConfirmOrderData #txt
Cr0 f3 var in1 #txt
Cr0 f3 111 64 280 64 #arcP
>Proto Cr0 .type pizza_store.ConfirmOrderData #txt
>Proto Cr0 .processKind NORMAL #txt
>Proto Cr0 0 0 32 24 18 0 #rect
>Proto Cr0 @|BIcon #fIcon
Cr0 f5 out f2 tail #connect
Cr0 f2 head f1 mainIn #connect
Cr0 f0 mainOut f3 tail #connect
Cr0 f3 head f5 in #connect
