.class public Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;
.super Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;
.source "MinimalClassNameIdResolver.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/type/TypeFactory;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/type/TypeFactory;)V

    .line 25
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 26
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 27
    if-gez v1, :cond_0

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->a:Ljava/lang/String;

    .line 29
    const-string v0, "."

    iput-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->b:Ljava/lang/String;

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3

    .prologue
    .line 53
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    iget-object v1, p0, Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_1
    invoke-super {p0, v0}, Lorg/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->a(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1
.end method
