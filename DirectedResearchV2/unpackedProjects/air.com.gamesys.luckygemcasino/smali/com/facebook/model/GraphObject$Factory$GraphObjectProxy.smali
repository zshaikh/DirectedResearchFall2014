.class final Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
.super Lcom/facebook/model/GraphObject$Factory$ProxyBase;
.source "GraphObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/GraphObject$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GraphObjectProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/model/GraphObject$Factory$ProxyBase",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final CASTTOMAP_METHOD:Ljava/lang/String; = "asMap"

.field private static final CAST_METHOD:Ljava/lang/String; = "cast"

.field private static final CLEAR_METHOD:Ljava/lang/String; = "clear"

.field private static final CONTAINSKEY_METHOD:Ljava/lang/String; = "containsKey"

.field private static final CONTAINSVALUE_METHOD:Ljava/lang/String; = "containsValue"

.field private static final ENTRYSET_METHOD:Ljava/lang/String; = "entrySet"

.field private static final GETINNERJSONOBJECT_METHOD:Ljava/lang/String; = "getInnerJSONObject"

.field private static final GETPROPERTYASLIST_METHOD:Ljava/lang/String; = "getPropertyAsList"

.field private static final GETPROPERTYAS_METHOD:Ljava/lang/String; = "getPropertyAs"

.field private static final GETPROPERTY_METHOD:Ljava/lang/String; = "getProperty"

.field private static final GET_METHOD:Ljava/lang/String; = "get"

.field private static final ISEMPTY_METHOD:Ljava/lang/String; = "isEmpty"

.field private static final KEYSET_METHOD:Ljava/lang/String; = "keySet"

.field private static final PUTALL_METHOD:Ljava/lang/String; = "putAll"

.field private static final PUT_METHOD:Ljava/lang/String; = "put"

.field private static final REMOVEPROPERTY_METHOD:Ljava/lang/String; = "removeProperty"

.field private static final REMOVE_METHOD:Ljava/lang/String; = "remove"

.field private static final SETPROPERTY_METHOD:Ljava/lang/String; = "setProperty"

.field private static final SIZE_METHOD:Ljava/lang/String; = "size"

.field private static final VALUES_METHOD:Ljava/lang/String; = "values"


# instance fields
.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 0
    .param p1, "state"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p2, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;-><init>(Ljava/lang/Object;)V

    .line 515
    iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    .line 516
    return-void
.end method

.method private createGraphObjectsFromParameters(Lcom/facebook/model/CreateGraphObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "createGraphObject"    # Lcom/facebook/model/CreateGraphObject;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 640
    if-eqz p1, :cond_0

    .line 641
    invoke-interface {p1}, Lcom/facebook/model/CreateGraphObject;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 642
    invoke-interface {p1}, Lcom/facebook/model/CreateGraphObject;->value()Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "propertyName":Ljava/lang/String;
    const-class v5, Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 644
    const-class v5, Lcom/facebook/model/GraphObject;

    invoke-static {v5}, Lcom/facebook/model/GraphObject$Factory;->createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v1

    .local v1, "graphObjects":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    move-object v4, p2

    .line 646
    check-cast v4, Ljava/util/List;

    .line 647
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 653
    move-object p2, v1

    .line 662
    .end local v1    # "graphObjects":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object p2

    .line 647
    .restart local v1    # "graphObjects":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    .restart local v3    # "propertyName":Ljava/lang/String;
    .restart local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 648
    .local v2, "obj":Ljava/lang/Object;
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v0

    .line 649
    .local v0, "graphObject":Lcom/facebook/model/GraphObject;
    invoke-interface {v0, v3, v2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    invoke-interface {v1, v0}, Lcom/facebook/model/GraphObjectList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 655
    .end local v0    # "graphObject":Lcom/facebook/model/GraphObject;
    .end local v1    # "graphObjects":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v0

    .line 656
    .restart local v0    # "graphObject":Lcom/facebook/model/GraphObject;
    invoke-interface {v0, v3, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 658
    move-object p2, v0

    .local p2, "value":Lcom/facebook/model/GraphObject;
    goto :goto_1
.end method

.method private final proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 666
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, "methodName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v5, v9

    .line 668
    .local v5, "parameterCount":I
    const-class v9, Lcom/facebook/model/PropertyName;

    invoke-virtual {p1, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/facebook/model/PropertyName;

    .line 670
    .local v7, "propertyNameOverride":Lcom/facebook/model/PropertyName;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "key":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_2

    .line 676
    iget-object v9, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONObject;

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 678
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 680
    .local v1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 681
    .local v2, "genericReturnType":Ljava/lang/reflect/Type;
    const/4 v6, 0x0

    .line 682
    .local v6, "parameterizedReturnType":Ljava/lang/reflect/ParameterizedType;
    instance-of v9, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_0

    move-object v6, v2

    .line 683
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 686
    :cond_0
    invoke-static {v8, v1, v6}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v8

    .line 701
    .end local v1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "genericReturnType":Ljava/lang/reflect/Type;
    .end local v6    # "parameterizedReturnType":Ljava/lang/reflect/ParameterizedType;
    .end local v8    # "value":Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 671
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/model/GraphObject$Factory;->convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 689
    .restart local v3    # "key":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 691
    const-class v9, Lcom/facebook/model/CreateGraphObject;

    invoke-virtual {p1, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/CreateGraphObject;

    .line 692
    .local v0, "createGraphObjectAnnotation":Lcom/facebook/model/CreateGraphObject;
    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-direct {p0, v0, v9}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->createGraphObjectsFromParameters(Lcom/facebook/model/CreateGraphObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 696
    .restart local v8    # "value":Ljava/lang/Object;
    # invokes: Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v8}, Lcom/facebook/model/GraphObject$Factory;->access$2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 697
    iget-object v9, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONObject;

    invoke-virtual {v9, v3, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const/4 v8, 0x0

    goto :goto_1

    .line 701
    .end local v0    # "createGraphObjectAnnotation":Lcom/facebook/model/CreateGraphObject;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1
.end method

.method private final proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 585
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "methodName":Ljava/lang/String;
    const-string v7, "cast"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 588
    aget-object v1, p3, v8

    check-cast v1, Ljava/lang/Class;

    .line 590
    .local v1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    if-eqz v1, :cond_0

    .line 591
    iget-object v7, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 636
    .end local v1    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    .end local p1    # "proxy":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 594
    .restart local v1    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    .restart local p1    # "proxy":Ljava/lang/Object;
    :cond_0
    iget-object v7, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    # invokes: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    invoke-static {v1, v7}, Lcom/facebook/model/GraphObject$Factory;->access$0(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object p1

    goto :goto_0

    .line 595
    .end local v1    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    :cond_1
    const-string v7, "getInnerJSONObject"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 596
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    .local v2, "handler":Ljava/lang/reflect/InvocationHandler;
    move-object v4, v2

    .line 597
    check-cast v4, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    .line 598
    .local v4, "otherProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    iget-object p1, v4, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    goto :goto_0

    .line 599
    .end local v2    # "handler":Ljava/lang/reflect/InvocationHandler;
    .end local v4    # "otherProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_2
    const-string v7, "asMap"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 600
    iget-object v7, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    # invokes: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    invoke-static {v7}, Lcom/facebook/model/GraphObject$Factory;->access$1(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 601
    :cond_3
    const-string v7, "getProperty"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 602
    iget-object v7, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    aget-object v8, p3, v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 603
    :cond_4
    const-string v7, "getPropertyAs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 604
    iget-object v7, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    aget-object v8, p3, v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 605
    .local v6, "value":Ljava/lang/Object;
    aget-object v0, p3, v10

    check-cast v0, Ljava/lang/Class;

    .line 607
    .local v0, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6, v0, v9}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 608
    .end local v0    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    const-string v7, "getPropertyAsList"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 609
    iget-object v7, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    aget-object v8, p3, v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 610
    .restart local v6    # "value":Ljava/lang/Object;
    aget-object v0, p3, v10

    check-cast v0, Ljava/lang/Class;

    .line 612
    .restart local v0    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;

    invoke-direct {v5, p0, v0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;-><init>(Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;Ljava/lang/Class;)V

    .line 628
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const-class v7, Lcom/facebook/model/GraphObjectList;

    invoke-static {v6, v7, v5}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    .line 629
    .end local v0    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_6
    const-string v7, "setProperty"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 630
    invoke-direct {p0, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    .line 631
    :cond_7
    const-string v7, "removeProperty"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 632
    iget-object v7, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    aget-object v8, p3, v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, v9

    .line 633
    goto/16 :goto_0

    .line 636
    :cond_8
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private final proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 541
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "methodName":Ljava/lang/String;
    const-string v3, "clear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/model/JsonUtil;->jsonObjectClear(Lorg/json/JSONObject;)V

    move-object v3, v5

    .line 581
    :goto_0
    return-object v3

    .line 545
    :cond_0
    const-string v3, "containsKey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 547
    :cond_1
    const-string v3, "containsValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    aget-object v4, p2, v4

    invoke-static {v3, v4}, Lcom/facebook/model/JsonUtil;->jsonObjectContainsValue(Lorg/json/JSONObject;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 549
    :cond_2
    const-string v3, "entrySet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 550
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/model/JsonUtil;->jsonObjectEntrySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    .line 551
    :cond_3
    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 552
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 553
    :cond_4
    const-string v3, "isEmpty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 554
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 555
    :cond_6
    const-string v3, "keySet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 556
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/model/JsonUtil;->jsonObjectKeySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v3

    goto/16 :goto_0

    .line 557
    :cond_7
    const-string v3, "put"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 558
    invoke-direct {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 559
    :cond_8
    const-string v3, "putAll"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 560
    const/4 v1, 0x0

    .line 561
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-object v3, p2, v4

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_9

    .line 563
    aget-object v0, p2, v4

    check-cast v0, Ljava/util/Map;

    .line 564
    .local v0, "castMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, v0

    .line 570
    .end local v0    # "castMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3, v1}, Lcom/facebook/model/JsonUtil;->jsonObjectPutAll(Lorg/json/JSONObject;Ljava/util/Map;)V

    move-object v3, v5

    .line 571
    goto/16 :goto_0

    .line 565
    :cond_9
    aget-object v3, p2, v4

    instance-of v3, v3, Lcom/facebook/model/GraphObject;

    if-eqz v3, :cond_a

    .line 566
    aget-object v3, p2, v4

    check-cast v3, Lcom/facebook/model/GraphObject;

    invoke-interface {v3}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v1

    .line 567
    goto :goto_1

    :cond_a
    move-object v3, v5

    .line 568
    goto/16 :goto_0

    .line 572
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    const-string v3, "remove"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 573
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v5

    .line 574
    goto/16 :goto_0

    .line 575
    :cond_c
    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 576
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 577
    :cond_d
    const-string v3, "values"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 578
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/model/JsonUtil;->jsonObjectValues(Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v3

    goto/16 :goto_0

    .line 581
    :cond_e
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 705
    const/4 v4, 0x0

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    .line 706
    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, p1, v4

    .line 707
    .local v2, "property":Ljava/lang/Object;
    # invokes: Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/model/GraphObject$Factory;->access$2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 709
    .local v3, "value":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    const/4 v4, 0x0

    return-object v4

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 527
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 528
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 537
    :goto_0
    return-object v1

    .line 529
    :cond_0
    const-class v1, Ljava/util/Map;

    if-ne v0, v1, :cond_1

    .line 530
    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 531
    :cond_1
    const-class v1, Lcom/facebook/model/GraphObject;

    if-ne v0, v1, :cond_2

    .line 532
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 533
    :cond_2
    const-class v1, Lcom/facebook/model/GraphObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 534
    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 537
    :cond_3
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 520
    const-string v0, "GraphObject{graphObjectClass=%s, state=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
