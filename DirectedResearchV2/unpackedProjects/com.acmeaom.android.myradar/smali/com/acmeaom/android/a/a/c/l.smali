.class public Lcom/acmeaom/android/a/a/c/l;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/acmeaom/android/a/a/c/l;->a:F

    .line 17
    iput p2, p0, Lcom/acmeaom/android/a/a/c/l;->b:F

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/a/c/l;->a:F

    .line 12
    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/a/c/l;->b:F

    .line 13
    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/c/l;
    .locals 2

    .prologue
    const/high16 v1, 0x7fc00000

    .line 4
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v0, v1, v1}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    return-object v0
.end method

.method public static b()Lcom/acmeaom/android/a/a/c/l;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    new-instance v0, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v0, v1, v1}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 1

    .prologue
    .line 28
    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/a/c/l;->a:F

    .line 29
    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/a/c/l;->b:F

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/c/l;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
