[Ivy]
[>Created: Sun Dec 11 19:43:10 ICT 2022]
185004BE12AC8F3C 3.18 #module
>Proto >Proto Collection #zClass
Cs0 ConfirmOrderPageProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @GridStep f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogMethodStart f8 '' #zField
Cs0 @RichDialogMethodStart f9 '' #zField
Cs0 @RichDialogEnd f10 '' #zField
Cs0 @RichDialogEnd f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @PushWFArc f13 '' #zField
>Proto Cs0 Cs0 ConfirmOrderPageProcess #zField
Cs0 f0 guid 185004BE14757628 #txt
Cs0 f0 type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
Cs0 f0 method start(pizza_store.ConfirmOrderData) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.ConfirmOrderData confirmOrderData> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.confirmOrderData=param.confirmOrderData;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ConfirmOrderData)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -66 15 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
Cs0 f1 339 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 guid 185004BE15AA347C #txt
Cs0 f3 type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
Cs0 f3 actionDecl 'pizza_store.ConfirmOrderPage.ConfirmOrderPageData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 83 147 26 26 -15 12 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f4 type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
Cs0 f4 guid 185004BE15BAEC26 #txt
Cs0 f4 211 147 26 26 0 12 #rect
Cs0 f4 @|RichDialogEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 109 160 211 160 #arcP
Cs0 f6 actionDecl 'pizza_store.ConfirmOrderPage.ConfirmOrderPageData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'import java.util.ArrayList;
import pizza_store.Order;
import pizza_store.Product;

List<Order> allOrders = ivy.persistence.JPA.findAll(Order.class);
ArrayList<Order> unconfirmedOrders = new ArrayList<Order>();
int UNCONFIRMED_STATUS = 0;

for (int index = 0; index < allOrders.size(); index++) {
	Order order = allOrders.get(index);
	if (order.status != UNCONFIRMED_STATUS) {
		continue;
	}
	
	unconfirmedOrders.add(order);
}
out.confirmOrderData.listOrder = unconfirmedOrders;

ivy.log.info("Load " + unconfirmedOrders.size() + " orders to confirmed page");' #txt
Cs0 f6 type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load unconfirmed orders</name>
        <nameStyle>23
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 152 42 144 44 -69 -8 #rect
Cs0 f6 @|StepIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 109 64 152 64 #arcP
Cs0 f2 expr out #txt
Cs0 f2 296 64 339 64 #arcP
Cs0 f8 guid 185011EE2674ECDE #txt
Cs0 f8 type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
Cs0 f8 method confirmOrder(pizza_store.Order) #txt
Cs0 f8 disableUIEvents false #txt
Cs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.Order order> param = methodEvent.getInputArguments();
' #txt
Cs0 f8 inActionCode 'int CONFIRM_STATUS = 2;
param.order.status = CONFIRM_STATUS;
ivy.persistence.JPA.merge(param.order);
ivy.log.info("Confirm order with id: " + param.order.id);' #txt
Cs0 f8 outParameterDecl '<> result;
' #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirmOrder(Order)</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 83 243 26 26 -55 15 #rect
Cs0 f8 @|RichDialogMethodStartIcon #fIcon
Cs0 f9 guid 185011EF999B4DDC #txt
Cs0 f9 type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
Cs0 f9 method cancelOrder(pizza_store.Order) #txt
Cs0 f9 disableUIEvents false #txt
Cs0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.Order order> param = methodEvent.getInputArguments();
' #txt
Cs0 f9 inActionCode 'int CANCEL_STATUS = 1;
param.order.status = CANCEL_STATUS;
ivy.persistence.JPA.merge(param.order);
ivy.log.info("Cancel order with id: " + param.order.id);' #txt
Cs0 f9 outParameterDecl '<> result;
' #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancelOrder(Order)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f9 83 339 26 26 -53 15 #rect
Cs0 f9 @|RichDialogMethodStartIcon #fIcon
Cs0 f10 type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
Cs0 f10 guid 185011F13C865C02 #txt
Cs0 f10 211 243 26 26 0 12 #rect
Cs0 f10 @|RichDialogEndIcon #fIcon
Cs0 f11 type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
Cs0 f11 guid 185011F2E80E797B #txt
Cs0 f11 211 339 26 26 0 12 #rect
Cs0 f11 @|RichDialogEndIcon #fIcon
Cs0 f12 expr out #txt
Cs0 f12 109 256 211 256 #arcP
Cs0 f13 expr out #txt
Cs0 f13 109 352 211 352 #arcP
>Proto Cs0 .type pizza_store.ConfirmOrderPage.ConfirmOrderPageData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f6 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f8 mainOut f12 tail #connect
Cs0 f12 head f10 mainIn #connect
Cs0 f9 mainOut f13 tail #connect
Cs0 f13 head f11 mainIn #connect
