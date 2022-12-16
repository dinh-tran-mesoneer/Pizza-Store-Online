[Ivy]
[>Created: Fri Dec 16 12:26:23 ICT 2022]
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
Os0 @PushWFArc f8 '' #zField
Os0 @GridStep f14 '' #zField
Os0 @PushWFArc f15 '' #zField
Os0 @PushWFArc f2 '' #zField
Os0 @RichDialogProcessEnd f17 '' #zField
Os0 @RichDialogMethodStart f9 '' #zField
Os0 @PushWFArc f11 '' #zField
Os0 @RichDialogMethodStart f16 '' #zField
Os0 @PushWFArc f18 '' #zField
Os0 @RichDialogMethodStart f19 '' #zField
Os0 @PushWFArc f20 '' #zField
Os0 @RichDialogMethodStart f21 '' #zField
Os0 @PushWFArc f22 '' #zField
Os0 @GridStep f23 '' #zField
Os0 @PushWFArc f24 '' #zField
Os0 @Alternative f25 '' #zField
Os0 @PushWFArc f26 '' #zField
Os0 @RichDialogProcessEnd f27 '' #zField
Os0 @PushWFArc f28 '' #zField
Os0 @GridStep f29 '' #zField
Os0 @PushWFArc f30 '' #zField
Os0 @Alternative f31 '' #zField
Os0 @PushWFArc f32 '' #zField
Os0 @PushWFArc f7 '' #zField
Os0 @RichDialogProcessEnd f33 '' #zField
Os0 @PushWFArc f34 '' #zField
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
Os0 f3 75 563 26 26 -15 12 #rect
Os0 f3 @|RichDialogProcessStartIcon #fIcon
Os0 f4 type pizza_store.OrderPage.OrderPageData #txt
Os0 f4 guid 184F5978AB8EA611 #txt
Os0 f4 211 563 26 26 0 12 #rect
Os0 f4 @|RichDialogEndIcon #fIcon
Os0 f5 expr out #txt
Os0 f5 101 576 211 576 #arcP
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
Os0 f13 1059 323 26 26 0 12 #rect
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

for (DrinkOrderItem drinkOrderItem : out.orderData.listSelectedDrinkOrderItem) {
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
Os0 f6 856 314 112 44 -27 -8 #rect
Os0 f6 @|StepIcon #fIcon
Os0 f8 expr out #txt
Os0 f8 968 336 1059 336 #arcP
Os0 f14 actionDecl 'pizza_store.OrderPage.OrderPageData out;
' #txt
Os0 f14 actionTable 'out=in;
' #txt
Os0 f14 actionCode 'import pizza_store.DrinkOrderItem;
import pizza_store.PizzaOrderItem;
import pizza_store.Drink;
import pizza_store.Pizza;
import java.util.ArrayList;

out.listSelectedPizzas = new ArrayList<Pizza>();
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
' #txt
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
Os0 f16 guid 1851512F54E2F6A7 #txt
Os0 f16 type pizza_store.OrderPage.OrderPageData #txt
Os0 f16 method addDrink(Integer) #txt
Os0 f16 disableUIEvents false #txt
Os0 f16 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer selectedDrinkId> param = methodEvent.getInputArguments();
' #txt
Os0 f16 inActionCode 'import pizza_store.DrinkOrderItem;

for (DrinkOrderItem orderItem : out.orderData.listSelectedDrinkOrderItem) {
	if (orderItem.drink.id == param.selectedDrinkId) {
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
Os0 f19 guid 185155D352B98F0D #txt
Os0 f19 type pizza_store.OrderPage.OrderPageData #txt
Os0 f19 method removePizza(java.lang.Integer) #txt
Os0 f19 disableUIEvents false #txt
Os0 f19 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer unselectedPizzaId> param = methodEvent.getInputArguments();
' #txt
Os0 f19 inActionCode 'import pizza_store.PizzaOrderItem;

for (PizzaOrderItem orderItem : out.orderData.listSelectedPizzaOrderItem) {
	if (orderItem.pizza.id == param.unselectedPizzaId) {
		orderItem.quantity--;
		if (orderItem.quantity <= 0) {
			orderItem.isSelected = false;
			orderItem.quantity = 0;
		}
		
		ivy.log.info("Unchoose pizza " + orderItem.pizza.name);
		break;	
	}
}' #txt
Os0 f19 outParameterDecl '<> result;
' #txt
Os0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removePizza(Integer)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f19 595 147 26 26 -57 15 #rect
Os0 f19 @|RichDialogMethodStartIcon #fIcon
Os0 f20 expr out #txt
Os0 f20 595 160 373 160 #arcP
Os0 f21 guid 1851560F14C68840 #txt
Os0 f21 type pizza_store.OrderPage.OrderPageData #txt
Os0 f21 method removeDrink(Integer) #txt
Os0 f21 disableUIEvents false #txt
Os0 f21 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Integer unselectedDrinkOrderId> param = methodEvent.getInputArguments();
' #txt
Os0 f21 inActionCode 'import pizza_store.DrinkOrderItem;

for (DrinkOrderItem orderItem : out.orderData.listSelectedDrinkOrderItem) {
	if (orderItem.drink.id == param.unselectedDrinkOrderId) {
		orderItem.quantity--;
		if (orderItem.quantity <= 0) {
				orderItem.quantity = 0;
				orderItem.isSelected = false;
		}
		
		ivy.log.info("Unchoose drink " + orderItem.drink.name);
		break;	
	}
}' #txt
Os0 f21 outParameterDecl '<> result;
' #txt
Os0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeDrink(Integer)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f21 595 211 26 26 -58 15 #rect
Os0 f21 @|RichDialogMethodStartIcon #fIcon
Os0 f22 expr out #txt
Os0 f22 595 224 365 224 #arcP
Os0 f23 actionDecl 'pizza_store.OrderPage.OrderPageData out;
' #txt
Os0 f23 actionTable 'out=in;
' #txt
Os0 f23 actionCode 'import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import pizza_store.PizzaOrderItem;
import pizza_store.DrinkOrderItem;

Boolean hasSelectedItems = false;
out.orderData.isValidOrder = true;

for (PizzaOrderItem orderItem : out.orderData.listSelectedPizzaOrderItem) {
	if (orderItem.isSelected && orderItem.quantity > 0) {
		hasSelectedItems = true;
		break;
	}
}

if (hasSelectedItems == false) {
	for (DrinkOrderItem orderItem : out.orderData.listSelectedDrinkOrderItem) {
		if (orderItem.isSelected && orderItem.quantity > 0) {
			hasSelectedItems = true;
			break;
		}
	}
}

if (hasSelectedItems == false) {
	out.orderData.isValidOrder = false;
	FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error", "Please select a product.");
	FacesContext.getCurrentInstance().addMessage(null, message);
}' #txt
Os0 f23 type pizza_store.OrderPage.OrderPageData #txt
Os0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify has selected products</name>
        <nameStyle>28
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f23 128 314 160 44 -77 -8 #rect
Os0 f23 @|StepIcon #fIcon
Os0 f24 expr out #txt
Os0 f24 93 336 128 336 #arcP
Os0 f25 type pizza_store.OrderPage.OrderPageData #txt
Os0 f25 312 320 32 32 0 16 #rect
Os0 f25 @|AlternativeIcon #fIcon
Os0 f26 expr out #txt
Os0 f26 288 336 312 336 #arcP
Os0 f27 type pizza_store.OrderPage.OrderPageData #txt
Os0 f27 315 435 26 26 0 12 #rect
Os0 f27 @|RichDialogProcessEndIcon #fIcon
Os0 f28 expr in #txt
Os0 f28 outCond 'in.orderData.isValidOrder == false' #txt
Os0 f28 328 352 328 435 #arcP
Os0 f29 actionDecl 'pizza_store.OrderPage.OrderPageData out;
' #txt
Os0 f29 actionTable 'out=in;
' #txt
Os0 f29 actionCode 'import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

FacesMessage message = null;
Boolean isMissingInfo = false;

if (out.orderData.name == null || out.orderData.name.trim().isEmpty()) {
	message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error", "Please provide a correct name.");
	isMissingInfo = true;
} else if (out.orderData.phoneNumber == null || out.orderData.phoneNumber.trim().isEmpty()) {
	message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error", "Please provide a correct phone number.");
	isMissingInfo = true;
} else if (out.orderData.deliveryAddress == null || out.orderData.deliveryAddress.trim().isEmpty()) {
	message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error", "Please provide a correct delivery address.");
	isMissingInfo = true;
}

if (isMissingInfo == true) {
	FacesContext.getCurrentInstance().addMessage(null, message);
	out.orderData.isValidOrder = false;
} else {
	out.orderData.isValidOrder = true;
}

' #txt
Os0 f29 type pizza_store.OrderPage.OrderPageData #txt
Os0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify valid customer info</name>
        <nameStyle>26
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f29 424 314 144 44 -67 -8 #rect
Os0 f29 @|StepIcon #fIcon
Os0 f30 expr in #txt
Os0 f30 outCond 'in.orderData.isValidOrder == true' #txt
Os0 f30 344 336 424 336 #arcP
Os0 f31 type pizza_store.OrderPage.OrderPageData #txt
Os0 f31 704 320 32 32 0 16 #rect
Os0 f31 @|AlternativeIcon #fIcon
Os0 f32 expr out #txt
Os0 f32 568 336 704 336 #arcP
Os0 f7 expr in #txt
Os0 f7 outCond 'in.orderData.isValidOrder == true' #txt
Os0 f7 736 336 856 336 #arcP
Os0 f33 type pizza_store.OrderPage.OrderPageData #txt
Os0 f33 707 435 26 26 0 12 #rect
Os0 f33 @|RichDialogProcessEndIcon #fIcon
Os0 f34 expr in #txt
Os0 f34 outCond 'in.orderData.isValidOrder == false' #txt
Os0 f34 720 352 720 435 #arcP
>Proto Os0 .type pizza_store.OrderPage.OrderPageData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f3 mainOut f5 tail #connect
Os0 f5 head f4 mainIn #connect
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
Os0 f19 mainOut f20 tail #connect
Os0 f20 head f10 mainIn #connect
Os0 f21 mainOut f22 tail #connect
Os0 f22 head f17 mainIn #connect
Os0 f12 mainOut f24 tail #connect
Os0 f24 head f23 mainIn #connect
Os0 f23 mainOut f26 tail #connect
Os0 f26 head f25 in #connect
Os0 f28 head f27 mainIn #connect
Os0 f25 out f30 tail #connect
Os0 f30 head f29 mainIn #connect
Os0 f25 out f28 tail #connect
Os0 f29 mainOut f32 tail #connect
Os0 f32 head f31 in #connect
Os0 f31 out f7 tail #connect
Os0 f7 head f6 mainIn #connect
Os0 f31 out f34 tail #connect
Os0 f34 head f33 mainIn #connect
