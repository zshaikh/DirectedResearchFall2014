.class public final Lcom/flurry/android/monolithic/sdk/impl/xl;
.super Lcom/flurry/android/monolithic/sdk/impl/xo;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/reflect/Method;

.field protected c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/xo;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    .line 26
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/adj;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->a(Lcom/flurry/android/monolithic/sdk/impl/adj;[Ljava/lang/reflect/TypeVariable;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/xp;)Lcom/flurry/android/monolithic/sdk/impl/xl;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->d:[Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-direct {v0, v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/xl;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->b:Lcom/flurry/android/monolithic/sdk/impl/xp;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->d:[Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/xl;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    return-object v0
.end method

.method public a(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 150
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-string v5, "Failed to setValue() with method "

    const-string v4, ": "

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to setValue() with method "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 125
    :catch_1
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to setValue() with method "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 157
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public c()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->l()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public l()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public m()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->c:[Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->c:[Ljava/lang/Class;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->c:[Ljava/lang/Class;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->h()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " params)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xl;->b:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
