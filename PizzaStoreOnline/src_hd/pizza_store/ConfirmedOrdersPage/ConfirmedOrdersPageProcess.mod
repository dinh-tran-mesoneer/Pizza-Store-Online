[Ivy]
[>Created: Tue Dec 13 13:20:59 ICT 2022]
1850483320B4E25A 3.18 #module
>Proto >Proto Collection #zClass
Cs0 ConfirmedOrdersPageProcess Big #zClass
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
Cs0 @RichDialogProcessEnd f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
>Proto Cs0 Cs0 ConfirmedOrdersPageProcess #zField
Cs0 f0 guid 1850483321DD340D #txt
Cs0 f0 type pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -16 15 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData #txt
Cs0 f1 387 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 guid 18504833227C0265 #txt
Cs0 f3 type pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData #txt
Cs0 f3 actionDecl 'pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData out;
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
Cs0 f4 type pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData #txt
Cs0 f4 guid 18504833227C3590 #txt
Cs0 f4 211 147 26 26 0 12 #rect
Cs0 f4 @|RichDialogEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 109 160 211 160 #arcP
Cs0 f6 actionDecl 'pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'import pizza_store.DrinkOrderItem;
import pizza_store.Order;
import pizza_store.Pizza;
import pizza_store.PizzaOrderItem;

int CONFIRMED_STATUS = 2;

List<Order> newCreatedOrders = ivy.persistence.JPA
	.createQuery("Select o FROM Order o WHERE o.status = :status")
	.setParameter("status", CONFIRMED_STATUS)
	.getResultList();

for (int orderIndex = 0; orderIndex < newCreatedOrders.size(); orderIndex++) {
	Order newOrder = 	newCreatedOrders.get(orderIndex);
	newOrder.pizzas = ivy.persistence.JPA
		.createQuery("Select p FROM PizzaOrderItem p WHERE p.orderId = :orderId")
		.setParameter("orderId", newOrder.id)
		.getResultList();
	
	newOrder.price = 0;
	for (int itemIndex = 0; itemIndex < newOrder.pizzas.size(); itemIndex++) {
		PizzaOrderItem pizzaOrderItem = newOrder.pizzas.get(itemIndex);
		newOrder.price += (pizzaOrderItem.pizza.price * pizzaOrderItem.quantity);
	}
	
	ivy.log.info("Load " + newOrder.pizzas.size() + " pizza order item to order with id: " + newOrder.id);
		
	newOrder.drinks = ivy.persistence.JPA
		.createQuery("Select d FROM DrinkOrderItem d WHERE d.orderId = :orderId")
		.setParameter("orderId", newOrder.id)
		.getResultList();
	
	for (int itemIndex = 0; itemIndex < newOrder.drinks.size(); itemIndex++) {
		DrinkOrderItem drinkOrderItem = newOrder.drinks.get(itemIndex);
		newOrder.price += (drinkOrderItem.drink.price * drinkOrderItem.quantity);
	}
	
	ivy.log.info("Load " + newOrder.drinks.size() + " drink order item to order with id: " + newOrder.id);
}

out.confirmOrderData.listOrder = newCreatedOrders;

ivy.log.info("Load " + newCreatedOrders.size() + " orders to confirmed page");' #txt
Cs0 f6 type pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load confirmed orders</name>
        <nameStyle>21
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 152 42 144 44 -62 -8 #rect
Cs0 f6 @|StepIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 109 64 152 64 #arcP
Cs0 f2 expr out #txt
Cs0 f2 296 64 387 64 #arcP
Cs0 f8 guid 1850495440AB247F #txt
Cs0 f8 type pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData #txt
Cs0 f8 method confirmOrder(pizza_store.Order) #txt
Cs0 f8 disableUIEvents false #txt
Cs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.Order order> param = methodEvent.getInputArguments();
' #txt
Cs0 f8 inActionCode 'import pizza_store.Order;

int CONFIRM_COOKED_STATUS = 3;
param.order.status = CONFIRM_COOKED_STATUS;
ivy.persistence.JPA.merge(param.order);
ivy.log.info("Confirm cooked order with id: " + param.order.id);

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
Cs0 f9 type pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData #txt
Cs0 f9 227 243 26 26 0 12 #rect
Cs0 f9 @|RichDialogProcessEndIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 109 256 227 256 #arcP
>Proto Cs0 .type pizza_store.ConfirmedOrdersPage.ConfirmedOrdersPageData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f6 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f8 mainOut f10 tail #connect
Cs0 f10 head f9 mainIn #connect
