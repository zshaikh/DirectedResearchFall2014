.class public final Lcom/flurry/android/monolithic/sdk/impl/xn;
.super Lcom/flurry/android/monolithic/sdk/impl/xk;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected final c:Ljava/lang/reflect/Type;

.field protected final d:I


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/xo;Ljava/lang/reflect/Type;Lcom/flurry/android/monolithic/sdk/impl/xp;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p3}, Lcom/flurry/android/monolithic/sdk/impl/xk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    .line 54
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->a:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 55
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->c:Ljava/lang/reflect/Type;

    .line 56
    iput p4, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->d:I

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/xp;)Lcom/flurry/android/monolithic/sdk/impl/xn;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->b:Lcom/flurry/android/monolithic/sdk/impl/xp;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->a:Lcom/flurry/android/monolithic/sdk/impl/xo;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->d:I

    invoke-virtual {v0, v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a(ILcom/flurry/android/monolithic/sdk/impl/xp;)Lcom/flurry/android/monolithic/sdk/impl/xn;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->b:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xp;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setValue() on constructor parameter of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xn;->h()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->c:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->c:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->c:Ljava/lang/reflect/Type;

    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    .line 122
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->c:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public f()Lcom/flurry/android/monolithic/sdk/impl/xo;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->a:Lcom/flurry/android/monolithic/sdk/impl/xo;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->d:I

    return v0
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
    .line 133
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->a:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xo;->h()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->a:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xo;->i()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xn;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xn;->b:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
