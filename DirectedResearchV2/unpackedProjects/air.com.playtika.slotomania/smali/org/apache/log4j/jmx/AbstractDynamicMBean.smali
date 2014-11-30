.class public abstract Lorg/apache/log4j/jmx/AbstractDynamicMBean;
.super Ljava/lang/Object;
.source "AbstractDynamicMBean.java"

# interfaces
.implements Ljavax/management/DynamicMBean;
.implements Ljavax/management/MBeanRegistration;


# instance fields
.field dClassName:Ljava/lang/String;

.field server:Ljavax/management/MBeanServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation
.end method

.method public getAttributes([Ljava/lang/String;)Ljavax/management/AttributeList;
    .locals 8
    .param p1, "attributeNames"    # [Ljava/lang/String;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v4, Ljavax/management/RuntimeOperationsException;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "attributeNames[] cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Cannot invoke a getter of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v4

    .line 51
    :cond_0
    new-instance v2, Ljavax/management/AttributeList;

    invoke-direct {v2}, Ljavax/management/AttributeList;-><init>()V

    .line 54
    .local v2, "resultList":Ljavax/management/AttributeList;
    array-length v4, p1

    if-nez v4, :cond_2

    .line 66
    :cond_1
    return-object v2

    .line 58
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 60
    :try_start_0
    aget-object v4, p1, v1

    invoke-interface {p0, v4}, Ljavax/management/DynamicMBean;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    .local v3, "value":Ljava/lang/Object;
    new-instance v4, Ljavax/management/Attribute;

    aget-object v5, p1, v1

    invoke-direct {v4, v5, v3}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected abstract getLogger()Lorg/apache/log4j/Logger;
.end method

.method public abstract getMBeanInfo()Ljavax/management/MBeanInfo;
.end method

.method public abstract invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation
.end method

.method public postDeregister()V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "postDeregister is called."

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public postRegister(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "registrationDone"    # Ljava/lang/Boolean;

    .prologue
    .line 113
    return-void
.end method

.method public preDeregister()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "preDeregister called."

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public preRegister(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;)Ljavax/management/ObjectName;
    .locals 3
    .param p1, "server"    # Ljavax/management/MBeanServer;
    .param p2, "name"    # Ljavax/management/ObjectName;

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "preRegister called. Server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 125
    iput-object p1, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    .line 126
    return-object p2
.end method

.method public abstract setAttribute(Ljavax/management/Attribute;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation
.end method

.method public setAttributes(Ljavax/management/AttributeList;)Ljavax/management/AttributeList;
    .locals 10
    .param p1, "attributes"    # Ljavax/management/AttributeList;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v6, Ljavax/management/RuntimeOperationsException;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "AttributeList attributes cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Cannot invoke a setter of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v6

    .line 81
    :cond_0
    new-instance v4, Ljavax/management/AttributeList;

    invoke-direct {v4}, Ljavax/management/AttributeList;-><init>()V

    .line 84
    .local v4, "resultList":Ljavax/management/AttributeList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 99
    :cond_1
    return-object v4

    .line 88
    :cond_2
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/management/Attribute;

    .line 91
    .local v0, "attr":Ljavax/management/Attribute;
    :try_start_0
    invoke-interface {p0, v0}, Ljavax/management/DynamicMBean;->setAttribute(Ljavax/management/Attribute;)V

    .line 92
    invoke-virtual {v0}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljavax/management/DynamicMBean;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 94
    .local v5, "value":Ljava/lang/Object;
    new-instance v6, Ljavax/management/Attribute;

    invoke-direct {v6, v3, v5}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
