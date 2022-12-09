[Ivy]
[>Created: Fri Dec 09 16:38:40 ICT 2022]
184F5958D6CDB695 3.18 #module
>Proto >Proto Collection #zClass
Or0 Order Big #zClass
Or0 B #cInfo
Or0 #process
Or0 @TextInP .resExport .resExport #zField
Or0 @TextInP .type .type #zField
Or0 @TextInP .processKind .processKind #zField
Or0 @AnnotationInP-0n ai ai #zField
Or0 @MessageFlowInP-0n messageIn messageIn #zField
Or0 @MessageFlowOutP-0n messageOut messageOut #zField
Or0 @TextInP .xml .xml #zField
Or0 @TextInP .responsibility .responsibility #zField
Or0 @StartRequest f0 '' #zField
Or0 @EndTask f1 '' #zField
Or0 @RichDialog f3 '' #zField
Or0 @PushWFArc f2 '' #zField
Or0 @GridStep f5 '' #zField
Or0 @PushWFArc f6 '' #zField
Or0 @PushWFArc f4 '' #zField
>Proto Or0 Or0 Order #zField
Or0 f0 outLink start.ivp #txt
Or0 f0 type pizza_store.OrderData #txt
Or0 f0 inParamDecl '<> param;' #txt
Or0 f0 actionDecl 'pizza_store.OrderData out;
' #txt
Or0 f0 guid 184F5958D6D4DB4E #txt
Or0 f0 requestEnabled true #txt
Or0 f0 triggerEnabled false #txt
Or0 f0 callSignature start() #txt
Or0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Or0 f0 @C|.responsibility Everybody #txt
Or0 f0 81 49 30 30 -21 17 #rect
Or0 f0 @|StartRequestIcon #fIcon
Or0 f1 type pizza_store.OrderData #txt
Or0 f1 729 49 30 30 0 15 #rect
Or0 f1 @|EndIcon #fIcon
Or0 f3 targetWindow NEW:card: #txt
Or0 f3 targetDisplay TOP #txt
Or0 f3 richDialogId pizza_store.OrderPage #txt
Or0 f3 startMethod start(pizza_store.OrderData) #txt
Or0 f3 type pizza_store.OrderData #txt
Or0 f3 requestActionDecl '<pizza_store.OrderData orderData> param;' #txt
Or0 f3 requestMappingAction 'param.orderData=in;
' #txt
Or0 f3 requestActionCode 'ivy.log.info("Product Length Page call: " + in.productList.size());
for (int index = 0; index < in.productList.size(); index++) {
	ivy.log.info("Product Name: " + in.productList.get(index).name);
}' #txt
Or0 f3 responseActionDecl 'pizza_store.OrderData out;
' #txt
Or0 f3 responseMappingAction 'out=result.orderData;
' #txt
Or0 f3 windowConfiguration '* ' #txt
Or0 f3 isAsynch false #txt
Or0 f3 isInnerRd false #txt
Or0 f3 userContext '* ' #txt
Or0 f3 472 42 112 44 0 -8 #rect
Or0 f3 @|RichDialogIcon #fIcon
Or0 f2 expr out #txt
Or0 f2 584 64 729 64 #arcP
Or0 f5 actionDecl 'pizza_store.OrderData out;
' #txt
Or0 f5 actionTable 'out=in;
' #txt
Or0 f5 actionCode 'import pizza_store.Product;

out.productList = ivy.persistence.JPA.findAll(Product.class);

ivy.log.info("Product Length: " + out.productList.size());' #txt
Or0 f5 type pizza_store.OrderData #txt
Or0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load product</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Or0 f5 200 42 112 44 -36 -8 #rect
Or0 f5 @|StepIcon #fIcon
Or0 f6 expr out #txt
Or0 f6 111 64 200 64 #arcP
Or0 f4 expr out #txt
Or0 f4 312 64 472 64 #arcP
>Proto Or0 .type pizza_store.OrderData #txt
>Proto Or0 .processKind NORMAL #txt
>Proto Or0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Or0 0 0 32 24 18 0 #rect
>Proto Or0 @|BIcon #fIcon
Or0 f3 mainOut f2 tail #connect
Or0 f2 head f1 mainIn #connect
Or0 f0 mainOut f6 tail #connect
Or0 f6 head f5 mainIn #connect
Or0 f5 mainOut f4 tail #connect
Or0 f4 head f3 mainIn #connect
