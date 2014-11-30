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
    .line 452
    .local p2, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;-><init>(Ljava/lang/Object;)V

    .line 453
    iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    .line 454
    return-void
.end method

.method private final proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 551
    .local v8, "methodName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v10, v14

    .line 552
    .local v10, "parameterCount":I
    const-class v14, Lcom/facebook/model/PropertyName;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/facebook/model/PropertyName;

    .line 554
    .local v12, "propertyNameOverride":Lcom/facebook/model/PropertyName;
    if-eqz v12, :cond_1

    invoke-interface {v12}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 558
    .local v7, "key":Ljava/lang/String;
    :goto_0
    if-nez v10, :cond_2

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 562
    .local v13, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 564
    .local v3, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 565
    .local v4, "genericReturnType":Ljava/lang/reflect/Type;
    const/4 v11, 0x0

    .line 566
    .local v11, "parameterizedReturnType":Ljava/lang/reflect/ParameterizedType;
    instance-of v14, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v14, :cond_0

    .line 567
    move-object v0, v4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v11, v0

    .line 570
    :cond_0
    invoke-static {v13, v3, v11}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    .line 598
    .end local v3    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "genericReturnType":Ljava/lang/reflect/Type;
    .end local v11    # "parameterizedReturnType":Ljava/lang/reflect/ParameterizedType;
    .end local v13    # "value":Ljava/lang/Object;
    :goto_1
    return-object v14

    .line 555
    .end local v7    # "key":Ljava/lang/String;
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_1
    const/4 v14, 0x3

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/facebook/model/GraphObject$Factory;->convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    goto :goto_0

    .line 573
    .restart local v7    # "key":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x1

    if-ne v10, v14, :cond_8

    .line 575
    const/4 v14, 0x0

    aget-object v13, p2, v14

    .line 578
    .restart local v13    # "value":Ljava/lang/Object;
    const-class v14, Lcom/facebook/model/GraphObject;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 579
    check-cast v13, Lcom/facebook/model/GraphObject;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-interface {v13}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v13

    .line 594
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    const/4 v14, 0x0

    goto :goto_1

    .line 580
    .restart local v13    # "value":Ljava/lang/Object;
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_4
    const-class v14, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 581
    check-cast v13, Lcom/facebook/model/GraphObjectList;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-interface {v13}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object v13

    .local v13, "value":Lorg/json/JSONArray;
    goto :goto_2

    .line 582
    .local v13, "value":Ljava/lang/Object;
    :cond_5
    const-class v14, Ljava/lang/Iterable;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 583
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 584
    .local v6, "jsonArray":Lorg/json/JSONArray;
    move-object v0, v13

    check-cast v0, Ljava/lang/Iterable;

    move-object v5, v0

    .line 585
    .local v5, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_6

    .line 592
    move-object v13, v6

    .local v13, "value":Lorg/json/JSONArray;
    goto :goto_2

    .line 585
    .local v13, "value":Ljava/lang/Object;
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 586
    .local v9, "o":Ljava/lang/Object;
    const-class v15, Lcom/facebook/model/GraphObject;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 587
    check-cast v9, Lcom/facebook/model/GraphObject;

    .end local v9    # "o":Ljava/lang/Object;
    invoke-interface {v9}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 589
    .restart local v9    # "o":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 598
    .end local v5    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "o":Ljava/lang/Object;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_1
.end method

.method private final proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 521
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "methodName":Ljava/lang/String;
    const-string v5, "cast"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 524
    aget-object v1, p3, v6

    check-cast v1, Ljava/lang/Class;

    .line 526
    .local v1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    if-eqz v1, :cond_0

    .line 527
    iget-object v5, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 546
    .end local v1    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :goto_0
    return-object v5

    .line 530
    .restart local v1    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_0
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    # invokes: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    invoke-static {v1, p0}, Lcom/facebook/model/GraphObject$Factory;->access$0(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v5

    goto :goto_0

    .line 531
    .end local v1    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_1
    const-string v5, "getInnerJSONObject"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 532
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    .line 533
    .local v2, "handler":Ljava/lang/reflect/InvocationHandler;
    move-object v0, v2

    check-cast v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    move-object v4, v0

    .line 534
    .local v4, "otherProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    iget-object v5, v4, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    goto :goto_0

    .line 535
    .end local v2    # "handler":Ljava/lang/reflect/InvocationHandler;
    .end local v4    # "otherProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_2
    const-string v5, "asMap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 536
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    # invokes: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->access$1(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    .line 537
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_3
    const-string v5, "getProperty"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 538
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    aget-object v5, p3, v6

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 539
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_4
    const-string v5, "setProperty"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 540
    invoke-direct {p0, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 541
    :cond_5
    const-string v5, "removeProperty"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 542
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    aget-object v5, p3, v6

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 543
    const/4 v5, 0x0

    goto :goto_0

    .line 546
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_6
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method private final proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 479
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "methodName":Ljava/lang/String;
    const-string v3, "clear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/facebook/model/JsonUtil;->jsonObjectClear(Lorg/json/JSONObject;)V

    move-object v3, v5

    .line 517
    :goto_0
    return-object v3

    .line 483
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_0
    const-string v3, "containsKey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 485
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_1
    const-string v3, "containsValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    aget-object v3, p2, v4

    invoke-static {p0, v3}, Lcom/facebook/model/JsonUtil;->jsonObjectContainsValue(Lorg/json/JSONObject;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 487
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_2
    const-string v3, "entrySet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 488
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/facebook/model/JsonUtil;->jsonObjectEntrySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    .line 489
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_3
    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 490
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 491
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_4
    const-string v3, "isEmpty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 492
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

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

    .line 493
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_6
    const-string v3, "keySet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 494
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/facebook/model/JsonUtil;->jsonObjectKeySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v3

    goto/16 :goto_0

    .line 495
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_7
    const-string v3, "put"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 496
    invoke-direct {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 497
    :cond_8
    const-string v3, "putAll"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 498
    const/4 v1, 0x0

    .line 499
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-object v3, p2, v4

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_a

    .line 501
    aget-object v0, p2, v4

    check-cast v0, Ljava/util/Map;

    .line 502
    .local v0, "castMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, v0

    .line 506
    .end local v0    # "castMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0, v1}, Lcom/facebook/model/JsonUtil;->jsonObjectPutAll(Lorg/json/JSONObject;Ljava/util/Map;)V

    move-object v3, v5

    .line 507
    goto/16 :goto_0

    .line 503
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_a
    aget-object v3, p2, v4

    instance-of v3, v3, Lcom/facebook/model/GraphObject;

    if-eqz v3, :cond_9

    .line 504
    aget-object v3, p2, v4

    check-cast v3, Lcom/facebook/model/GraphObject;

    invoke-interface {v3}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 508
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    const-string v3, "remove"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 509
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v5

    .line 510
    goto/16 :goto_0

    .line 511
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_c
    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 512
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 513
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_d
    const-string v3, "values"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 514
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/facebook/model/JsonUtil;->jsonObjectValues(Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v3

    goto/16 :goto_0

    .line 517
    .restart local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    :cond_e
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 602
    const/4 v4, 0x0

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    .line 603
    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, p1, v4

    .line 604
    .local v2, "property":Ljava/lang/Object;
    # invokes: Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/model/GraphObject$Factory;->access$2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 606
    .local v3, "value":Ljava/lang/Object;
    :try_start_0
    iget-object p0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    .end local p0    # "this":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    const/4 v4, 0x0

    return-object v4

    .line 607
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 608
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-class v2, Lcom/facebook/model/GraphObject;

    .line 463
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 465
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 466
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 475
    :goto_0
    return-object v1

    .line 467
    :cond_0
    const-class v1, Ljava/util/Map;

    if-ne v0, v1, :cond_1

    .line 468
    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 469
    :cond_1
    const-class v1, Lcom/facebook/model/GraphObject;

    if-ne v0, v2, :cond_2

    .line 470
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 471
    :cond_2
    const-class v1, Lcom/facebook/model/GraphObject;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 472
    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 458
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
