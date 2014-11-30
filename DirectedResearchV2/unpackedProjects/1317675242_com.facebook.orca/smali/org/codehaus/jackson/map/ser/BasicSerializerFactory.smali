.class public abstract Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;
.super Lorg/codehaus/jackson/map/SerializerFactory;
.source "BasicSerializerFactory.java"


# static fields
.field protected static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field protected static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected g:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->e:Ljava/util/HashMap;

    .line 67
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/StdSerializers$StringSerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/StdSerializers$StringSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lorg/codehaus/jackson/map/ser/ToStringSerializer;->a:Lorg/codehaus/jackson/map/ser/ToStringSerializer;

    .line 69
    sget-object v2, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v3, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v2, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v2, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lorg/codehaus/jackson/map/ser/StdSerializers$IntegerSerializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/ser/StdSerializers$IntegerSerializer;-><init>()V

    .line 78
    sget-object v2, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v2, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;-><init>()V

    .line 95
    sget-object v2, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v3, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v2, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v3, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$CalendarSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/StdSerializers$SqlDateSerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/StdSerializers$SqlDateSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/sql/Time;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    const-class v2, Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;->a:Lorg/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Lorg/codehaus/jackson/map/ser/JdkSerializers;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/ser/JdkSerializers;-><init>()V

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/ser/JdkSerializers;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 110
    instance-of v4, v2, Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v4, :cond_0

    .line 111
    sget-object v4, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->d:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Lorg/codehaus/jackson/map/JsonSerializer;

    move-object v1, v0

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_0
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 114
    check-cast v2, Ljava/lang/Class;

    .line 115
    sget-object v4, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->e:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error: unrecognized value of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_2
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->e:Ljava/util/HashMap;

    const-class v2, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/codehaus/jackson/map/ser/StdSerializers$TokenBufferSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->f:Ljava/util/HashMap;

    .line 130
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->f:Ljava/util/HashMap;

    const-class v2, [Z

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/ArraySerializers$BooleanArraySerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$BooleanArraySerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->f:Ljava/util/HashMap;

    const-class v2, [B

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/ArraySerializers$ByteArraySerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$ByteArraySerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->f:Ljava/util/HashMap;

    const-class v2, [C

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/ArraySerializers$CharArraySerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$CharArraySerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->f:Ljava/util/HashMap;

    const-class v2, [S

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/ArraySerializers$ShortArraySerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$ShortArraySerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->f:Ljava/util/HashMap;

    const-class v2, [I

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/ArraySerializers$IntArraySerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$IntArraySerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->f:Ljava/util/HashMap;

    const-class v2, [J

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/ArraySerializers$LongArraySerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$LongArraySerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->f:Ljava/util/HashMap;

    const-class v2, [F

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/ArraySerializers$FloatArraySerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$FloatArraySerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->f:Ljava/util/HashMap;

    const-class v2, [D

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/codehaus/jackson/map/ser/ArraySerializers$DoubleArraySerializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ser/ArraySerializers$DoubleArraySerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/codehaus/jackson/map/SerializerFactory;-><init>()V

    .line 144
    sget-object v0, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->a:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BasicSerializerFactory;->g:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    .line 157
    return-void
.end method
