[Ivy]
[>Created: Sat Dec 10 20:53:54 ICT 2022]
184F5978A94DCF2C 3.18 #module
>Proto >Proto Collection #zClass
Os0 OrderPageProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Os0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Os0 @TextInP .resExport .resExport #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @AnnotationInP-0n ai ai #zField
Os0 @MessageFlowInP-0n messageIn messageIn #zField
Os0 @MessageFlowOutP-0n messageOut messageOut #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @RichDialogInitStart f0 '' #zField
Os0 @RichDialogProcessEnd f1 '' #zField
Os0 @PushWFArc f2 '' #zField
Os0 @RichDialogProcessStart f3 '' #zField
Os0 @RichDialogEnd f4 '' #zField
Os0 @PushWFArc f5 '' #zField
Os0 @RichDialogMethodStart f7 '' #zField
Os0 @RichDialogEnd f6 '' #zField
Os0 @PushWFArc f8 '' #zField
>Proto Os0 Os0 OrderPageProcess #zField
Os0 f0 guid 184F5978AAC68EB4 #txt
Os0 f0 type pizza_store.OrderPage.OrderPageData #txt
Os0 f0 method start(pizza_store.OrderData) #txt
Os0 f0 disableUIEvents true #txt
Os0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.OrderData orderData> param = methodEvent.getInputArguments();
' #txt
Os0 f0 inParameterMapAction 'out.orderData=param.orderData;
' #txt
Os0 f0 outParameterDecl '<pizza_store.OrderData orderData> result;
' #txt
Os0 f0 outParameterMapAction 'result.orderData=in.orderData;
' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(OrderData)</name>
    </language>
</elementInfo>
' #txt
Os0 f0 83 51 26 26 -44 15 #rect
Os0 f0 @|RichDialogInitStartIcon #fIcon
Os0 f1 type pizza_store.OrderPage.OrderPageData #txt
Os0 f1 211 51 26 26 0 12 #rect
Os0 f1 @|RichDialogProcessEndIcon #fIcon
Os0 f2 expr out #txt
Os0 f2 109 64 211 64 #arcP
Os0 f3 guid 184F5978AB8667CE #txt
Os0 f3 type pizza_store.OrderPage.OrderPageData #txt
Os0 f3 actionDecl 'pizza_store.OrderPage.OrderPageData out;
' #txt
Os0 f3 actionTable 'out=in;
' #txt
Os0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Os0 f3 83 147 26 26 -15 12 #rect
Os0 f3 @|RichDialogProcessStartIcon #fIcon
Os0 f4 type pizza_store.OrderPage.OrderPageData #txt
Os0 f4 guid 184F5978AB8EA611 #txt
Os0 f4 211 147 26 26 0 12 #rect
Os0 f4 @|RichDialogEndIcon #fIcon
Os0 f5 expr out #txt
Os0 f5 109 160 211 160 #arcP
Os0 f7 guid 184FC3DEBA6191CE #txt
Os0 f7 type pizza_store.OrderPage.OrderPageData #txt
Os0 f7 method addOrder(pizza_store.Product) #txt
Os0 f7 disableUIEvents false #txt
Os0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.Product selectedProduct> param = methodEvent.getInputArguments();
' #txt
Os0 f7 inActionCode 'import pizza_store.Order;
import pizza_store.Product;

out.orderData.selectedProduct = param.selectedProduct;
Order order = new Order();
order.productId = param.selectedProduct.id;
order.createDate = new DateTime();
ivy.persistence.JPA.persist(order);

ivy.log.info("Add new order for a product: " + param.selectedProduct.name);' #txt
Os0 f7 outParameterDecl '<> result;
' #txt
Os0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addOrder(Product)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f7 83 259 26 26 -51 15 #rect
Os0 f7 @|RichDialogMethodStartIcon #fIcon
Os0 f6 type pizza_store.OrderPage.OrderPageData #txt
Os0 f6 guid 184FC4FD4296AE51 #txt
Os0 f6 211 259 26 26 0 12 #rect
Os0 f6 @|RichDialogEndIcon #fIcon
Os0 f8 expr out #txt
Os0 f8 109 272 211 272 #arcP
>Proto Os0 .type pizza_store.OrderPage.OrderPageData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f0 mainOut f2 tail #connect
Os0 f2 head f1 mainIn #connect
Os0 f3 mainOut f5 tail #connect
Os0 f5 head f4 mainIn #connect
Os0 f7 mainOut f8 tail #connect
Os0 f8 head f6 mainIn #connect
