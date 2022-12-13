[Ivy]
[>Created: Tue Dec 13 10:32:50 ICT 2022]
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
Os0 @RichDialogMethodStart f9 '' #zField
Os0 @RichDialogProcessEnd f10 '' #zField
Os0 @RichDialogMethodStart f12 '' #zField
Os0 @RichDialogEnd f13 '' #zField
Os0 @GridStep f6 '' #zField
Os0 @PushWFArc f7 '' #zField
Os0 @PushWFArc f8 '' #zField
Os0 @PushWFArc f11 '' #zField
>Proto Os0 Os0 OrderPageProcess #zField
Os0 f0 guid 184F5978AAC68EB4 #txt
Os0 f0 type pizza_store.OrderPage.OrderPageData #txt
Os0 f0 method start(pizza_store.OrderData) #txt
Os0 f0 disableUIEvents true #txt
Os0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.OrderData orderData> param = methodEvent.getInputArguments();
' #txt
Os0 f0 inActionCode 'import pizza_store.Pizza;
import java.util.ArrayList;

out.listSelectedPizzas = new ArrayList<Pizza>();
out.listPizzas = ivy.persistence.JPA.findAll(Pizza.class);

ivy.log.info("Product Length: " + out.listPizzas.size());' #txt
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
Os0 f3 75 451 26 26 -15 12 #rect
Os0 f3 @|RichDialogProcessStartIcon #fIcon
Os0 f4 type pizza_store.OrderPage.OrderPageData #txt
Os0 f4 guid 184F5978AB8EA611 #txt
Os0 f4 211 451 26 26 0 12 #rect
Os0 f4 @|RichDialogEndIcon #fIcon
Os0 f5 expr out #txt
Os0 f5 101 464 211 464 #arcP
Os0 f9 guid 18505C597C2C7946 #txt
Os0 f9 type pizza_store.OrderPage.OrderPageData #txt
Os0 f9 method addPizza(pizza_store.Pizza) #txt
Os0 f9 disableUIEvents false #txt
Os0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<pizza_store.Pizza pizza> param = methodEvent.getInputArguments();
' #txt
Os0 f9 inActionCode 'out.listSelectedPizzas.add(param.pizza);
ivy.log.info("Add new pizza " + param.pizza.name);' #txt
Os0 f9 outParameterDecl '<> result;
' #txt
Os0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addPizza</name>
        <nameStyle>8,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f9 75 195 26 26 -24 15 #rect
Os0 f9 @|RichDialogMethodStartIcon #fIcon
Os0 f10 type pizza_store.OrderPage.OrderPageData #txt
Os0 f10 331 195 26 26 0 12 #rect
Os0 f10 @|RichDialogProcessEndIcon #fIcon
Os0 f12 guid 185095B4AFD8B7E1 #txt
Os0 f12 type pizza_store.OrderPage.OrderPageData #txt
Os0 f12 method addOrder() #txt
Os0 f12 disableUIEvents false #txt
Os0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Os0 f12 inActionCode 'import pizza_store.Order;
import pizza_store.Pizza;
import pizza_store.PizzaOrderItem;


ivy.log.info("Order " + out.listSelectedPizzas.size() + " pizzas");

int NEWLY_CREATED_STATUS = 0;

Order order;
order.orderedDateTime = new DateTime();
order.status = NEWLY_CREATED_STATUS;

ivy.persistence.JPA.persist(order);

for (int index = 0; index < out.listSelectedPizzas.size(); index++) {
	PizzaOrderItem pizzaOrderItem;
	pizzaOrderItem.orderId = order.id;
	pizzaOrderItem.pizza = out.listSelectedPizzas.get(index);
	pizzaOrderItem.quantity = 1;
	pizzaOrderItem.size = "medium";
	pizzaOrderItem.crust = "thick";
	
	ivy.persistence.JPA.persist(pizzaOrderItem);
}' #txt
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
Os0 f6 actionCode 'import java.util.LinkedHashMap;
import java.util.Map;

import pizza_store.Order;
import pizza_store.Pizza;
import pizza_store.PizzaOrderItem;


ivy.log.info("Order " + out.listSelectedPizzas.size() + " pizzas");

int NEWLY_CREATED_STATUS = 0;

Order order;
order.orderedDateTime = new DateTime();
order.status = NEWLY_CREATED_STATUS;

ivy.persistence.JPA.persist(order);

for (int index = 0; index < out.listSelectedPizzas.size(); index++) {
	PizzaOrderItem pizzaOrderItem;
	pizzaOrderItem.orderId = order.id;
	pizzaOrderItem.pizza = out.listSelectedPizzas.get(index);
	pizzaOrderItem.quantity = 1;
	pizzaOrderItem.size = "medium";
	pizzaOrderItem.crust = "thick";
	
	ivy.persistence.JPA.persist(pizzaOrderItem);
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
Os0 f11 expr out #txt
Os0 f11 101 208 331 208 #arcP
>Proto Os0 .type pizza_store.OrderPage.OrderPageData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f0 mainOut f2 tail #connect
Os0 f2 head f1 mainIn #connect
Os0 f3 mainOut f5 tail #connect
Os0 f5 head f4 mainIn #connect
Os0 f12 mainOut f7 tail #connect
Os0 f7 head f6 mainIn #connect
Os0 f6 mainOut f8 tail #connect
Os0 f8 head f13 mainIn #connect
Os0 f9 mainOut f11 tail #connect
Os0 f11 head f10 mainIn #connect
