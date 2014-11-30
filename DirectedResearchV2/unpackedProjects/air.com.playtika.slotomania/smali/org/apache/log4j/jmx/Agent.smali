.class public Lorg/apache/log4j/jmx/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# static fields
.field static class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

.field static log:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/apache/log4j/jmx/Agent;->class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.jmx.Agent"

    invoke-static {v0}, Lorg/apache/log4j/jmx/Agent;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/Agent;->class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/jmx/Agent;->class$org$apache$log4j$jmx$Agent:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public start()V
    .locals 6

    .prologue
    .line 39
    invoke-static {}, Ljavax/management/MBeanServerFactory;->createMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v3

    .line 40
    .local v3, "server":Ljavax/management/MBeanServer;
    new-instance v2, Lcom/sun/jdmk/comm/HtmlAdaptorServer;

    invoke-direct {v2}, Lcom/sun/jdmk/comm/HtmlAdaptorServer;-><init>()V

    .line 43
    .local v2, "html":Lcom/sun/jdmk/comm/HtmlAdaptorServer;
    :try_start_0
    sget-object v4, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v5, "Registering HtmlAdaptorServer instance."

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 44
    new-instance v4, Ljavax/management/ObjectName;

    const-string v5, "Adaptor:name=html,port=8082"

    invoke-direct {v4, v5}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 45
    sget-object v4, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v5, "Registering HierarchyDynamicMBean instance."

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 46
    new-instance v1, Lorg/apache/log4j/jmx/HierarchyDynamicMBean;

    invoke-direct {v1}, Lorg/apache/log4j/jmx/HierarchyDynamicMBean;-><init>()V

    .line 47
    .local v1, "hdm":Lorg/apache/log4j/jmx/HierarchyDynamicMBean;
    new-instance v4, Ljavax/management/ObjectName;

    const-string v5, "log4j:hiearchy=default"

    invoke-direct {v4, v5}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    invoke-virtual {v2}, Lcom/sun/jdmk/comm/CommunicatorServer;->start()V

    .line 54
    .end local v1    # "hdm":Lorg/apache/log4j/jmx/HierarchyDynamicMBean;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/log4j/jmx/Agent;->log:Lorg/apache/log4j/Logger;

    const-string v5, "Problem while regitering MBeans instances."

    invoke-virtual {v4, v5, v0}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
