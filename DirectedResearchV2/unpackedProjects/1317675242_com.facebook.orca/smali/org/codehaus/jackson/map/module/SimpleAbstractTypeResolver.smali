.class public Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;
.super Lorg/codehaus/jackson/map/AbstractTypeResolver;
.source "SimpleAbstractTypeResolver.java"


# instance fields
.field protected final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/codehaus/jackson/map/AbstractTypeResolver;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;->a:Ljava/util/HashMap;

    new-instance v2, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v2, v0}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p0}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method
