.class public Lcom/flurry/org/apache/avro/specific/SpecificData;
.super Lcom/flurry/org/apache/avro/generic/GenericData;
.source "SpecificData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/specific/SpecificData$2;,
        Lcom/flurry/org/apache/avro/specific/SpecificData$SchemaConstructable;
    }
.end annotation


# static fields
.field private static final CTOR_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lcom/flurry/org/apache/avro/specific/SpecificData;

.field private static final NO_ARG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final NO_CLASS:Ljava/lang/Class;

.field private static final NULL_SCHEMA:Lcom/flurry/org/apache/avro/Schema;

.field private static final SCHEMA_ARG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private classCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final schemaCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/flurry/org/apache/avro/specific/SpecificData;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->INSTANCE:Lcom/flurry/org/apache/avro/specific/SpecificData;

    .line 45
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_ARG:[Ljava/lang/Class;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/flurry/org/apache/avro/Schema;

    aput-object v1, v0, v2

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->SCHEMA_ARG:[Ljava/lang/Class;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->CTOR_CACHE:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/flurry/org/apache/avro/specific/SpecificData$1;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/specific/SpecificData$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_CLASS:Ljava/lang/Class;

    .line 81
    sget-object v0, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->NULL_SCHEMA:Lcom/flurry/org/apache/avro/Schema;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/flurry/org/apache/avro/specific/SpecificData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "classLoader"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/generic/GenericData;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classCache:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->schemaCache:Ljava/util/WeakHashMap;

    .line 55
    iput-object p1, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classLoader:Ljava/lang/ClassLoader;

    .line 56
    return-void
.end method

.method public static get()Lcom/flurry/org/apache/avro/specific/SpecificData;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->INSTANCE:Lcom/flurry/org/apache/avro/specific/SpecificData;

    return-object v0
.end method

.method public static getClassName(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/String;
    .locals 5
    .parameter "schema"

    .prologue
    const-string v4, ""

    .line 125
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, namespace:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, name:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v1

    .line 130
    :goto_0
    return-object v3

    .line 129
    :cond_1
    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    move-object v0, v4

    .line 130
    .local v0, dot:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 129
    .end local v0           #dot:Ljava/lang/String;
    :cond_2
    const-string v3, "."

    move-object v0, v3

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/Class;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 6
    .parameter "c"
    .parameter "s"

    .prologue
    .line 241
    const-class v4, Lcom/flurry/org/apache/avro/specific/SpecificData$SchemaConstructable;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    .line 244
    .local v3, useSchema:Z
    :try_start_0
    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->CTOR_CACHE:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 245
    .local v1, meth:Ljava/lang/reflect/Constructor;
    if-nez v1, :cond_0

    .line 246
    if-eqz v3, :cond_1

    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->SCHEMA_ARG:[Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 247
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 248
    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->CTOR_CACHE:Ljava/util/Map;

    invoke-interface {v4, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    if-eqz v3, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .end local p0
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 254
    .local v2, result:Ljava/lang/Object;
    return-object v2

    .line 246
    .end local v2           #result:Ljava/lang/Object;
    .restart local p0
    :cond_1
    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_ARG:[Ljava/lang/Class;

    goto :goto_0

    .line 250
    :cond_2
    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    move-object v4, p0

    goto :goto_1

    .line 251
    .end local v1           #meth:Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 252
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method protected compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I
    .locals 2
    .parameter "o1"
    .parameter "o2"
    .parameter "s"
    .parameter "eq"

    .prologue
    .line 227
    sget-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData$2;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p3}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/flurry/org/apache/avro/generic/GenericData;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;Z)I

    move-result v0

    .end local p1
    .end local p2
    :goto_0
    return v0

    .line 229
    .restart local p1
    .restart local p2
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    .line 230
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    check-cast p2, Ljava/lang/Enum;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public createDatumReader(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/DatumReader;
    .locals 1
    .parameter "schema"

    .prologue
    .line 60
    new-instance v0, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;

    invoke-direct {v0, p1, p1, p0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/specific/SpecificData;)V

    return-object v0
.end method

.method public createFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2
    .parameter "old"
    .parameter "schema"

    .prologue
    .line 259
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    .line 260
    .local v0, c:Ljava/lang/Class;
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->createFixed(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v1

    .line 261
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->newInstance(Ljava/lang/Class;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;
    .locals 16
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/org/apache/avro/Schema;",
            ">;)",
            "Lcom/flurry/org/apache/avro/Schema;"
        }
    .end annotation

    .prologue
    .local p2, names:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/flurry/org/apache/avro/Schema;>;"
    const/4 v14, 0x1

    const/4 v13, 0x0

    const-class v15, Ljava/lang/CharSequence;

    .line 150
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Class;

    move v12, v0

    if-eqz v12, :cond_0

    const-class v12, Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v12, v0

    invoke-virtual {v15, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 152
    sget-object v12, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    .line 204
    .end local p0
    .end local p1
    :goto_0
    return-object v12

    .line 153
    .restart local p0
    .restart local p1
    :cond_0
    const-class v12, Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    move-object v1, v12

    if-ne v0, v1, :cond_1

    .line 154
    sget-object v12, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto :goto_0

    .line 155
    :cond_1
    const-class v12, Ljava/lang/Integer;

    move-object/from16 v0, p1

    move-object v1, v12

    if-eq v0, v1, :cond_2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object v1, v12

    if-ne v0, v1, :cond_3

    .line 156
    :cond_2
    sget-object v12, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto :goto_0

    .line 157
    :cond_3
    const-class v12, Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object v1, v12

    if-eq v0, v1, :cond_4

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object v1, v12

    if-ne v0, v1, :cond_5

    .line 158
    :cond_4
    sget-object v12, Lcom/flurry/org/apache/avro/Schema$Type;->LONG:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto :goto_0

    .line 159
    :cond_5
    const-class v12, Ljava/lang/Float;

    move-object/from16 v0, p1

    move-object v1, v12

    if-eq v0, v1, :cond_6

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object v1, v12

    if-ne v0, v1, :cond_7

    .line 160
    :cond_6
    sget-object v12, Lcom/flurry/org/apache/avro/Schema$Type;->FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto :goto_0

    .line 161
    :cond_7
    const-class v12, Ljava/lang/Double;

    move-object/from16 v0, p1

    move-object v1, v12

    if-eq v0, v1, :cond_8

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object v1, v12

    if-ne v0, v1, :cond_9

    .line 162
    :cond_8
    sget-object v12, Lcom/flurry/org/apache/avro/Schema$Type;->DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto :goto_0

    .line 163
    :cond_9
    const-class v12, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object v1, v12

    if-eq v0, v1, :cond_a

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object v1, v12

    if-ne v0, v1, :cond_b

    .line 164
    :cond_a
    sget-object v12, Lcom/flurry/org/apache/avro/Schema$Type;->BOOLEAN:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto :goto_0

    .line 165
    :cond_b
    const-class v12, Ljava/lang/Void;

    move-object/from16 v0, p1

    move-object v1, v12

    if-eq v0, v1, :cond_c

    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    move-object v1, v12

    if-ne v0, v1, :cond_d

    .line 166
    :cond_c
    sget-object v12, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->create(Lcom/flurry/org/apache/avro/Schema$Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto/16 :goto_0

    .line 167
    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move v12, v0

    if-eqz v12, :cond_13

    .line 168
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v8, v0

    .line 169
    .local v8, ptype:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    .line 170
    .local v9, raw:Ljava/lang/Class;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 171
    .local v7, params:[Ljava/lang/reflect/Type;
    const-class v12, Ljava/util/Collection;

    invoke-virtual {v12, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 172
    array-length v12, v7

    if-eq v12, v14, :cond_e

    .line 173
    new-instance v12, Lcom/flurry/org/apache/avro/AvroTypeException;

    const-string v13, "No array type specified."

    invoke-direct {v12, v13}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 174
    :cond_e
    aget-object v12, v7, v13

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->createArray(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto/16 :goto_0

    .line 175
    :cond_f
    const-class v12, Ljava/util/Map;

    invoke-virtual {v12, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 176
    aget-object v6, v7, v13

    .line 177
    .local v6, key:Ljava/lang/reflect/Type;
    aget-object v11, v7, v14

    .line 178
    .local v11, value:Ljava/lang/reflect/Type;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Class;

    move v12, v0

    if-eqz v12, :cond_10

    const-class v12, Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/Class;

    .end local p1
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 180
    :cond_10
    new-instance v12, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Map key class not CharSequence: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 181
    :cond_11
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->createMap(Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto/16 :goto_0

    .line 183
    .end local v6           #key:Ljava/lang/reflect/Type;
    .end local v11           #value:Ljava/lang/reflect/Type;
    .restart local p1
    :cond_12
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v12

    goto/16 :goto_0

    .line 185
    .end local v7           #params:[Ljava/lang/reflect/Type;
    .end local v8           #ptype:Ljava/lang/reflect/ParameterizedType;
    .end local v9           #raw:Ljava/lang/Class;
    :cond_13
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Class;

    move v12, v0

    if-eqz v12, :cond_15

    .line 186
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v3, v0

    .line 187
    .local v3, c:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, fullName:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flurry/org/apache/avro/Schema;

    .line 189
    .local v10, schema:Lcom/flurry/org/apache/avro/Schema;
    if-nez v10, :cond_14

    .line 191
    :try_start_0
    const-string v12, "SCHEMA$"

    invoke-virtual {v3, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/flurry/org/apache/avro/Schema;

    move-object/from16 v0, p0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    move-object v10, v0

    .line 193
    invoke-static {v10}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClassName(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 195
    invoke-virtual {v10}, Lcom/flurry/org/apache/avro/Schema;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/flurry/org/apache/avro/Schema;->getNamespace()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/flurry/org/apache/avro/Schema;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 203
    :cond_14
    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v10

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v10

    .line 204
    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 199
    .local v4, e:Ljava/lang/NoSuchFieldException;
    new-instance v12, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not a Specific class: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 200
    .end local v4           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v12

    move-object v4, v12

    .line 201
    .local v4, e:Ljava/lang/IllegalAccessException;
    new-instance v12, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v12, v4}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 206
    .end local v3           #c:Ljava/lang/Class;
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    .end local v5           #fullName:Ljava/lang/String;
    .end local v10           #schema:Lcom/flurry/org/apache/avro/Schema;
    .restart local p0
    :cond_15
    new-instance v12, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;
    .locals 8
    .parameter "schema"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 85
    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData$2;->$SwitchMap$org$apache$avro$Schema$Type:[I

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 119
    new-instance v4, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v4, v7

    .line 118
    .end local v2           #name:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 91
    .restart local v2       #name:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 92
    .local v0, c:Ljava/lang/Class;
    if-nez v0, :cond_1

    .line 94
    :try_start_0
    iget-object v4, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClassName(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_1
    iget-object v4, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->classCache:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_CLASS:Ljava/lang/Class;

    if-ne v0, v4, :cond_2

    move-object v4, v7

    goto :goto_0

    .line 95
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 96
    .local v1, e:Ljava/lang/ClassNotFoundException;
    sget-object v0, Lcom/flurry/org/apache/avro/specific/SpecificData;->NO_CLASS:Ljava/lang/Class;

    goto :goto_1

    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :cond_2
    move-object v4, v0

    .line 100
    goto :goto_0

    .line 101
    .end local v0           #c:Ljava/lang/Class;
    .end local v2           #name:Ljava/lang/String;
    :pswitch_1
    const-class v4, Ljava/util/List;

    goto :goto_0

    .line 102
    :pswitch_2
    const-class v4, Ljava/util/Map;

    goto :goto_0

    .line 104
    :pswitch_3
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v3

    .line 105
    .local v3, types:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/flurry/org/apache/avro/specific/SpecificData;->NULL_SCHEMA:Lcom/flurry/org/apache/avro/Schema;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 106
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema;

    sget-object v5, Lcom/flurry/org/apache/avro/specific/SpecificData;->NULL_SCHEMA:Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {v4, v5}, Lcom/flurry/org/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, v4}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_2

    .line 107
    :cond_4
    const-class v4, Ljava/lang/Object;

    goto :goto_0

    .line 109
    .end local v3           #types:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    :pswitch_4
    const-string v4, "String"

    const-string v5, "avro.java.string"

    invoke-virtual {p1, v5}, Lcom/flurry/org/apache/avro/Schema;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 110
    const-class v4, Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_5
    const-class v4, Ljava/lang/CharSequence;

    goto :goto_0

    .line 112
    :pswitch_5
    const-class v4, Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 113
    :pswitch_6
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 114
    :pswitch_7
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 115
    :pswitch_8
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 116
    :pswitch_9
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    .line 117
    :pswitch_a
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    .line 118
    :pswitch_b
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected getEnumSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;
    .locals 1
    .parameter "datum"

    .prologue
    .line 73
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->getEnumSchema(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol(Ljava/lang/Class;)Lcom/flurry/org/apache/avro/Protocol;
    .locals 6
    .parameter "iface"

    .prologue
    .line 212
    :try_start_0
    const-string v3, "PROTOCOL"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/flurry/org/apache/avro/Protocol;

    move-object v0, p0

    check-cast v0, Lcom/flurry/org/apache/avro/Protocol;

    move-object v2, v0

    .line 213
    .local v2, p:Lcom/flurry/org/apache/avro/Protocol;
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Protocol;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/Protocol;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flurry/org/apache/avro/Protocol;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Protocol;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 217
    :cond_0
    return-object v2

    .line 218
    .end local v2           #p:Lcom/flurry/org/apache/avro/Protocol;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 219
    .local v1, e:Ljava/lang/NoSuchFieldException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a Specific protocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 221
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v3, v1}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSchema(Ljava/lang/reflect/Type;)Lcom/flurry/org/apache/avro/Schema;
    .locals 2
    .parameter "type"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->schemaCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    .line 139
    .local v0, schema:Lcom/flurry/org/apache/avro/Schema;
    if-nez v0, :cond_0

    .line 140
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/flurry/org/apache/avro/specific/SpecificData;->createSchema(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/org/apache/avro/Schema;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/flurry/org/apache/avro/specific/SpecificData;->schemaCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-object v0
.end method

.method protected isEnum(Ljava/lang/Object;)Z
    .locals 1
    .parameter "datum"

    .prologue
    .line 68
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/flurry/org/apache/avro/generic/GenericData;->isEnum(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;
    .locals 2
    .parameter "old"
    .parameter "schema"

    .prologue
    .line 266
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->getClass(Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Class;

    move-result-object v0

    .line 267
    .local v0, c:Ljava/lang/Class;
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/flurry/org/apache/avro/generic/GenericData;->newRecord(Ljava/lang/Object;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lcom/flurry/org/apache/avro/specific/SpecificData;->newInstance(Ljava/lang/Class;Lcom/flurry/org/apache/avro/Schema;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
