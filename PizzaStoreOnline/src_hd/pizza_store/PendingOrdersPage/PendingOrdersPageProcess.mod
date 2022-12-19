[Ivy]
[>Created: Fri Dec 16 15:51:13 ICT 2022]
185004BE12AC8F3C 3.18 #module
>Proto >Proto Collection #zClass
Cs0 PendingOrdersPageProcess Big #zClass
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
Cs0 @RichDialogProcessEnd f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @RichDialogEnd f14 '' #zField
Cs0 @PushWFArc f10 '' #zField
>Proto Cs0 Cs0 PendingOrdersPageProcess #zField
Cs0 f0 guid 185004BE14757628 #txt
Cs0 f0 type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
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
Cs0 f1 type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
Cs0 f1 499 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 guid 185004BE15AA347C #txt
Cs0 f3 type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
Cs0 f3 actionDecl 'pizza_store.PendingOrdersPage.PendingOrdersPageData out;
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
Cs0 f4 type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
Cs0 f4 guid 185004BE15BAEC26 #txt
Cs0 f4 211 147 26 26 0 12 #rect
Cs0 f4 @|RichDialogEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 109 160 211 160 #arcP
Cs0 f6 actionDecl 'pizza_store.PendingOrdersPage.PendingOrdersPageData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'import pizza_store.DrinkOrderItem;
import pizza_store.Order;
import pizza_store.Pizza;
import pizza_store.PizzaOrderItem;

int NEW_STATUS = 0;

List<Order> newCreatedOrders = ivy.persistence.JPA
	.createQuery("Select o FROM Order o WHERE o.status = :status")
	.setParameter("status", NEW_STATUS)
	.getResultList();

for (Order newOrder :	newCreatedOrders) {
	newOrder.pizzas = ivy.persistence.JPA
		.createQuery("Select p FROM PizzaOrderItem p WHERE p.orderId = :orderId")
		.setParameter("orderId", newOrder.id)
		.getResultList();

	newOrder.price = 0;
	for (PizzaOrderItem pizzaOrderItem : newOrder.pizzas) {
		newOrder.price += (pizzaOrderItem.pizza.price * pizzaOrderItem.quantity);
	}

	ivy.log.info("Load " + newOrder.pizzas.size() + " pizza order item to order with id: " + newOrder.id);

	newOrder.drinks = ivy.persistence.JPA
		.createQuery("Select d FROM DrinkOrderItem d WHERE d.orderId = :orderId")
		.setParameter("orderId", newOrder.id)
		.getResultList();

	for (DrinkOrderItem drinkOrderItem : newOrder.drinks) {
		newOrder.price += (drinkOrderItem.drink.price * drinkOrderItem.quantity);
	}

	ivy.log.info("Load " + newOrder.drinks.size() + " drink order item to order with id: " + newOrder.id);
}

out.confirmOrderData.listOrder = newCreatedOrders;

ivy.log.info("Load " + newCreatedOrders.size() + " orders to confirmed page");' #txt
Cs0 f6 type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load newly created orders</name>
        <nameStyle>25
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 264 42 160 44 -72 -8 #rect
Cs0 f6 @|StepIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 109 64 264 64 #arcP
Cs0 f2 expr out #txt
Cs0 f2 424 64 499 64 #arcP
Cs0 f8 guid 185011EE2674ECDE #txt
Cs0 f8 type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
Cs0 f8 method confirmOrder(pizza_store.Order) #txt
Cs0 f8 disableUIEvents false #txt
Cs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.Order order> param = methodEvent.getInputArguments();
' #txt
Cs0 f8 inActionCode 'import java.util.ListIterator;
import pizza_store.Order;

int CONFIRM_STATUS = 2;
param.order.status = CONFIRM_STATUS;
ivy.persistence.JPA.merge(param.order);

int deleteIndex = -1;
for (int index = 0; index < out.confirmOrderData.listOrder.size(); index++) {
	Order order = out.confirmOrderData.listOrder.get(index);
	if (param.order.id == order.id) {
		deleteIndex = index;
		break;
	}
}

if (deleteIndex >= 0) {
	out.confirmOrderData.listOrder.removeGet(deleteIndex);
}' #txt
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
Cs0 f9 type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
Cs0 f9 method cancelOrder(pizza_store.Order) #txt
Cs0 f9 disableUIEvents false #txt
Cs0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.Order order> param = methodEvent.getInputArguments();
' #txt
Cs0 f9 inActionCode 'import pizza_store.Order;

int CANCEL_STATUS = 1;
param.order.status = CANCEL_STATUS;
ivy.persistence.JPA.merge(param.order);
ivy.log.info("Cancel order with id: " + param.order.id);

int deleteIndex = -1;
for (int index = 0; index < out.confirmOrderData.listOrder.size(); index++) {
	Order order = out.confirmOrderData.listOrder.get(index);
	if (param.order.id == order.id) {
		deleteIndex = index;
		break;
	}
}

if (deleteIndex >= 0) {
	out.confirmOrderData.listOrder.removeGet(deleteIndex);
}' #txt
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
Cs0 f11 type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
Cs0 f11 219 339 26 26 0 12 #rect
Cs0 f11 @|RichDialogProcessEndIcon #fIcon
Cs0 f12 expr out #txt
Cs0 f12 109 352 219 352 #arcP
Cs0 f14 type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
Cs0 f14 guid 1851A212FAE12636 #txt
Cs0 f14 211 243 26 26 0 12 #rect
Cs0 f14 @|RichDialogEndIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 109 256 211 256 #arcP
>Proto Cs0 .type pizza_store.PendingOrdersPage.PendingOrdersPageData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f6 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f9 mainOut f12 tail #connect
Cs0 f12 head f11 mainIn #connect
Cs0 f8 mainOut f10 tail #connect
Cs0 f10 head f14 mainIn #connect
