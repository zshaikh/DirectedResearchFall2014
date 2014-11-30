.class public Lcom/acmeaom/android/a/a/c/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/acmeaom/android/a/a/c/n;->a:F

    .line 11
    iput p2, p0, Lcom/acmeaom/android/a/a/c/n;->b:F

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/c/n;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget v0, p1, Lcom/acmeaom/android/a/a/c/n;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/a/c/n;->a:F

    .line 18
    iget v0, p1, Lcom/acmeaom/android/a/a/c/n;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/a/c/n;->b:F

    .line 19
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/c/n;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0, v1, v1}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    return-object v0
.end method

.method public static a(FF)Lcom/acmeaom/android/a/a/c/n;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0, p0, p1}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/c/n;)V
    .locals 1

    .prologue
    .line 26
    iget v0, p1, Lcom/acmeaom/android/a/a/c/n;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/a/c/n;->a:F

    .line 27
    iget v0, p1, Lcom/acmeaom/android/a/a/c/n;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/a/c/n;->b:F

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/c/n;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/c/n;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
