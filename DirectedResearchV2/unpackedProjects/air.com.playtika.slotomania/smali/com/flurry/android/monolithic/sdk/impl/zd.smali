.class public abstract Lcom/flurry/android/monolithic/sdk/impl/zd;
.super Lcom/flurry/android/monolithic/sdk/impl/rs;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field protected static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected d:Lcom/flurry/android/monolithic/sdk/impl/xf;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->b:Ljava/util/HashMap;

    .line 82
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/acw;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/acw;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/acy;->a:Lcom/flurry/android/monolithic/sdk/impl/acy;

    .line 84
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v3, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/zz;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/zz;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/zz;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/zz;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aad;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/aad;-><init>()V

    .line 93
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aae;->a:Lcom/flurry/android/monolithic/sdk/impl/aae;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aae;->a:Lcom/flurry/android/monolithic/sdk/impl/aae;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aac;->a:Lcom/flurry/android/monolithic/sdk/impl/aac;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aac;->a:Lcom/flurry/android/monolithic/sdk/impl/aac;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aac;->a:Lcom/flurry/android/monolithic/sdk/impl/aac;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aac;->a:Lcom/flurry/android/monolithic/sdk/impl/aac;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aab;->a:Lcom/flurry/android/monolithic/sdk/impl/aab;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aab;->a:Lcom/flurry/android/monolithic/sdk/impl/aab;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aaa;->a:Lcom/flurry/android/monolithic/sdk/impl/aaa;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aaa;->a:Lcom/flurry/android/monolithic/sdk/impl/aaa;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/aaf;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/aaf;-><init>()V

    .line 110
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v3, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v3, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/aba;->a:Lcom/flurry/android/monolithic/sdk/impl/aba;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/abd;->a:Lcom/flurry/android/monolithic/sdk/impl/abd;

    .line 117
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v3, Ljava/sql/Timestamp;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/aag;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/aag;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    const-class v2, Ljava/sql/Time;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/aah;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/aah;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/acj;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/acj;-><init>()V

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/acj;->a()Ljava/util/Collection;

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

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 126
    instance-of v4, v2, Lcom/flurry/android/monolithic/sdk/impl/ra;

    if-eqz v4, :cond_0

    .line 127
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v2

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-object v1, v0

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_0
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 130
    check-cast v2, Ljava/lang/Class;

    .line 131
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/zd;->b:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
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

    .line 139
    :cond_2
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->b:Ljava/util/HashMap;

    const-class v2, Lcom/flurry/android/monolithic/sdk/impl/afz;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/flurry/android/monolithic/sdk/impl/acz;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    .line 146
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    const-class v2, [Z

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/abx;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/abx;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    const-class v2, [B

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/aby;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/aby;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    const-class v2, [C

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/abz;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/abz;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    const-class v2, [S

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/ace;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/ace;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    const-class v2, [I

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/acc;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/acc;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    const-class v2, [J

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/acd;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/acd;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    const-class v2, [F

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/acb;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/acb;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    const-class v2, [D

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/aca;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/aca;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/rs;-><init>()V

    .line 160
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/xf;->a:Lcom/flurry/android/monolithic/sdk/impl/xf;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zd;->d:Lcom/flurry/android/monolithic/sdk/impl/xf;

    .line 173
    return-void
.end method

.method protected static b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ">(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    const-string v7, "): "

    .line 701
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v2

    .line 703
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 704
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->k()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Class;

    move-result-object v3

    .line 705
    if-eqz v3, :cond_2

    .line 707
    instance-of v1, p2, Lcom/flurry/android/monolithic/sdk/impl/adg;

    if-nez v1, :cond_0

    .line 708
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal key-type annotation: type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a Map type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/adg;

    move-object v1, v0

    invoke-virtual {v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/adg;->e(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 718
    :goto_0
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/flurry/android/monolithic/sdk/impl/py;->b(Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Class;

    move-result-object v2

    .line 719
    if-eqz v2, :cond_1

    .line 721
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 727
    :cond_1
    :goto_1
    return-object v1

    .line 712
    :catch_0
    move-exception v1

    .line 713
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to narrow key type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with key-type annotation ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 722
    :catch_1
    move-exception v3

    .line 723
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to narrow content type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " with content-type annotation ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move-object v1, p2

    goto :goto_0

    :cond_3
    move-object v1, p2

    goto :goto_1
.end method

.method protected static b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v3, Lcom/flurry/android/monolithic/sdk/impl/rb;

    .line 733
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 734
    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/py;->c(Lcom/flurry/android/monolithic/sdk/impl/xg;)Ljava/lang/Class;

    move-result-object v1

    .line 735
    if-eqz v1, :cond_0

    const-class v2, Lcom/flurry/android/monolithic/sdk/impl/rb;

    if-ne v1, v3, :cond_2

    .line 736
    :cond_0
    if-eqz p2, :cond_2

    .line 737
    invoke-interface {p2}, Lcom/flurry/android/monolithic/sdk/impl/qc;->b()Lcom/flurry/android/monolithic/sdk/impl/xk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/py;->c(Lcom/flurry/android/monolithic/sdk/impl/xg;)Ljava/lang/Class;

    move-result-object v0

    .line 740
    :goto_0
    if-eqz v0, :cond_1

    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/rb;

    if-eq v0, v3, :cond_1

    .line 741
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 743
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected static c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const-class v3, Lcom/flurry/android/monolithic/sdk/impl/rb;

    .line 749
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 750
    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/py;->d(Lcom/flurry/android/monolithic/sdk/impl/xg;)Ljava/lang/Class;

    move-result-object v1

    .line 751
    if-eqz v1, :cond_0

    const-class v2, Lcom/flurry/android/monolithic/sdk/impl/rb;

    if-ne v1, v3, :cond_2

    .line 752
    :cond_0
    if-eqz p2, :cond_2

    .line 753
    invoke-interface {p2}, Lcom/flurry/android/monolithic/sdk/impl/qc;->b()Lcom/flurry/android/monolithic/sdk/impl/xk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/py;->d(Lcom/flurry/android/monolithic/sdk/impl/xg;)Ljava/lang/Class;

    move-result-object v0

    .line 756
    :goto_0
    if-eqz v0, :cond_1

    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/rb;

    if-eq v0, v3, :cond_1

    .line 757
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 759
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ">(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 684
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/py;->e(Lcom/flurry/android/monolithic/sdk/impl/xg;)Ljava/lang/Class;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_0

    .line 687
    :try_start_0
    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->h(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 692
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/zd;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    return-object v0

    .line 688
    :catch_0
    move-exception v1

    .line 689
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to widen type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with concrete-type annotation (value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), method \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\': "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 241
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 242
    if-eqz p0, :cond_0

    move-object v1, p0

    .line 254
    :goto_0
    return-object v1

    .line 245
    :cond_0
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/zd;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 246
    if-eqz p0, :cond_1

    .line 248
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate standard serializer (of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 254
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/ada;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/ada;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/ada;->p()Ljava/lang/Class;

    move-result-object v0

    .line 622
    const-class v1, [Ljava/lang/String;

    if-ne v1, v0, :cond_0

    .line 623
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/acf;

    invoke-direct {v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/acf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qc;)V

    .line 630
    :goto_0
    return-object v0

    .line 626
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/zd;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 627
    if-eqz p0, :cond_1

    move-object v0, p0

    .line 628
    goto :goto_0

    .line 630
    :cond_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/abo;

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/ada;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    move v2, p5

    move-object v3, p6

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/abo;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adc;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/adc;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/rv;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    .line 455
    invoke-interface/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/rv;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adc;Lcom/flurry/android/monolithic/sdk/impl/qb;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    .line 461
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/add;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/add;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/rv;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    .line 478
    invoke-interface/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/rv;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/add;Lcom/flurry/android/monolithic/sdk/impl/qb;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    .line 500
    :goto_0
    return-object v0

    .line 484
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/add;->p()Ljava/lang/Class;

    move-result-object v0

    .line 485
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    invoke-virtual/range {p0 .. p7}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/add;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v1

    .line 490
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 491
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_3

    .line 492
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/abh;

    invoke-direct {v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/abh;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qc;)V

    goto :goto_0

    .line 494
    :cond_3
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/add;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    invoke-static {v0, p5, p6, p4, p7}, Lcom/flurry/android/monolithic/sdk/impl/acg;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/abc;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_4
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_5

    .line 498
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/acv;

    invoke-direct {v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/acv;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qc;)V

    goto :goto_0

    .line 500
    :cond_5
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/add;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    invoke-static {v0, p5, p6, p4, p7}, Lcom/flurry/android/monolithic/sdk/impl/acg;->b(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/abc;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adf;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/adf;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/rv;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 546
    invoke-interface/range {v0 .. v7}, Lcom/flurry/android/monolithic/sdk/impl/rv;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adf;Lcom/flurry/android/monolithic/sdk/impl/qb;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    .line 552
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adg;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/adg;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/rv;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 568
    invoke-interface/range {v0 .. v7}, Lcom/flurry/android/monolithic/sdk/impl/rv;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adg;Lcom/flurry/android/monolithic/sdk/impl/qb;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_0

    .line 578
    :goto_0
    return-object v0

    .line 574
    :cond_1
    const-class v0, Ljava/util/EnumMap;

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/adg;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 575
    invoke-virtual/range {v0 .. v7}, Lcom/flurry/android/monolithic/sdk/impl/zd;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0

    .line 578
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/py;->c(Lcom/flurry/android/monolithic/sdk/impl/xh;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    move v2, p5

    move-object/from16 v3, p7

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/abl;->a([Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/abl;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    .line 342
    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual/range {p0 .. p5}, Lcom/flurry/android/monolithic/sdk/impl/zd;->c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 345
    :cond_0
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual/range {p0 .. p5}, Lcom/flurry/android/monolithic/sdk/impl/zd;->d(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_1
    const-class v1, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/acy;->a:Lcom/flurry/android/monolithic/sdk/impl/acy;

    goto :goto_0

    .line 351
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->r()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 515
    :cond_0
    invoke-static {v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/acg;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/py;->b(Lcom/flurry/android/monolithic/sdk/impl/xg;)Ljava/lang/Object;

    move-result-object p0

    .line 367
    if-nez p0, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 391
    :goto_0
    return-object v0

    .line 370
    :cond_0
    instance-of v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    if-eqz v0, :cond_2

    .line 371
    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 372
    instance-of v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qj;

    if-eqz v0, :cond_1

    .line 373
    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/qj;

    invoke-interface {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/qj;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 375
    goto :goto_0

    .line 380
    :cond_2
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_3

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_3
    check-cast p0, Ljava/lang/Class;

    .line 384
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected Class<JsonSerializer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_4
    invoke-virtual {p1, p2, p0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object p0

    .line 388
    instance-of v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qj;

    if-eqz v0, :cond_5

    .line 389
    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/qj;

    invoke-interface {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/qj;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p0

    .line 391
    goto :goto_0
.end method

.method protected abstract a()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/rv;",
            ">;"
        }
    .end annotation
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 774
    if-eqz p3, :cond_0

    move v0, v5

    .line 804
    :goto_0
    return v0

    .line 777
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 778
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/py;->f(Lcom/flurry/android/monolithic/sdk/impl/xg;)Lcom/flurry/android/monolithic/sdk/impl/sg;

    move-result-object v1

    .line 779
    if-eqz v1, :cond_1

    .line 780
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/sg;->b:Lcom/flurry/android/monolithic/sdk/impl/sg;

    if-ne v1, v2, :cond_2

    move v0, v4

    .line 781
    goto :goto_0

    .line 784
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->h:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v4

    .line 785
    goto :goto_0

    .line 791
    :cond_2
    if-eqz p4, :cond_4

    .line 792
    invoke-interface {p4}, Lcom/flurry/android/monolithic/sdk/impl/qc;->a()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    .line 793
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 794
    invoke-interface {p4}, Lcom/flurry/android/monolithic/sdk/impl/qc;->b()Lcom/flurry/android/monolithic/sdk/impl/xk;

    move-result-object v2

    invoke-interface {p4}, Lcom/flurry/android/monolithic/sdk/impl/qc;->a()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/py;->b(Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    move v0, v4

    .line 795
    goto :goto_0

    .line 797
    :cond_3
    instance-of v1, v1, Lcom/flurry/android/monolithic/sdk/impl/adg;

    if-eqz v1, :cond_4

    .line 798
    invoke-interface {p4}, Lcom/flurry/android/monolithic/sdk/impl/qc;->b()Lcom/flurry/android/monolithic/sdk/impl/xk;

    move-result-object v1

    invoke-interface {p4}, Lcom/flurry/android/monolithic/sdk/impl/qc;->a()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v4

    .line 799
    goto :goto_0

    :cond_4
    move v0, v5

    .line 804
    goto :goto_0
.end method

.method protected a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 523
    const-class v0, Ljava/util/RandomAccess;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    .line 272
    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/qy;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/qz;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/abs;->a:Lcom/flurry/android/monolithic/sdk/impl/abs;

    .line 323
    :goto_0
    return-object v0

    .line 276
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/abr;->a:Lcom/flurry/android/monolithic/sdk/impl/abr;

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/xq;->e()Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/xl;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 283
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/rr;->e:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/adz;->a(Ljava/lang/reflect/Member;)V

    .line 286
    :cond_2
    invoke-virtual {p0, p2, v1, p4}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v1

    .line 287
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/abk;

    invoke-direct {v2, v0, v1, p4}, Lcom/flurry/android/monolithic/sdk/impl/abk;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/qc;)V

    move-object v0, v2

    goto :goto_0

    .line 291
    :cond_3
    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/abi;->a:Lcom/flurry/android/monolithic/sdk/impl/abi;

    goto :goto_0

    .line 295
    :cond_4
    const-class v1, Ljava/util/TimeZone;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/acx;->a:Lcom/flurry/android/monolithic/sdk/impl/acx;

    goto :goto_0

    .line 299
    :cond_5
    const-class v1, Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 300
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/acy;->a:Lcom/flurry/android/monolithic/sdk/impl/acy;

    goto :goto_0

    .line 304
    :cond_6
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zd;->d:Lcom/flurry/android/monolithic/sdk/impl/xf;

    invoke-virtual {v1, p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/xf;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_7

    move-object v0, v1

    .line 306
    goto :goto_0

    .line 309
    :cond_7
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 310
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aaf;->a:Lcom/flurry/android/monolithic/sdk/impl/aaf;

    goto :goto_0

    .line 312
    :cond_8
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 315
    invoke-static {v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abf;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)Lcom/flurry/android/monolithic/sdk/impl/abf;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_9
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 318
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aba;->a:Lcom/flurry/android/monolithic/sdk/impl/aba;

    goto :goto_0

    .line 320
    :cond_a
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 321
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/abd;->a:Lcom/flurry/android/monolithic/sdk/impl/abd;

    goto :goto_0

    .line 323
    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v5

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/zd;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v12

    .line 408
    if-eqz v12, :cond_0

    .line 409
    const/4 v5, 0x0

    move v10, v5

    .line 413
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/zd;->c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v13

    .line 416
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->j()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    move-object/from16 v0, p2

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/adf;

    move-object v7, v0

    .line 418
    invoke-virtual/range {p3 .. p3}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/zd;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v11

    .line 419
    invoke-virtual {v7}, Lcom/flurry/android/monolithic/sdk/impl/adf;->l()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 420
    check-cast v7, Lcom/flurry/android/monolithic/sdk/impl/adg;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v13}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adg;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v5

    .line 439
    :goto_1
    return-object v5

    .line 410
    :cond_0
    if-nez p5, :cond_6

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v12

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;)Z

    move-result v5

    move v10, v5

    goto :goto_0

    :cond_1
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 423
    invoke-virtual/range {v5 .. v13}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adf;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v5

    goto :goto_1

    .line 426
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->i()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 427
    move-object/from16 v0, p2

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/adc;

    move-object/from16 v16, v0

    .line 428
    invoke-virtual/range {v16 .. v16}, Lcom/flurry/android/monolithic/sdk/impl/adc;->a_()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 429
    check-cast v16, Lcom/flurry/android/monolithic/sdk/impl/add;

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v14 .. v21}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/add;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    .line 432
    invoke-virtual/range {v14 .. v21}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adc;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v5

    goto :goto_1

    .line 435
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 436
    move-object/from16 v0, p2

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ada;

    move-object/from16 v16, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v14 .. v21}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/ada;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v5

    goto :goto_1

    .line 439
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    move/from16 v10, p5

    goto/16 :goto_0
.end method

.method protected b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->k()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 596
    const/4 v1, 0x0

    .line 597
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    .line 600
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aee;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;)Lcom/flurry/android/monolithic/sdk/impl/aee;

    move-result-object v0

    move-object v3, v0

    .line 602
    :goto_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/abe;

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    move v2, p5

    move-object v4, p6

    move-object v5, p4

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/abe;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/aee;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    return-object v0

    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 197
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v1

    .line 199
    invoke-virtual {v1, p1, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/xh;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/yj;

    move-result-object v2

    .line 204
    if-nez v2, :cond_0

    .line 205
    invoke-virtual {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->d(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/yj;

    move-result-object v0

    move-object v1, v0

    move-object v0, v4

    .line 209
    :goto_0
    if-nez v1, :cond_1

    move-object v0, v4

    :goto_1
    return-object v0

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->l()Lcom/flurry/android/monolithic/sdk/impl/yh;

    move-result-object v3

    invoke-virtual {v3, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/yh;->a(Lcom/flurry/android/monolithic/sdk/impl/xh;Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/py;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v2

    goto :goto_0

    .line 209
    :cond_1
    invoke-interface {v1, p1, p2, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/yj;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v0

    goto :goto_1
.end method

.method protected c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->b(I)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 646
    if-nez v0, :cond_0

    .line 647
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/adk;->b()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 649
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/zd;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v1

    .line 650
    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;)Z

    move-result v2

    invoke-static {v0, v2, v1, p4}, Lcom/flurry/android/monolithic/sdk/impl/acg;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/abc;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            "Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->b(I)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 660
    if-nez v0, :cond_0

    .line 661
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/adk;->b()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 663
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/zd;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v1

    .line 664
    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/flurry/android/monolithic/sdk/impl/zd;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;)Z

    move-result v2

    invoke-static {v0, v2, v1, p4}, Lcom/flurry/android/monolithic/sdk/impl/acg;->b(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/abc;

    move-result-object v0

    return-object v0
.end method
