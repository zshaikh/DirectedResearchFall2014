.class public Lorg/apache/log4j/jmx/LoggerDynamicMBean;
.super Lorg/apache/log4j/jmx/AbstractDynamicMBean;
.source "LoggerDynamicMBean.java"

# interfaces
.implements Ljavax/management/NotificationListener;


# static fields
.field private static cat:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$Appender:Ljava/lang/Class;

.field static class$org$apache$log4j$jmx$LoggerDynamicMBean:Ljava/lang/Class;


# instance fields
.field private dAttributes:Ljava/util/Vector;

.field private dClassName:Ljava/lang/String;

.field private dConstructors:[Ljavax/management/MBeanConstructorInfo;

.field private dDescription:Ljava/lang/String;

.field private dOperations:[Ljavax/management/MBeanOperationInfo;

.field private logger:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$jmx$LoggerDynamicMBean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.jmx.LoggerDynamicMBean"

    invoke-static {v0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$jmx$LoggerDynamicMBean:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$jmx$LoggerDynamicMBean:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 2
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;-><init>()V

    .line 49
    new-array v0, v1, [Ljavax/management/MBeanConstructorInfo;

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dConstructors:[Ljavax/management/MBeanConstructorInfo;

    .line 50
    new-array v0, v1, [Ljavax/management/MBeanOperationInfo;

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    .line 55
    const-string v0, "This MBean acts as a management facade for a org.apache.log4j.Logger instance."

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dDescription:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    .line 66
    invoke-direct {p0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->buildDynamicMBeanInfo()V

    .line 67
    return-void
.end method

.method private buildDynamicMBeanInfo()V
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "java.lang.String"

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 80
    .local v13, "constructors":[Ljava/lang/reflect/Constructor;
    iget-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dConstructors:[Ljavax/management/MBeanConstructorInfo;

    new-instance v1, Ljavax/management/MBeanConstructorInfo;

    const-string v3, "HierarchyDynamicMBean(): Constructs a HierarchyDynamicMBean instance"

    aget-object v6, v13, v5

    invoke-direct {v1, v3, v6}, Ljavax/management/MBeanConstructorInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    aput-object v1, v0, v5

    .line 84
    iget-object v7, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    new-instance v0, Ljavax/management/MBeanAttributeInfo;

    const-string v1, "name"

    const-string v3, "java.lang.String"

    const-string v3, "The name of this Logger."

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    new-instance v6, Ljavax/management/MBeanAttributeInfo;

    const-string v7, "priority"

    const-string v1, "java.lang.String"

    const-string v9, "The priority of this logger."

    move-object v8, v2

    move v10, v4

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v0, 0x2

    new-array v9, v0, [Ljavax/management/MBeanParameterInfo;

    .line 103
    .local v9, "params":[Ljavax/management/MBeanParameterInfo;
    new-instance v0, Ljavax/management/MBeanParameterInfo;

    const-string v1, "class name"

    const-string v3, "java.lang.String"

    const-string v3, "add an appender to this logger"

    invoke-direct {v0, v1, v2, v3}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v5

    .line 105
    new-instance v0, Ljavax/management/MBeanParameterInfo;

    const-string v1, "appender name"

    const-string v3, "java.lang.String"

    const-string v3, "name of the appender"

    invoke-direct {v0, v1, v2, v3}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v4

    .line 108
    iget-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    new-instance v6, Ljavax/management/MBeanOperationInfo;

    const-string v7, "addAppender"

    const-string v8, "addAppender(): add an appender"

    const-string v10, "void"

    move v11, v4

    invoke-direct/range {v6 .. v11}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    aput-object v6, v0, v5

    .line 113
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
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
.method addAppender(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appenderClass"    # Ljava/lang/String;
    .param p2, "appenderName"    # Ljava/lang/String;

    .prologue
    .line 191
    sget-object v1, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "addAppender called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 192
    sget-object v1, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.Appender"

    invoke-static {v1}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 196
    .local v0, "appender":Lorg/apache/log4j/Appender;
    invoke-interface {v0, p2}, Lorg/apache/log4j/Appender;->setName(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 201
    return-void

    .line 192
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    :cond_0
    sget-object v1, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    goto :goto_0
.end method

.method appenderMBeanRegistration()V
    .locals 3

    .prologue
    .line 247
    iget-object v2, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    .line 248
    .local v1, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 250
    .local v0, "appender":Lorg/apache/log4j/Appender;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->registerAppenderMBean(Lorg/apache/log4j/Appender;)V

    goto :goto_0

    .line 252
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    :cond_0
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v2, Ljavax/management/RuntimeOperationsException;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Attribute name cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cannot invoke a getter of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " with null attribute name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v2

    .line 176
    :goto_0
    return-object v2

    .line 167
    :cond_1
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    iget-object v2, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    .line 169
    .local v1, "l":Lorg/apache/log4j/Level;
    if-nez v1, :cond_2

    .line 170
    const/4 v2, 0x0

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {v1}, Lorg/apache/log4j/Priority;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 174
    .end local v1    # "l":Lorg/apache/log4j/Level;
    :cond_3
    const-string v2, "appender="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    :try_start_0
    new-instance v2, Ljavax/management/ObjectName;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "log4j:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not create ObjectName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;)V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v2, Ljavax/management/AttributeNotFoundException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " attribute in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getMBeanInfo()Ljavax/management/MBeanInfo;
    .locals 7

    .prologue
    .line 125
    iget-object v1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v3, v1, [Ljavax/management/MBeanAttributeInfo;

    .line 126
    .local v3, "attribs":[Ljavax/management/MBeanAttributeInfo;
    iget-object v1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    new-instance v0, Ljavax/management/MBeanInfo;

    iget-object v1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dDescription:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dConstructors:[Ljavax/management/MBeanConstructorInfo;

    iget-object v5, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    const/4 v6, 0x0

    new-array v6, v6, [Ljavax/management/MBeanNotificationInfo;

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanAttributeInfo;[Ljavax/management/MBeanConstructorInfo;[Ljavax/management/MBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V

    .line 135
    .local v0, "mb":Ljavax/management/MBeanInfo;
    return-object v0
.end method

.method public handleNotification(Ljavax/management/Notification;Ljava/lang/Object;)V
    .locals 3
    .param p1, "notification"    # Ljavax/management/Notification;
    .param p2, "handback"    # Ljava/lang/Object;

    .prologue
    .line 71
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Received notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/management/Notification;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Ljavax/management/Notification;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->registerAppenderMBean(Lorg/apache/log4j/Appender;)V

    .line 75
    return-void
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "operationName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "signature"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v0, "addAppender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->addAppender(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "Hello world."

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRegister(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "registrationDone"    # Ljava/lang/Boolean;

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->appenderMBeanRegistration()V

    .line 275
    return-void
.end method

.method registerAppenderMBean(Lorg/apache/log4j/Appender;)V
    .locals 13
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 255
    invoke-interface {p1}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "name":Ljava/lang/String;
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Adding AppenderMBean for appender named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 257
    const/4 v10, 0x0

    .line 259
    .local v10, "objectName":Ljavax/management/ObjectName;
    :try_start_0
    new-instance v7, Lorg/apache/log4j/jmx/AppenderDynamicMBean;

    invoke-direct {v7, p1}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;-><init>(Lorg/apache/log4j/Appender;)V

    .line 260
    .local v7, "appenderMBean":Lorg/apache/log4j/jmx/AppenderDynamicMBean;
    new-instance v11, Ljavax/management/ObjectName;

    const-string v0, "log4j"

    const-string v1, "appender"

    invoke-direct {v11, v0, v1, v9}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .local v11, "objectName":Ljavax/management/ObjectName;
    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    invoke-interface {v0, v11}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    invoke-interface {v0, v7, v11}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 263
    iget-object v12, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    new-instance v0, Ljavax/management/MBeanAttributeInfo;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "appender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javax.management.ObjectName"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " appender."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v10, v11

    .line 270
    .end local v7    # "appenderMBean":Lorg/apache/log4j/jmx/AppenderDynamicMBean;
    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 268
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not add appenderMBean for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 267
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .restart local v7    # "appenderMBean":Lorg/apache/log4j/jmx/AppenderDynamicMBean;
    .restart local v11    # "objectName":Ljavax/management/ObjectName;
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v10, v11

    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    goto :goto_1
.end method

.method public setAttribute(Ljavax/management/Attribute;)V
    .locals 9
    .param p1, "attribute"    # Ljavax/management/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v5, Ljavax/management/RuntimeOperationsException;

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Attribute cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Cannot invoke a setter of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " with null attribute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v5

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/management/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 220
    .local v4, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 221
    new-instance v5, Ljavax/management/RuntimeOperationsException;

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Attribute name cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Cannot invoke the setter of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " with null attribute name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v5

    .line 228
    :cond_1
    const-string v5, "priority"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 229
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 230
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 231
    .local v3, "s":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v5}, Lorg/apache/log4j/Category;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v2

    .line 232
    .local v2, "p":Lorg/apache/log4j/Level;
    const-string v5, "NULL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    const/4 v2, 0x0

    .line 237
    :goto_0
    iget-object v5, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v5, v2}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    .line 244
    .end local v2    # "p":Lorg/apache/log4j/Level;
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    return-void

    .line 235
    .restart local v2    # "p":Lorg/apache/log4j/Level;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_3
    invoke-static {v3, v2}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v2

    goto :goto_0

    .line 240
    .end local v2    # "p":Lorg/apache/log4j/Level;
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljavax/management/AttributeNotFoundException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Attribute "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " not found in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
