.class public abstract Lcom/acmeaom/android/c/h/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/g/l;
.implements Lcom/acmeaom/android/c/a;


# instance fields
.field private a:Lcom/acmeaom/android/c/h/l;

.field protected final b:Lcom/acmeaom/android/a/a/a/b;

.field protected final c:Lcom/acmeaom/android/c/c/f;

.field protected d:Lcom/acmeaom/android/c/h/m;

.field protected e:Lcom/acmeaom/android/c/c/f;

.field protected f:I

.field private g:F

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/h/m;Lcom/acmeaom/android/c/c/f;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/h/k;->b:Lcom/acmeaom/android/a/a/a/b;

    .line 23
    iput-object p2, p0, Lcom/acmeaom/android/c/h/k;->c:Lcom/acmeaom/android/c/c/f;

    .line 26
    invoke-virtual {p1}, Lcom/acmeaom/android/c/h/m;->b()Lcom/acmeaom/android/c/h/m;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/h/k;->d:Lcom/acmeaom/android/c/h/m;

    .line 27
    iget-object v0, p0, Lcom/acmeaom/android/c/h/k;->d:Lcom/acmeaom/android/c/h/m;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    .line 32
    :cond_0
    sget-object v0, Lcom/acmeaom/android/c/h/l;->a:Lcom/acmeaom/android/c/h/l;

    iput-object v0, p0, Lcom/acmeaom/android/c/h/k;->a:Lcom/acmeaom/android/c/h/l;

    .line 33
    iput-object p2, p0, Lcom/acmeaom/android/c/h/k;->e:Lcom/acmeaom/android/c/c/f;

    .line 34
    iget-object v0, p0, Lcom/acmeaom/android/c/h/k;->b:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {p1}, Lcom/acmeaom/android/c/h/m;->d()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .prologue
    .line 69
    iput p1, p0, Lcom/acmeaom/android/c/h/k;->g:F

    .line 70
    iget-object v0, p0, Lcom/acmeaom/android/c/h/k;->e:Lcom/acmeaom/android/c/c/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->k()Lcom/acmeaom/android/c/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b;->n()V

    .line 71
    return-void
.end method

.method protected a(Lcom/acmeaom/android/c/h/l;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/acmeaom/android/c/h/k;->a:Lcom/acmeaom/android/c/h/l;

    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/c/h/k;->e:Lcom/acmeaom/android/c/c/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/f;->o()V

    .line 66
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/acmeaom/android/c/h/k;->h:Z

    .line 75
    return-void
.end method

.method public abstract b()V
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/acmeaom/android/c/h/k;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/acmeaom/android/c/h/k;->h:Z

    return v0
.end method

.method public h()Lcom/acmeaom/android/c/h/l;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/acmeaom/android/c/h/k;->a:Lcom/acmeaom/android/c/h/l;

    return-object v0
.end method

.method public i()Lcom/acmeaom/android/c/h/m;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/acmeaom/android/c/h/k;->d:Lcom/acmeaom/android/c/h/m;

    return-object v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/acmeaom/android/c/h/k;->g:F

    return v0
.end method

.method public k()Lcom/acmeaom/android/c/c/f;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/acmeaom/android/c/h/k;->e:Lcom/acmeaom/android/c/c/f;

    return-object v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    const-string v0, "<%s @ %s, %s, %s>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/acmeaom/android/c/h/k;->d:Lcom/acmeaom/android/c/h/m;

    invoke-virtual {v3}, Lcom/acmeaom/android/c/h/m;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/acmeaom/android/c/h/k;->a:Lcom/acmeaom/android/c/h/l;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
