[Ivy]
[>Created: Fri Dec 16 14:10:52 ICT 2022]
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
Cr0 @UserTask f4 '' #zField
Cr0 @PushWFArc f2 '' #zField
Cr0 @TaskSwitch f7 '' #zField
Cr0 @TkArc f3 '' #zField
Cr0 @PushWFArc f6 '' #zField
Cr0 @TkArc f9 '' #zField
Cr0 @UserTask f10 '' #zField
Cr0 @TkArc f11 '' #zField
Cr0 @PushWFArc f12 '' #zField
Cr0 @RichDialog f13 '' #zField
Cr0 @TkArc f8 '' #zField
Cr0 @Alternative f15 '' #zField
Cr0 @PushWFArc f16 '' #zField
Cr0 @PushWFArc f14 '' #zField
>Proto Cr0 Cr0 ConfirmOrder #zField
Cr0 f0 outLink start.ivp #txt
Cr0 f0 type pizza_store.ConfirmOrderData #txt
Cr0 f0 inParamDecl '<> param;' #txt
Cr0 f0 actionDecl 'pizza_store.ConfirmOrderData out;
' #txt
Cr0 f0 guid 185004AE84FEE666 #txt
Cr0 f0 requestEnabled true #txt
Cr0 f0 triggerEnabled true #txt
Cr0 f0 callSignature start() #txt
Cr0 f0 persist false #txt
Cr0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Cr0 f0 showInStartList 1 #txt
Cr0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Cr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp
start()</name>
    </language>
</elementInfo>
' #txt
Cr0 f0 @C|.responsibility Everybody #txt
Cr0 f0 1 145 30 30 -21 17 #rect
Cr0 f0 @|StartRequestIcon #fIcon
Cr0 f1 type pizza_store.ConfirmOrderData #txt
Cr0 f1 1345 145 30 30 0 15 #rect
Cr0 f1 @|EndIcon #fIcon
Cr0 f5 richDialogId pizza_store.PendingOrdersPage #txt
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
        <name>Confirm Created Order Task</name>
        <nameStyle>26
</nameStyle>
    </language>
</elementInfo>
' #txt
Cr0 f5 864 26 160 44 -77 -8 #rect
Cr0 f5 @|UserTaskIcon #fIcon
Cr0 f4 richDialogId pizza_store.ConfirmedOrdersPage #txt
Cr0 f4 startMethod start() #txt
Cr0 f4 requestActionDecl '<> param;' #txt
Cr0 f4 responseActionDecl 'pizza_store.ConfirmOrderData out;
' #txt
Cr0 f4 responseMappingAction 'out=in;
' #txt
Cr0 f4 outLinks "TaskA.ivp" #txt
Cr0 f4 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.PRI=2
TaskA.ROL=Chef
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Cr0 f4 type pizza_store.ConfirmOrderData #txt
Cr0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirmed Cooked Order Task</name>
        <nameStyle>27
</nameStyle>
    </language>
</elementInfo>
' #txt
Cr0 f4 856 138 176 44 -84 -8 #rect
Cr0 f4 @|UserTaskIcon #fIcon
Cr0 f2 expr data #txt
Cr0 f2 outCond ivp=="TaskA.ivp" #txt
Cr0 f2 1032 160 1345 160 #arcP
Cr0 f2 0 0.9185751297018966 0 0 #arcLabel
Cr0 f7 actionDecl 'pizza_store.ConfirmOrderData out;
' #txt
Cr0 f7 actionTable 'out=in1;
' #txt
Cr0 f7 outTypes "pizza_store.ConfirmOrderData","pizza_store.ConfirmOrderData","pizza_store.ConfirmOrderData" #txt
Cr0 f7 outLinks "TaskA.ivp","TaskB.ivp","TaskC.ivp" #txt
Cr0 f7 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.PRI=2
TaskA.ROL=Receptionist
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
TaskB.EXPRI=2
TaskB.EXROL=Everybody
TaskB.EXTYPE=0
TaskB.PRI=2
TaskB.ROL=Chef
TaskB.SKIP_TASK_LIST=false
TaskB.TYPE=0
TaskC.EXPRI=2
TaskC.EXROL=Everybody
TaskC.EXTYPE=0
TaskC.PRI=2
TaskC.ROL=Delivery
TaskC.SKIP_TASK_LIST=false
TaskC.TYPE=0' #txt
Cr0 f7 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setAutoStartTask(false);
taskDef.setActivator("Receptionist");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskB.ivp");
taskDef.setAutoStartTask(false);
taskDef.setActivator("Chef");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskC.ivp");
taskDef.setAutoStartTask(false);
taskDef.setActivator("Delivery");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Cr0 f7 type pizza_store.ConfirmOrderData #txt
Cr0 f7 template "" #txt
Cr0 f7 544 144 32 32 0 16 #rect
Cr0 f7 @|TaskSwitchIcon #fIcon
Cr0 f3 expr data #txt
Cr0 f3 outCond ivp=="TaskA.ivp" #txt
Cr0 f3 type pizza_store.ConfirmOrderData #txt
Cr0 f3 var in1 #txt
Cr0 f3 572 156 869 70 #arcP
Cr0 f3 0 0.3392857142857143 0 0 #arcLabel
Cr0 f6 expr data #txt
Cr0 f6 outCond ivp=="TaskA.ivp" #txt
Cr0 f6 1024 70 1345 156 #arcP
Cr0 f6 0 0.7152289397946969 0 0 #arcLabel
Cr0 f9 expr data #txt
Cr0 f9 outCond ivp=="TaskB.ivp" #txt
Cr0 f9 type pizza_store.ConfirmOrderData #txt
Cr0 f9 var in1 #txt
Cr0 f9 576 160 856 160 #arcP
Cr0 f9 0 0.5263157894736842 0 0 #arcLabel
Cr0 f10 richDialogId pizza_store.ConfirmDeliveringOrderPage #txt
Cr0 f10 startMethod start() #txt
Cr0 f10 requestActionDecl '<> param;' #txt
Cr0 f10 responseActionDecl 'pizza_store.ConfirmOrderData out;
' #txt
Cr0 f10 responseMappingAction 'out=in;
' #txt
Cr0 f10 outLinks "TaskA.ivp" #txt
Cr0 f10 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.PRI=2
TaskA.ROL=Delivery
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Cr0 f10 type pizza_store.ConfirmOrderData #txt
Cr0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm Delivering Order Task</name>
        <nameStyle>29
</nameStyle>
    </language>
</elementInfo>
' #txt
Cr0 f10 864 258 176 44 -83 -8 #rect
Cr0 f10 @|UserTaskIcon #fIcon
Cr0 f11 expr data #txt
Cr0 f11 outCond ivp=="TaskC.ivp" #txt
Cr0 f11 type pizza_store.ConfirmOrderData #txt
Cr0 f11 var in1 #txt
Cr0 f11 572 164 880 258 #arcP
Cr0 f11 0 0.1510217047534158 0 0 #arcLabel
Cr0 f12 expr data #txt
Cr0 f12 outCond ivp=="TaskA.ivp" #txt
Cr0 f12 1027 258 1345 164 #arcP
Cr0 f12 0 0.16598829232121018 0 0 #arcLabel
Cr0 f13 targetWindow NEW:card: #txt
Cr0 f13 targetDisplay TOP #txt
Cr0 f13 richDialogId pizza_store.LoginPage #txt
Cr0 f13 startMethod start() #txt
Cr0 f13 type pizza_store.ConfirmOrderData #txt
Cr0 f13 requestActionDecl '<> param;' #txt
Cr0 f13 responseActionDecl 'pizza_store.ConfirmOrderData out;
' #txt
Cr0 f13 responseMappingAction 'out=in;
' #txt
Cr0 f13 windowConfiguration '* ' #txt
Cr0 f13 isAsynch false #txt
Cr0 f13 isInnerRd false #txt
Cr0 f13 userContext '* ' #txt
Cr0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login Page</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Cr0 f13 288 138 112 44 -31 -8 #rect
Cr0 f13 @|RichDialogIcon #fIcon
Cr0 f8 expr out #txt
Cr0 f8 type pizza_store.ConfirmOrderData #txt
Cr0 f8 var in1 #txt
Cr0 f8 400 160 544 160 #arcP
Cr0 f15 type pizza_store.ConfirmOrderData #txt
Cr0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>checking user already authenticated</name>
        <nameStyle>35
</nameStyle>
    </language>
</elementInfo>
' #txt
Cr0 f15 184 144 32 32 -98 18 #rect
Cr0 f15 @|AlternativeIcon #fIcon
Cr0 f16 expr out #txt
Cr0 f16 31 160 184 160 #arcP
Cr0 f14 expr in #txt
Cr0 f14 outCond ivy.session.isSessionUserUnknown() #txt
Cr0 f14 216 160 288 160 #arcP
>Proto Cr0 .type pizza_store.ConfirmOrderData #txt
>Proto Cr0 .processKind NORMAL #txt
>Proto Cr0 0 0 32 24 18 0 #rect
>Proto Cr0 @|BIcon #fIcon
Cr0 f4 out f2 tail #connect
Cr0 f2 head f1 mainIn #connect
Cr0 f7 out f3 tail #connect
Cr0 f3 head f5 in #connect
Cr0 f5 out f6 tail #connect
Cr0 f6 head f1 mainIn #connect
Cr0 f7 out f9 tail #connect
Cr0 f9 head f4 in #connect
Cr0 f7 out f11 tail #connect
Cr0 f11 head f10 in #connect
Cr0 f10 out f12 tail #connect
Cr0 f12 head f1 mainIn #connect
Cr0 f13 mainOut f8 tail #connect
Cr0 f8 head f7 in #connect
Cr0 f0 mainOut f16 tail #connect
Cr0 f16 head f15 in #connect
Cr0 f15 out f14 tail #connect
Cr0 f14 head f13 mainIn #connect
