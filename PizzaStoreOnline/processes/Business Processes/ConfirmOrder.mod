[Ivy]
[>Created: Sun Dec 11 15:27:34 ICT 2022]
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
Cr0 @RichDialog f3 '' #zField
Cr0 @PushWFArc f4 '' #zField
Cr0 @PushWFArc f2 '' #zField
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
Cr0 f1 521 49 30 30 0 15 #rect
Cr0 f1 @|EndIcon #fIcon
Cr0 f3 targetWindow NEW:card: #txt
Cr0 f3 targetDisplay TOP #txt
Cr0 f3 richDialogId pizza_store.ConfirmOrderPage #txt
Cr0 f3 startMethod start(pizza_store.ConfirmOrderData) #txt
Cr0 f3 type pizza_store.ConfirmOrderData #txt
Cr0 f3 requestActionDecl '<pizza_store.ConfirmOrderData confirmOrderData> param;' #txt
Cr0 f3 requestMappingAction 'param.confirmOrderData=in;
' #txt
Cr0 f3 responseActionDecl 'pizza_store.ConfirmOrderData out;
' #txt
Cr0 f3 responseMappingAction 'out=in;
' #txt
Cr0 f3 windowConfiguration '* ' #txt
Cr0 f3 isAsynch false #txt
Cr0 f3 isInnerRd false #txt
Cr0 f3 userContext '* ' #txt
Cr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm Order Page</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Cr0 f3 224 42 128 44 -55 -8 #rect
Cr0 f3 @|RichDialogIcon #fIcon
Cr0 f4 expr out #txt
Cr0 f4 111 64 224 64 #arcP
Cr0 f2 expr out #txt
Cr0 f2 352 64 521 64 #arcP
>Proto Cr0 .type pizza_store.ConfirmOrderData #txt
>Proto Cr0 .processKind NORMAL #txt
>Proto Cr0 0 0 32 24 18 0 #rect
>Proto Cr0 @|BIcon #fIcon
Cr0 f0 mainOut f4 tail #connect
Cr0 f4 head f3 mainIn #connect
Cr0 f3 mainOut f2 tail #connect
Cr0 f2 head f1 mainIn #connect
