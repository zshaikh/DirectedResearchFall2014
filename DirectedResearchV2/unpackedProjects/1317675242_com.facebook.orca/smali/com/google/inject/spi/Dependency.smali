.class public final Lcom/google/inject/spi/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final injectionPoint:Lcom/google/inject/spi/InjectionPoint;

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final nullable:Z

.field private final parameterIndex:I


# direct methods
.method constructor <init>(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/Key;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionPoint;",
            "Lcom/google/inject/Key",
            "<TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    .line 45
    iput-object p2, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    .line 46
    iput-boolean p3, p0, Lcom/google/inject/spi/Dependency;->nullable:Z

    .line 47
    iput p4, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    .line 48
    return-void
.end method

.method public static get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/spi/Dependency",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/google/inject/spi/Dependency;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/inject/spi/Dependency;-><init>(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/Key;ZI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    instance-of v0, p1, Lcom/google/inject/spi/Dependency;

    if-eqz v0, :cond_1

    .line 106
    check-cast p1, Lcom/google/inject/spi/Dependency;

    .line 107
    iget-object v0, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    iget-object v1, p1, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-static {v0, v1}, Lcom/google/inject/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    iget-object v1, p1, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    invoke-static {v0, v1}, Lcom/google/inject/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    :cond_1
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method public getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public getKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    return-object v0
.end method

.method public getParameterIndex()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/inject/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNullable()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/inject/spi/Dependency;->nullable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 121
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
