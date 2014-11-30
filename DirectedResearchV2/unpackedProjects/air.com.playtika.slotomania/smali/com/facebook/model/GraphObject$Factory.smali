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
    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    .line 94
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 95
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

    .line 93
    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    .line 91
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$0(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 195
    invoke-static {p0, p1}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 207
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .locals 14
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
    const/4 v10, 0x1

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    const-class v11, Lcom/facebook/model/GraphObject;

    .line 280
    if-nez p0, :cond_0

    .line 281
    const/4 v9, 0x0

    .line 358
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v9

    .line 284
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 285
    .local v8, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 287
    move-object v7, p0

    .local v7, "result":Ljava/lang/Object;, "TU;"
    move-object v9, v7

    .line 288
    goto :goto_0

    .line 291
    .end local v7    # "result":Ljava/lang/Object;, "TU;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 294
    move-object v7, p0

    .restart local v7    # "result":Ljava/lang/Object;, "TU;"
    move-object v9, v7

    .line 295
    goto :goto_0

    .line 298
    .end local v7    # "result":Ljava/lang/Object;, "TU;"
    :cond_2
    const-class v9, Lcom/facebook/model/GraphObject;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 300
    move-object v5, p1

    .line 303
    .local v5, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    const-class v9, Lorg/json/JSONObject;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 306
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {v5, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v7

    .local v7, "result":Lcom/facebook/model/GraphObject;, "TU;"
    move-object v9, v7

    .line 307
    goto :goto_0

    .line 308
    .end local v7    # "result":Lcom/facebook/model/GraphObject;, "TU;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-class v9, Lcom/facebook/model/GraphObject;

    invoke-virtual {v11, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 311
    check-cast p0, Lcom/facebook/model/GraphObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0, v5}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v7

    .restart local v7    # "result":Lcom/facebook/model/GraphObject;, "TU;"
    move-object v9, v7

    .line 312
    goto :goto_0

    .line 314
    .end local v7    # "result":Lcom/facebook/model/GraphObject;, "TU;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
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

    .line 316
    .end local v5    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/model/GraphObject;>;"
    :cond_5
    const-class v9, Ljava/lang/Iterable;

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 317
    const-class v9, Ljava/util/List;

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-class v9, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 318
    :cond_6
    if-nez p2, :cond_7

    .line 319
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

    .line 322
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 324
    .local v1, "actualTypeArguments":[Ljava/lang/reflect/Type;
    if-eqz v1, :cond_8

    array-length v9, v1

    if-ne v9, v10, :cond_8

    .line 325
    aget-object v9, v1, v12

    instance-of v9, v9, Ljava/lang/Class;

    if-nez v9, :cond_9

    .line 326
    :cond_8
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    .line 327
    const-string v10, "Expect collection properties to be of a type with exactly one generic parameter."

    .line 326
    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 329
    :cond_9
    aget-object v2, v1, v12

    check-cast v2, Ljava/lang/Class;

    .line 331
    .local v2, "collectionGenericArgument":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Lorg/json/JSONArray;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 332
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    move-object v6, v0

    .line 334
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-static {v6, v2}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v7

    .local v7, "result":Lcom/facebook/model/GraphObjectList;, "TU;"
    move-object v9, v7

    .line 335
    goto/16 :goto_0

    .line 337
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "result":Lcom/facebook/model/GraphObjectList;, "TU;"
    :cond_a
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

    .line 339
    .end local v1    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    .end local v2    # "collectionGenericArgument":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    const-class v9, Ljava/lang/String;

    invoke-virtual {v13, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 340
    const-class v9, Ljava/lang/Double;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 341
    const-class v9, Ljava/lang/Float;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 343
    :cond_c
    const-string v9, "%f"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p0, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "result":Ljava/lang/String;, "TU;"
    move-object v9, v7

    .line 344
    goto/16 :goto_0

    .line 345
    .end local v7    # "result":Ljava/lang/String;, "TU;"
    :cond_d
    const-class v9, Ljava/lang/Number;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 347
    const-string v9, "%d"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p0, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "result":Ljava/lang/String;, "TU;"
    move-object v9, v7

    .line 348
    goto/16 :goto_0

    .line 350
    .end local v7    # "result":Ljava/lang/String;, "TU;"
    :cond_e
    const-class v9, Ljava/util/Date;

    invoke-virtual {v9, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 351
    const-class v9, Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 352
    sget-object v10, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    array-length v11, v10

    :goto_1
    if-lt v12, v11, :cond_10

    .line 366
    :cond_f
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

    .line 367
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 366
    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 352
    :cond_10
    aget-object v4, v10, v12

    .line 354
    .local v4, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 355
    .local v3, "date":Ljava/util/Date;
    if-eqz v3, :cond_11

    .line 357
    move-object v7, v3

    .local v7, "result":Ljava/util/Date;, "TU;"
    move-object v9, v7

    .line 358
    goto/16 :goto_0

    .line 360
    .end local v3    # "date":Ljava/util/Date;
    .end local v7    # "result":Ljava/util/Date;, "TU;"
    :catch_0
    move-exception v9

    .line 352
    :cond_11
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    goto :goto_1
.end method

.method static convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 371
    const-string v0, "([a-z])([A-Z])"

    const-string v1, "$1_$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 372
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 134
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
    .line 146
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
    .line 110
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
    .line 123
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
    .line 196
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->verifyCanProxyClass(Ljava/lang/Class;)V

    .line 198
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 199
    .local v2, "interfaces":[Ljava/lang/Class;
    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    invoke-direct {v1, p1, p0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 202
    .local v1, "graphObjectProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    const-class v3, Lcom/facebook/model/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 204
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

    .line 208
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Map;

    aput-object v5, v2, v3

    .line 209
    .local v2, "interfaces":[Ljava/lang/Class;
    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    const-class v3, Ljava/util/Map;

    invoke-direct {v1, p0, v5}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 213
    .local v1, "graphObjectProxy":Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
    const-class v3, Lcom/facebook/model/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    check-cast v0, Ljava/util/Map;

    .line 215
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
    .line 192
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
    .line 180
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 377
    .local v3, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/facebook/model/GraphObject;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    move-object v0, p0

    check-cast v0, Lcom/facebook/model/GraphObject;

    move-object v1, v0

    .line 379
    .local v1, "graphObject":Lcom/facebook/model/GraphObject;
    invoke-interface {v1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 384
    .end local v1    # "graphObject":Lcom/facebook/model/GraphObject;
    :goto_0
    return-object v4

    .line 380
    :cond_0
    const-class v4, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    move-object v0, p0

    check-cast v0, Lcom/facebook/model/GraphObjectList;

    move-object v2, v0

    .line 382
    .local v2, "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<*>;"
    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_0

    .end local v2    # "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<*>;"
    :cond_1
    move-object v4, p0

    .line 384
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
    .line 219
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

    .line 156
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

    .line 167
    :goto_0
    return v2

    .line 159
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    const/4 v2, 0x1

    goto :goto_0

    .line 162
    :cond_2
    const-string v2, "id"

    invoke-interface {p0, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "idA":Ljava/lang/Object;
    const-string v2, "id"

    invoke-interface {p1, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    .local v1, "idB":Ljava/lang/Object;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_3
    move v2, v5

    .line 165
    goto :goto_0

    .line 167
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
    .line 223
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/facebook/model/GraphObject$Factory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit v0

    return-void

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static verifyCanProxyClass(Ljava/lang/Class;)V
    .locals 12
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
    const/4 v11, 0x3

    const-class v10, Lcom/facebook/model/PropertyName;

    .line 227
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->hasClassBeenVerified(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_1

    .line 232
    new-instance v6, Lcom/facebook/FacebookGraphObjectException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Factory can only wrap interfaces, not class: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-direct {v6, v7}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 236
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 237
    .local v3, "methods":[Ljava/lang/reflect/Method;
    array-length v7, v3

    const/4 v6, 0x0

    move v8, v6

    :goto_1
    if-lt v8, v7, :cond_2

    .line 273
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->recordClassHasBeenVerified(Ljava/lang/Class;)V

    goto :goto_0

    .line 237
    :cond_2
    aget-object v1, v3, v8

    .line 238
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "methodName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v4, v6

    .line 240
    .local v4, "parameterCount":I
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 241
    .local v5, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/facebook/model/PropertyName;

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    .line 243
    .local v0, "hasPropertyNameOverride":Z
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    const-class v9, Lcom/facebook/model/GraphObject;

    invoke-virtual {v6, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 237
    :cond_3
    :goto_2
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_1

    .line 246
    :cond_4
    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_7

    .line 247
    if-eqz v0, :cond_6

    .line 250
    const-class v6, Lcom/facebook/model/PropertyName;

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/facebook/model/PropertyName;

    invoke-interface {v6}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 270
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

    .line 253
    :cond_6
    const-string v6, "set"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_5

    goto :goto_2

    .line 257
    :cond_7
    if-nez v4, :cond_5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_5

    .line 258
    if-eqz v0, :cond_8

    .line 261
    const-class v6, Lcom/facebook/model/PropertyName;

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/facebook/model/PropertyName;

    invoke-interface {v6}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 264
    :cond_8
    const-string v6, "get"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_5

    goto :goto_2
.end method
