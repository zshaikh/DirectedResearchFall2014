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
    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    .line 125
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 126
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

    .line 124
    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    .line 126
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic access$0(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 226
    invoke-static {p0, p1}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 238
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 420
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .locals 13
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
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 311
    if-nez p0, :cond_3

    .line 312
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 314
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 403
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 316
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 318
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    .line 319
    .local v7, "result":Ljava/lang/Character;, "TU;"
    goto :goto_0

    .line 320
    .end local v7    # "result":Ljava/lang/Character;, "TU;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 322
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 323
    .local v7, "result":Ljava/lang/Integer;, "TU;"
    goto :goto_0

    .line 325
    .end local v7    # "result":Ljava/lang/Integer;, "TU;"
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 330
    .local v8, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 332
    move-object v7, p0

    .line 333
    .local v7, "result":Ljava/lang/Object;, "TU;"
    goto :goto_0

    .line 336
    .end local v7    # "result":Ljava/lang/Object;, "TU;"
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 339
    move-object v7, p0

    .line 340
    .restart local v7    # "result":Ljava/lang/Object;, "TU;"
    goto :goto_0

    .line 343
    .end local v7    # "result":Ljava/lang/Object;, "TU;"
    :cond_5
    const-class v10, Lcom/facebook/model/GraphObject;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 345
    move-object v5, p1

    .line 348
    .local v5, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    const-class v9, Lorg/json/JSONObject;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 351
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {v5, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v7

    .line 352
    .local v7, "result":Lcom/facebook/model/GraphObject;, "TU;"
    goto :goto_0

    .line 353
    .end local v7    # "result":Lcom/facebook/model/GraphObject;, "TU;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_6
    const-class v9, Lcom/facebook/model/GraphObject;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 356
    check-cast p0, Lcom/facebook/model/GraphObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0, v5}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v7

    .line 357
    .restart local v7    # "result":Lcom/facebook/model/GraphObject;, "TU;"
    goto :goto_0

    .line 359
    .end local v7    # "result":Lcom/facebook/model/GraphObject;, "TU;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t create GraphObject from "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 361
    .end local v5    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    :cond_8
    const-class v10, Ljava/lang/Iterable;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-class v10, Ljava/util/Collection;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 362
    const-class v10, Ljava/util/List;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-class v10, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 363
    :cond_9
    if-nez p2, :cond_a

    .line 364
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "can\'t infer generic type of: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 367
    :cond_a
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 369
    .local v1, "actualTypeArguments":[Ljava/lang/reflect/Type;
    if-eqz v1, :cond_b

    array-length v10, v1

    if-ne v10, v11, :cond_b

    .line 370
    aget-object v10, v1, v9

    instance-of v10, v10, Ljava/lang/Class;

    if-nez v10, :cond_c

    .line 371
    :cond_b
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    .line 372
    const-string v10, "Expect collection properties to be of a type with exactly one generic parameter."

    .line 371
    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 374
    :cond_c
    aget-object v2, v1, v9

    check-cast v2, Ljava/lang/Class;

    .line 376
    .local v2, "collectionGenericArgument":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Lorg/json/JSONArray;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_d

    move-object v6, p0

    .line 377
    check-cast v6, Lorg/json/JSONArray;

    .line 379
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-static {v6, v2}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v7

    .line 380
    .local v7, "result":Lcom/facebook/model/GraphObjectList;, "TU;"
    goto/16 :goto_0

    .line 382
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "result":Lcom/facebook/model/GraphObjectList;, "TU;"
    :cond_d
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t create Collection from "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 384
    .end local v1    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    .end local v2    # "collectionGenericArgument":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    const-class v10, Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 385
    const-class v10, Ljava/lang/Double;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 386
    const-class v10, Ljava/lang/Float;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 388
    :cond_f
    const-string v10, "%f"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "result":Ljava/lang/String;, "TU;"
    goto/16 :goto_0

    .line 390
    .end local v7    # "result":Ljava/lang/String;, "TU;"
    :cond_10
    const-class v10, Ljava/lang/Number;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 392
    const-string v10, "%d"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 393
    .restart local v7    # "result":Ljava/lang/String;, "TU;"
    goto/16 :goto_0

    .line 395
    .end local v7    # "result":Ljava/lang/String;, "TU;"
    :cond_11
    const-class v10, Ljava/util/Date;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 396
    const-class v10, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 397
    sget-object v11, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    array-length v12, v11

    move v10, v9

    :goto_1
    if-lt v10, v12, :cond_13

    .line 411
    :cond_12
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t convert type"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 412
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 411
    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 397
    :cond_13
    aget-object v4, v11, v10

    .line 399
    .local v4, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 400
    .local v3, "date":Ljava/util/Date;
    if-eqz v3, :cond_14

    .line 402
    move-object v7, v3

    .line 403
    .local v7, "result":Ljava/util/Date;, "TU;"
    goto/16 :goto_0

    .line 405
    .end local v3    # "date":Ljava/util/Date;
    .end local v7    # "result":Ljava/util/Date;, "TU;"
    :catch_0
    move-exception v9

    .line 397
    :cond_14
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1
.end method

.method static convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string v0, "([a-z])([A-Z])"

    const-string v1, "$1_$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 417
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 165
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
    .line 177
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
    .line 141
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
    .line 154
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
    .line 227
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->verifyCanProxyClass(Ljava/lang/Class;)V

    .line 229
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 230
    .local v2, "interfaces":[Ljava/lang/Class;
    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    invoke-direct {v1, p1, p0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 233
    .local v1, "graphObjectProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    const-class v3, Lcom/facebook/model/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 235
    .local v0, "graphObject":Lcom/facebook/model/GraphObject;, "TT;"
    return-object v0
.end method

.method private static createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
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
    .line 239
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    .line 240
    .local v2, "interfaces":[Ljava/lang/Class;
    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    const-class v3, Ljava/util/Map;

    invoke-direct {v1, p0, v3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 244
    .local v1, "graphObjectProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    const-class v3, Lcom/facebook/model/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    check-cast v0, Ljava/util/Map;

    .line 246
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
    .line 223
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
    .line 211
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 421
    if-nez p0, :cond_1

    .line 422
    const/4 v3, 0x0

    .line 444
    :cond_0
    :goto_0
    return-object v3

    .line 425
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 426
    .local v5, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/facebook/model/GraphObject;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, p0

    .line 427
    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 428
    .local v0, "graphObject":Lcom/facebook/model/GraphObject;
    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    .line 429
    .end local v0    # "graphObject":Lcom/facebook/model/GraphObject;
    :cond_2
    const-class v6, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v1, p0

    .line 430
    check-cast v1, Lcom/facebook/model/GraphObjectList;

    .line 431
    .local v1, "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<*>;"
    invoke-interface {v1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_0

    .line 432
    .end local v1    # "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<*>;"
    :cond_3
    const-class v6, Ljava/lang/Iterable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 433
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .local v3, "jsonArray":Lorg/json/JSONArray;
    move-object v2, p0

    .line 434
    check-cast v2, Ljava/lang/Iterable;

    .line 435
    .local v2, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 436
    .local v4, "o":Ljava/lang/Object;
    const-class v7, Lcom/facebook/model/GraphObject;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 437
    check-cast v4, Lcom/facebook/model/GraphObject;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-interface {v4}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 439
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .end local v2    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_5
    move-object v3, p0

    .line 444
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
    .line 250
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Lcom/facebook/model/GraphObject$Factory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasSameId(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;)Z
    .locals 5
    .param p0, "a"    # Lcom/facebook/model/GraphObject;
    .param p1, "b"    # Lcom/facebook/model/GraphObject;

    .prologue
    const/4 v2, 0x0

    .line 187
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 190
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    const/4 v2, 0x1

    goto :goto_0

    .line 193
    :cond_2
    const-string v3, "id"

    invoke-interface {p0, v3}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "idA":Ljava/lang/Object;
    const-string v3, "id"

    invoke-interface {p1, v3}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, "idB":Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 198
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
    .line 254
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Lcom/facebook/model/GraphObject$Factory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit v1

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static verifyCanProxyClass(Ljava/lang/Class;)V
    .locals 11
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
    const/4 v10, 0x3

    .line 258
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->hasClassBeenVerified(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_1

    .line 263
    new-instance v6, Lcom/facebook/FacebookGraphObjectException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Factory can only wrap interfaces, not class: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-direct {v6, v7}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 267
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 268
    .local v3, "methods":[Ljava/lang/reflect/Method;
    array-length v8, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-lt v7, v8, :cond_2

    .line 304
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->recordClassHasBeenVerified(Ljava/lang/Class;)V

    goto :goto_0

    .line 268
    :cond_2
    aget-object v1, v3, v7

    .line 269
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "methodName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v4, v6

    .line 271
    .local v4, "parameterCount":I
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 272
    .local v5, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/facebook/model/PropertyName;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    .line 274
    .local v0, "hasPropertyNameOverride":Z
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    const-class v9, Lcom/facebook/model/GraphObject;

    invoke-virtual {v6, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 268
    :cond_3
    :goto_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 277
    :cond_4
    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_7

    .line 278
    if-eqz v0, :cond_6

    .line 281
    const-class v6, Lcom/facebook/model/PropertyName;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/facebook/model/PropertyName;

    invoke-interface {v6}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 301
    :cond_5
    new-instance v6, Lcom/facebook/FacebookGraphObjectException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Factory can\'t proxy method: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 284
    :cond_6
    const-string v6, "set"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_5

    goto :goto_2

    .line 288
    :cond_7
    if-nez v4, :cond_5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_5

    .line 289
    if-eqz v0, :cond_8

    .line 292
    const-class v6, Lcom/facebook/model/PropertyName;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/facebook/model/PropertyName;

    invoke-interface {v6}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 295
    :cond_8
    const-string v6, "get"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_5

    goto :goto_2
.end method
