.class public Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;
.super Lorg/codehaus/jackson/map/DeserializerFactory$Config;
.source "BeanDeserializerFactory.java"


# static fields
.field protected static final a:[Lorg/codehaus/jackson/map/KeyDeserializers;

.field protected static final b:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

.field protected static final c:[Lorg/codehaus/jackson/map/AbstractTypeResolver;


# instance fields
.field protected final d:[Lorg/codehaus/jackson/map/Deserializers;

.field protected final e:[Lorg/codehaus/jackson/map/KeyDeserializers;

.field protected final f:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

.field protected final g:[Lorg/codehaus/jackson/map/AbstractTypeResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    new-array v0, v1, [Lorg/codehaus/jackson/map/KeyDeserializers;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->a:[Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 45
    new-array v0, v1, [Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->b:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 46
    new-array v0, v1, [Lorg/codehaus/jackson/map/AbstractTypeResolver;

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->c:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    .line 85
    return-void
.end method

.method protected constructor <init>([Lorg/codehaus/jackson/map/Deserializers;[Lorg/codehaus/jackson/map/KeyDeserializers;[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lorg/codehaus/jackson/map/AbstractTypeResolver;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;-><init>()V

    .line 96
    if-nez p1, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a()[Lorg/codehaus/jackson/map/Deserializers;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->d:[Lorg/codehaus/jackson/map/Deserializers;

    .line 98
    if-nez p2, :cond_1

    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->a:[Lorg/codehaus/jackson/map/KeyDeserializers;

    :goto_1
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->e:[Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 100
    if-nez p3, :cond_2

    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->b:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    :goto_2
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->f:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 101
    if-nez p4, :cond_3

    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->c:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    :goto_3
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->g:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 102
    return-void

    :cond_0
    move-object v0, p1

    .line 96
    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 98
    goto :goto_1

    :cond_2
    move-object v0, p3

    .line 100
    goto :goto_2

    :cond_3
    move-object v0, p4

    .line 101
    goto :goto_3
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->e:[Lorg/codehaus/jackson/map/KeyDeserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->f:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->g:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/Deserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->d:[Lorg/codehaus/jackson/map/Deserializers;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/KeyDeserializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->e:[Lorg/codehaus/jackson/map/KeyDeserializers;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->f:[Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/codehaus/jackson/map/AbstractTypeResolver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->g:[Lorg/codehaus/jackson/map/AbstractTypeResolver;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
