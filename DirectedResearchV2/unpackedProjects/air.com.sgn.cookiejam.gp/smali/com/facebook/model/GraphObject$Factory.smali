.class public final Lcom/facebook/model/GraphObject$Factory;
.super Ljava/lang/Object;
.source "GraphObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/GraphObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;,
        Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;,
        Lcom/facebook/model/GraphObject$Factory$ProxyBase;
    }
.end annotation


# static fields
.field private static final dateFormats:[Ljava/text/SimpleDateFormat;

.field private static final verifiedGraphObjectClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p2, "expectedTypeAsParameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")TU;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    if-nez p0, :cond_3

    .line 301
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 303
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 392
    .end local p1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    .end local p2    # "expectedTypeAsParameterizedType":Ljava/lang/reflect/ParameterizedType;
    :goto_0
    return-object p0

    .line 305
    .restart local p1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    .restart local p2    # "expectedTypeAsParameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 307
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    .line 308
    .local p0, "result":Ljava/lang/Character;, "TU;"
    goto :goto_0

    .line 309
    .end local p0    # "result":Ljava/lang/Character;, "TU;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 311
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 312
    .local p0, "result":Ljava/lang/Integer;, "TU;"
    goto :goto_0

    .line 314
    .end local p0    # "result":Ljava/lang/Integer;, "TU;"
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 318
    .local p0, "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 319
    .local v4, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    move-object p0, p0

    .line 322
    .local p0, "result":Ljava/lang/Object;, "TU;"
    goto :goto_0

    .line 325
    .local p0, "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 328
    move-object p0, p0

    .line 329
    .local p0, "result":Ljava/lang/Object;, "TU;"
    goto :goto_0

    .line 332
    .local p0, "value":Ljava/lang/Object;
    :cond_5
    const-class v1, Lcom/facebook/model/GraphObject;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 334
    move-object p1, p1

    .line 337
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    const-class p2, Lorg/json/JSONObject;

    .end local p2    # "expectedTypeAsParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 340
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p1, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    .line 341
    .local p0, "result":Lcom/facebook/model/GraphObject;, "TU;"
    goto :goto_0

    .line 342
    .local p0, "value":Ljava/lang/Object;
    :cond_6
    const-class p2, Lcom/facebook/model/GraphObject;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 345
    check-cast p0, Lcom/facebook/model/GraphObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object p0

    .line 346
    .local p0, "result":Lcom/facebook/model/GraphObject;, "TU;"
    goto :goto_0

    .line 348
    .local p0, "value":Ljava/lang/Object;
    :cond_7
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    .end local p0    # "value":Ljava/lang/Object;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t create GraphObject from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 350
    .restart local p0    # "value":Ljava/lang/Object;
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    .restart local p2    # "expectedTypeAsParameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_8
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-class v1, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 352
    :cond_9
    if-nez p2, :cond_a

    .line 353
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    .end local p0    # "value":Ljava/lang/Object;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2    # "expectedTypeAsParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t infer generic type of: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    .restart local p0    # "value":Ljava/lang/Object;
    .restart local p1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    .restart local p2    # "expectedTypeAsParameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_a
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 358
    .local p1, "actualTypeArguments":[Ljava/lang/reflect/Type;
    if-eqz p1, :cond_b

    array-length p2, p1

    .end local p2    # "expectedTypeAsParameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_b

    const/4 p2, 0x0

    aget-object p2, p1, p2

    instance-of p2, p2, Ljava/lang/Class;

    if-nez p2, :cond_c

    .line 360
    :cond_b
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    .end local p0    # "value":Ljava/lang/Object;
    const-string p1, "Expect collection properties to be of a type with exactly one generic parameter."

    .end local p1    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 363
    .restart local p0    # "value":Ljava/lang/Object;
    .restart local p1    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    :cond_c
    const/4 p2, 0x0

    aget-object p1, p1, p2

    .end local p1    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    check-cast p1, Ljava/lang/Class;

    .line 365
    .local p1, "collectionGenericArgument":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class p2, Lorg/json/JSONArray;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 366
    check-cast p0, Lorg/json/JSONArray;

    .line 368
    .local p0, "jsonArray":Lorg/json/JSONArray;
    invoke-static {p0, p1}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object p0

    .line 369
    .local p0, "result":Lcom/facebook/model/GraphObjectList;, "TU;"
    goto/16 :goto_0

    .line 371
    .local p0, "value":Ljava/lang/Object;
    :cond_d
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    .end local p0    # "value":Ljava/lang/Object;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "collectionGenericArgument":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t create Collection from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    .restart local p0    # "value":Ljava/lang/Object;
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    .restart local p2    # "expectedTypeAsParameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_e
    const-class p2, Ljava/lang/String;

    .end local p2    # "expectedTypeAsParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 374
    const-class p2, Ljava/lang/Double;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_f

    const-class p2, Ljava/lang/Float;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 377
    :cond_f
    const-string p1, "%f"

    .end local p1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 378
    .local p0, "result":Ljava/lang/String;, "TU;"
    goto/16 :goto_0

    .line 379
    .local p0, "value":Ljava/lang/Object;
    .restart local p1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    :cond_10
    const-class p2, Ljava/lang/Number;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 381
    const-string p1, "%d"

    .end local p1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 382
    .local p0, "result":Ljava/lang/String;, "TU;"
    goto/16 :goto_0

    .line 384
    .local p0, "value":Ljava/lang/Object;
    .restart local p1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    :cond_11
    const-class p2, Ljava/util/Date;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 385
    const-class p2, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 386
    sget-object p2, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    .local p2, "arr$":[Ljava/text/SimpleDateFormat;
    array-length v3, p2

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_13

    aget-object v1, p2, v2

    .line 388
    .local v1, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 389
    .local v1, "date":Ljava/util/Date;
    if-eqz v1, :cond_12

    .line 391
    move-object p0, v1

    .line 392
    .local p0, "result":Ljava/util/Date;, "TU;"
    goto/16 :goto_0

    .line 394
    .local v1, "format":Ljava/text/SimpleDateFormat;
    .local p0, "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 386
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    :cond_12
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i$":I
    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_1

    .line 400
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local p2    # "arr$":[Ljava/text/SimpleDateFormat;
    :cond_13
    new-instance p0, Lcom/facebook/FacebookGraphObjectException;

    .end local p0    # "value":Ljava/lang/Object;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t convert type"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 405
    const-string v0, "([a-z])([A-Z])"

    const-string v1, "$1_$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 406
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 154
    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 130
    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-static {p0, v0}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method private static createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .locals 4
    .param p1, "state"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->verifyCanProxyClass(Ljava/lang/Class;)V

    .line 218
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 219
    .local v2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    invoke-direct {v1, p1, p0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 222
    .local v1, "graphObjectProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    const-class v3, Lcom/facebook/model/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 224
    .local v0, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    return-object v0
.end method

.method private static createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .param p0, "state"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v5, Ljava/util/Map;

    .line 228
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Map;

    aput-object v5, v2, v3

    .line 229
    .local v2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    const-class v3, Ljava/util/Map;

    invoke-direct {v1, p0, v5}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 232
    .local v1, "graphObjectProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    const-class v3, Lcom/facebook/model/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 235
    .local v0, "graphObject":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method public static createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, p0}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    return-object v0
.end method

.method public static createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .locals 1
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const-class v9, Lcom/facebook/model/GraphObject;

    .line 410
    if-nez p0, :cond_0

    .line 411
    const/4 v8, 0x0

    .line 433
    :goto_0
    return-object v8

    .line 414
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 415
    .local v7, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lcom/facebook/model/GraphObject;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 416
    move-object v0, p0

    check-cast v0, Lcom/facebook/model/GraphObject;

    move-object v1, v0

    .line 417
    .local v1, "graphObject":Lcom/facebook/model/GraphObject;
    invoke-interface {v1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_0

    .line 418
    .end local v1    # "graphObject":Lcom/facebook/model/GraphObject;
    :cond_1
    const-class v8, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 419
    move-object v0, p0

    check-cast v0, Lcom/facebook/model/GraphObjectList;

    move-object v2, v0

    .line 420
    .local v2, "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<*>;"
    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object v8

    goto :goto_0

    .line 421
    .end local v2    # "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<*>;"
    :cond_2
    const-class v8, Ljava/lang/Iterable;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 422
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 423
    .local v5, "jsonArray":Lorg/json/JSONArray;
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    move-object v4, v0

    .line 424
    .local v4, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 425
    .local v6, "o":Ljava/lang/Object;
    const-class v8, Lcom/facebook/model/GraphObject;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 426
    check-cast v6, Lcom/facebook/model/GraphObject;

    .end local v6    # "o":Ljava/lang/Object;
    invoke-interface {v6}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 428
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .end local v6    # "o":Ljava/lang/Object;
    :cond_4
    move-object v8, v5

    .line 431
    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_5
    move-object v8, p0

    .line 433
    goto :goto_0
.end method

.method private static declared-synchronized hasClassBeenVerified(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/facebook/model/GraphObject$Factory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static hasSameId(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;)Z
    .locals 6
    .param p0, "a"    # Lcom/facebook/model/GraphObject;
    .param p1, "b"    # Lcom/facebook/model/GraphObject;

    .prologue
    const/4 v5, 0x0

    const-string v4, "id"

    .line 176
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v5

    .line 187
    :goto_0
    return v2

    .line 179
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const/4 v2, 0x1

    goto :goto_0

    .line 182
    :cond_2
    const-string v2, "id"

    invoke-interface {p0, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "idA":Ljava/lang/Object;
    const-string v2, "id"

    invoke-interface {p1, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, "idB":Ljava/lang/Object;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_3
    move v2, v5

    .line 185
    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static declared-synchronized recordClassHasBeenVerified(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/facebook/model/GraphObject$Factory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit v0

    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static verifyCanProxyClass(Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v12, 0x3

    const-class v11, Lcom/facebook/model/PropertyName;

    .line 247
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->hasClassBeenVerified(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 294
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    if-nez v9, :cond_1

    .line 252
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Factory can only wrap interfaces, not class: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 256
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 257
    .local v6, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_8

    aget-object v4, v0, v2

    .line 258
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v7, v9

    .line 260
    .local v7, "parameterCount":I
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 261
    .local v8, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Lcom/facebook/model/PropertyName;

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    .line 263
    .local v1, "hasPropertyNameOverride":Z
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/facebook/model/GraphObject;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 257
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 266
    :cond_3
    const/4 v9, 0x1

    if-ne v7, v9, :cond_6

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_6

    .line 267
    if-eqz v1, :cond_5

    .line 270
    const-class v9, Lcom/facebook/model/PropertyName;

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/facebook/model/PropertyName;

    invoke-interface {v9}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 290
    :cond_4
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Factory can\'t proxy method: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 273
    :cond_5
    const-string v9, "set"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_4

    goto :goto_2

    .line 277
    :cond_6
    if-nez v7, :cond_4

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_4

    .line 278
    if-eqz v1, :cond_7

    .line 281
    const-class v9, Lcom/facebook/model/PropertyName;

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/facebook/model/PropertyName;

    invoke-interface {v9}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    .line 284
    :cond_7
    const-string v9, "get"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_4

    goto :goto_2

    .line 293
    .end local v1    # "hasPropertyNameOverride":Z
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v7    # "parameterCount":I
    .end local v8    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->recordClassHasBeenVerified(Ljava/lang/Class;)V

    goto/16 :goto_0
.end method
