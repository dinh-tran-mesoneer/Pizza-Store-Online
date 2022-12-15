[Ivy]
[>Created: Thu Dec 15 12:23:33 ICT 2022]
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
Os0 @RichDialogProcessStart f3 '' #zField
Os0 @RichDialogEnd f4 '' #zField
Os0 @PushWFArc f5 '' #zField
Os0 @RichDialogProcessEnd f10 '' #zField
Os0 @RichDialogMethodStart f12 '' #zField
Os0 @RichDialogEnd f13 '' #zField
Os0 @GridStep f6 '' #zField
Os0 @PushWFArc f7 '' #zField
Os0 @PushWFArc f8 '' #zField
Os0 @GridStep f14 '' #zField
Os0 @PushWFArc f15 '' #zField
Os0 @PushWFArc f2 '' #zField
Os0 @RichDialogProcessEnd f17 '' #zField
Os0 @RichDialogMethodStart f9 '' #zField
Os0 @PushWFArc f11 '' #zField
Os0 @RichDialogMethodStart f16 '' #zField
Os0 @PushWFArc f18 '' #zField
>Proto Os0 Os0 OrderPageProcess #zField
Os0 f0 guid 184F5978AAC68EB4 #txt
Os0 f0 type pizza_store.OrderPage.OrderPageData #txt
Os0 f0 method start(pizza_store.OrderData) #txt
Os0 f0 disableUIEvents true #txt
Os0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.OrderData orderData> param = methodEvent.getInputArguments();
' #txt
Os0 f0 outParameterDecl '<pizza_store.OrderData orderData> result;
' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(OrderData)</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f0 83 51 26 26 -44 15 #rect
Os0 f0 @|RichDialogInitStartIcon #fIcon
Os0 f1 type pizza_store.OrderPage.OrderPageData #txt
Os0 f1 339 51 26 26 0 12 #rect
Os0 f1 @|RichDialogProcessEndIcon #fIcon
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
Os0 f3 75 451 26 26 -15 12 #rect
Os0 f3 @|RichDialogProcessStartIcon #fIcon
Os0 f4 type pizza_store.OrderPage.OrderPageData #txt
Os0 f4 guid 184F5978AB8EA611 #txt
Os0 f4 211 451 26 26 0 12 #rect
Os0 f4 @|RichDialogEndIcon #fIcon
Os0 f5 expr out #txt
Os0 f5 101 464 211 464 #arcP
Os0 f10 type pizza_store.OrderPage.OrderPageData #txt
Os0 f10 347 147 26 26 0 12 #rect
Os0 f10 @|RichDialogProcessEndIcon #fIcon
Os0 f12 guid 185095B4AFD8B7E1 #txt
Os0 f12 type pizza_store.OrderPage.OrderPageData #txt
Os0 f12 method addOrder() #txt
Os0 f12 disableUIEvents false #txt
Os0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Os0 f12 outParameterDecl '<> result;
' #txt
Os0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addOrder()</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f12 67 323 26 26 -30 15 #rect
Os0 f12 @|RichDialogMethodStartIcon #fIcon
Os0 f13 type pizza_store.OrderPage.OrderPageData #txt
Os0 f13 guid 185095B599C2A41A #txt
Os0 f13 395 323 26 26 0 12 #rect
Os0 f13 @|RichDialogEndIcon #fIcon
Os0 f6 actionDecl 'pizza_store.OrderPage.OrderPageData out;
' #txt
Os0 f6 actionTable 'out=in;
' #txt
Os0 f6 actionCode 'import pizza_store.Order;
import pizza_store.Pizza;
import pizza_store.PizzaOrderItem;
import pizza_store.DrinkOrderItem;


ivy.log.info("Order " + out.listSelectedPizzas.size() + " pizzas");
ivy.log.info("Name: " + out.orderData.name);
ivy.log.info("Phone numberl: " + out.orderData.phoneNumber);
ivy.log.info("Delivery Address: " + out.orderData.deliveryAddress);

int NEWLY_CREATED_STATUS = 0;

Order order;
order.orderedDateTime = new DateTime();
order.name = out.orderData.name;
order.phoneNumber = out.orderData.phoneNumber;
order.deliveryAddress = out.orderData.deliveryAddress;
order.status = NEWLY_CREATED_STATUS;

ivy.persistence.JPA.persist(order);

for (PizzaOrderItem pizzaOrderItem : out.orderData.listSelectedPizzaOrderItem) {
	if (!pizzaOrderItem.isSelected || pizzaOrderItem.quantity <= 0) {
		continue;
	}
	
	pizzaOrderItem.orderId = order.id;
	ivy.persistence.JPA.persist(pizzaOrderItem);
}

for (DrinkOrderItem  drinkOrderItem : out.orderData.listSelectedDrinkOrderItem) {
	if (!drinkOrderItem.isSelected || drinkOrderItem.quantity <= 0) {
		continue;
	}
	
	drinkOrderItem.orderId = order.id;
	ivy.persistence.JPA.persist(drinkOrderItem);
}' #txt
Os0 f6 type pizza_store.OrderPage.OrderPageData #txt
Os0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add Order</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f6 160 314 112 44 -27 -8 #rect
Os0 f6 @|StepIcon #fIcon
Os0 f7 expr out #txt
Os0 f7 93 336 160 336 #arcP
Os0 f8 expr out #txt
Os0 f8 272 336 395 336 #arcP
Os0 f14 actionDecl 'pizza_store.OrderPage.OrderPageData out;
' #txt
Os0 f14 actionTable 'out=in;
' #txt
Os0 f14 actionCode 'import pizza_store.DrinkOrderItem;
import pizza_store.PizzaOrderItem;
import pizza_store.Drink;
import pizza_store.Pizza;

out.listPizzas = ivy.persistence.JPA.findAll(Pizza.class);
out.orderData.listPizzas = out.listPizzas;

for (Pizza pizza : out.listPizzas) {
	PizzaOrderItem orderItem;
	orderItem.pizza = pizza;
	orderItem.crust = "thick";
	orderItem.size = "medium";
	orderItem.quantity = 0;
	orderItem.isSelected = false;
	out.orderData.listSelectedPizzaOrderItem.add(orderItem);
}


out.orderData.listDrinks = ivy.persistence.JPA.findAll(Drink.class);

for (Drink drink : out.orderData.listDrinks) {
	DrinkOrderItem orderItem;
	orderItem.drink = drink;
	orderItem.quantity = 0;
	orderItem.isSelected = false;
	out.orderData.listSelectedDrinkOrderItem.add(orderItem);
}

ivy.log.info("Product Length: " + out.listPizzas.size());' #txt
Os0 f14 type pizza_store.OrderPage.OrderPageData #txt
Os0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load products for ordering</name>
        <nameStyle>26
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f14 144 42 160 44 -72 -8 #rect
Os0 f14 @|StepIcon #fIcon
Os0 f15 expr out #txt
Os0 f15 109 64 144 64 #arcP
Os0 f2 expr out #txt
Os0 f2 304 64 339 64 #arcP
Os0 f17 type pizza_store.OrderPage.OrderPageData #txt
Os0 f17 339 211 26 26 0 12 #rect
Os0 f17 @|RichDialogProcessEndIcon #fIcon
Os0 f9 guid 185142D45CF1982C #txt
Os0 f9 type pizza_store.OrderPage.OrderPageData #txt
Os0 f9 method addPizza(java.lang.Integer) #txt
Os0 f9 disableUIEvents false #txt
Os0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer pizzaId> param = methodEvent.getInputArguments();
' #txt
Os0 f9 inActionCode 'import pizza_store.PizzaOrderItem;

for (PizzaOrderItem orderItem : out.orderData.listSelectedPizzaOrderItem) {
	if (orderItem.pizza.id == param.pizzaId) {
		orderItem.isSelected = true;
		orderItem.quantity++;
		ivy.log.info("Add new pizza " + orderItem.pizza.name);
		break;	
	}
}' #txt
Os0 f9 outParameterDecl '<> result;
' #txt
Os0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addPizza(Integer)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f9 83 147 26 26 -47 15 #rect
Os0 f9 @|RichDialogMethodStartIcon #fIcon
Os0 f11 expr out #txt
Os0 f11 109 160 347 160 #arcP
Os0 f16 guid 185143A3593B9F38 #txt
Os0 f16 type pizza_store.OrderPage.OrderPageData #txt
Os0 f16 method addDrink(java.lang.Integer) #txt
Os0 f16 disableUIEvents false #txt
Os0 f16 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer drinkSeletedId> param = methodEvent.getInputArguments();
' #txt
Os0 f16 inActionCode 'import pizza_store.DrinkOrderItem;

for (DrinkOrderItem orderItem : out.orderData.listSelectedDrinkOrderItem) {
	if (orderItem.drink.id == param.drinkSeletedId) {
		orderItem.isSelected = true;
		orderItem.quantity++;
		ivy.log.info("Add new drink " + orderItem.drink.name);
		break;	
	}
}' #txt
Os0 f16 outParameterDecl '<> result;
' #txt
Os0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addDrink(Integer)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f16 83 211 26 26 -48 15 #rect
Os0 f16 @|RichDialogMethodStartIcon #fIcon
Os0 f18 expr out #txt
Os0 f18 109 224 339 224 #arcP
>Proto Os0 .type pizza_store.OrderPage.OrderPageData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f3 mainOut f5 tail #connect
Os0 f5 head f4 mainIn #connect
Os0 f12 mainOut f7 tail #connect
Os0 f7 head f6 mainIn #connect
Os0 f6 mainOut f8 tail #connect
Os0 f8 head f13 mainIn #connect
Os0 f0 mainOut f15 tail #connect
Os0 f15 head f14 mainIn #connect
Os0 f14 mainOut f2 tail #connect
Os0 f2 head f1 mainIn #connect
Os0 f9 mainOut f11 tail #connect
Os0 f11 head f10 mainIn #connect
Os0 f16 mainOut f18 tail #connect
Os0 f18 head f17 mainIn #connect
