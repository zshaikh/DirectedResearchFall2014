.class public Lcom/flurry/android/monolithic/sdk/impl/nn;
.super Lcom/flurry/android/monolithic/sdk/impl/kq;
.source "SourceFile"


# static fields
.field private static final a:Lcom/flurry/android/monolithic/sdk/impl/nn;

.field private static final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final d:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
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

.field private static final g:Ljava/lang/Class;

.field private static final h:Lcom/flurry/android/monolithic/sdk/impl/ji;


# instance fields
.field private final b:Ljava/lang/ClassLoader;

.field private f:Ljava/util/Map;
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

.field private final i:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
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
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/nn;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/nn;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->a:Lcom/flurry/android/monolithic/sdk/impl/nn;

    .line 45
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->c:[Ljava/lang/Class;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/ji;

    aput-object v1, v0, v2

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->d:[Ljava/lang/Class;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->e:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/no;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/no;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->g:Ljava/lang/Class;

    .line 81
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kj;->n:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->h:Lcom/flurry/android/monolithic/sdk/impl/ji;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/nn;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/nn;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/kq;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nn;->f:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nn;->i:Ljava/util/WeakHashMap;

    .line 55
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/nn;->b:Ljava/lang/ClassLoader;

    .line 56
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 241
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/nq;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 244
    :try_start_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 245
    if-nez v0, :cond_0

    .line 246
    if-eqz v1, :cond_1

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->d:[Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 247
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 248
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/nn;->e:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    return-object v0

    .line 246
    :cond_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->c:[Ljava/lang/Class;

    goto :goto_0

    .line 250
    :cond_2
    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b()Lcom/flurry/android/monolithic/sdk/impl/nn;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->a:Lcom/flurry/android/monolithic/sdk/impl/nn;

    return-object v0
.end method

.method public static c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ""

    .line 125
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->f()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->d()Ljava/lang/String;

    move-result-object v1

    .line 127
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 130
    :goto_0
    return-object v0

    .line 129
    :cond_1
    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    move-object v2, v3

    .line 130
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_2
    const-string v2, "."

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Z)I
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/np;->a:[I

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/kj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/kq;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;Z)I

    move-result v0

    :goto_0
    return v0

    .line 229
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    .line 230
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    check-cast p2, Ljava/lang/Enum;

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

.method public a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nn;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 139
    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/nn;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-object v0
.end method

.method protected a(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ji;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v6, Ljava/lang/CharSequence;

    .line 150
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-class v1, Ljava/lang/CharSequence;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/kj;->g:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    .line 153
    :cond_0
    const-class v1, Ljava/nio/ByteBuffer;

    if-ne p1, v1, :cond_1

    .line 154
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/kj;->h:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto :goto_0

    .line 155
    :cond_1
    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 156
    :cond_2
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/kj;->i:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_3
    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    .line 158
    :cond_4
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/kj;->j:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto :goto_0

    .line 159
    :cond_5
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_6

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    .line 160
    :cond_6
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/kj;->k:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_7
    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_8

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_9

    .line 162
    :cond_8
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/kj;->l:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto :goto_0

    .line 163
    :cond_9
    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_a

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_b

    .line 164
    :cond_a
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/kj;->m:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_b
    const-class v1, Ljava/lang/Void;

    if-eq p1, v1, :cond_c

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_d

    .line 166
    :cond_c
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/kj;->n:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kj;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto :goto_0

    .line 167
    :cond_d
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_13

    .line 168
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, v0

    .line 169
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 170
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 171
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 172
    array-length v2, v1

    if-eq v2, v5, :cond_e

    .line 173
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jh;

    const-string v2, "No array type specified."

    invoke-direct {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_e
    aget-object v1, v1, v4

    invoke-virtual {p0, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto/16 :goto_0

    .line 175
    :cond_f
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 176
    aget-object v2, v1, v4

    .line 177
    aget-object v1, v1, v5

    .line 178
    instance-of v3, p1, Ljava/lang/Class;

    if-eqz v3, :cond_10

    const-class v3, Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 180
    :cond_10
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jh;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Map key class not CharSequence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_11
    invoke-virtual {p0, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto/16 :goto_0

    .line 183
    :cond_12
    invoke-virtual {p0, v2, p2}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    goto/16 :goto_0

    .line 185
    :cond_13
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_14

    .line 186
    check-cast p1, Ljava/lang/Class;

    .line 187
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 189
    if-nez p0, :cond_15

    .line 191
    :try_start_0
    const-string v2, "SCHEMA$"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 193
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/nn;->c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 195
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->f(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 203
    :goto_1
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 204
    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a Specific class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :catch_1
    move-exception v1

    .line 201
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/jg;

    invoke-direct {v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 206
    :cond_14
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jh;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move-object v2, p0

    goto :goto_1
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ji;)Lcom/flurry/android/monolithic/sdk/impl/lw;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/nr;

    invoke-direct {v0, p1, p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/nr;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/nn;)V

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Class;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/np;->a:[I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a()Lcom/flurry/android/monolithic/sdk/impl/kj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/kj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->g()Ljava/lang/String;

    move-result-object v1

    .line 90
    if-nez v1, :cond_1

    move-object v0, v4

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nn;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 92
    if-nez v0, :cond_2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nn;->b:Ljava/lang/ClassLoader;

    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/nn;->c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_1
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nn;->f:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/nn;->g:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    move-object v0, v4

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->g:Ljava/lang/Class;

    goto :goto_1

    .line 101
    :pswitch_1
    const-class v0, Ljava/util/List;

    goto :goto_0

    .line 102
    :pswitch_2
    const-class v0, Ljava/util/Map;

    goto :goto_0

    .line 104
    :pswitch_3
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->k()Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/nn;->h:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/nn;->h:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    .line 107
    :cond_4
    const-class v0, Ljava/lang/Object;

    goto :goto_0

    .line 109
    :pswitch_4
    const-string v0, "String"

    const-string v1, "avro.java.string"

    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    const-class v0, Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_5
    const-class v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 112
    :pswitch_5
    const-class v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 113
    :pswitch_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 114
    :pswitch_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 115
    :pswitch_8
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 116
    :pswitch_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 117
    :pswitch_a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto/16 :goto_0

    .line 118
    :pswitch_b
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

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

.method public c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b()Lcom/flurry/android/monolithic/sdk/impl/nn;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Class;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kq;->c(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 266
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b()Lcom/flurry/android/monolithic/sdk/impl/nn;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b(Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Class;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kq;->d(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ji;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected f(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 68
    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/kq;->f(Ljava/lang/Object;)Z

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

.method protected g(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 1

    .prologue
    .line 73
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/kq;->g(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    goto :goto_0
.end method
