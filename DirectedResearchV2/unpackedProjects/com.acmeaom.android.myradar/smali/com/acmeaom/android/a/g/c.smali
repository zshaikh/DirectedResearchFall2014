.class public Lcom/acmeaom/android/a/g/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/acmeaom/android/a/g/c;->a:F

    .line 11
    iput p2, p0, Lcom/acmeaom/android/a/g/c;->b:F

    .line 12
    iput p3, p0, Lcom/acmeaom/android/a/g/c;->c:F

    .line 13
    iput p4, p0, Lcom/acmeaom/android/a/g/c;->d:F

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/g/c;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget v0, p1, Lcom/acmeaom/android/a/g/c;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/g/c;->a:F

    .line 21
    iget v0, p1, Lcom/acmeaom/android/a/g/c;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/g/c;->b:F

    .line 22
    iget v0, p1, Lcom/acmeaom/android/a/g/c;->c:F

    iput v0, p0, Lcom/acmeaom/android/a/g/c;->c:F

    .line 23
    iget v0, p1, Lcom/acmeaom/android/a/g/c;->d:F

    iput v0, p0, Lcom/acmeaom/android/a/g/c;->d:F

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/g/c;)V
    .locals 1

    .prologue
    .line 27
    iget v0, p1, Lcom/acmeaom/android/a/g/c;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/g/c;->a:F

    .line 28
    iget v0, p1, Lcom/acmeaom/android/a/g/c;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/g/c;->b:F

    .line 29
    iget v0, p1, Lcom/acmeaom/android/a/g/c;->c:F

    iput v0, p0, Lcom/acmeaom/android/a/g/c;->c:F

    .line 30
    iget v0, p1, Lcom/acmeaom/android/a/g/c;->d:F

    iput v0, p0, Lcom/acmeaom/android/a/g/c;->d:F

    .line 31
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget v0, p0, Lcom/acmeaom/android/a/g/c;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/c;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/c;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/c;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/g/c;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/g/c;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/g/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/g/c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
