.class public Lcom/acmeaom/android/a/g/m;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/acmeaom/android/a/g/m;

.field public static final b:Lcom/acmeaom/android/a/g/m;

.field public static final c:Lcom/acmeaom/android/a/g/m;


# instance fields
.field public d:F

.field public e:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x7fc00000

    const/4 v1, 0x0

    .line 10
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0, v2, v2}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    sput-object v0, Lcom/acmeaom/android/a/g/m;->a:Lcom/acmeaom/android/a/g/m;

    .line 11
    sget-object v0, Lcom/acmeaom/android/a/g/m;->a:Lcom/acmeaom/android/a/g/m;

    sput-object v0, Lcom/acmeaom/android/a/g/m;->b:Lcom/acmeaom/android/a/g/m;

    .line 12
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0, v1, v1}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    sput-object v0, Lcom/acmeaom/android/a/g/m;->c:Lcom/acmeaom/android/a/g/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 19
    iput p2, p0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/c/l;)V
    .locals 1

    .prologue
    .line 31
    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 32
    iget v0, p1, Lcom/acmeaom/android/a/a/c/l;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 33
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/n;)V
    .locals 1

    .prologue
    .line 36
    iget v0, p1, Lcom/acmeaom/android/a/a/c/n;->a:F

    iput v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 37
    iget v0, p1, Lcom/acmeaom/android/a/a/c/n;->b:F

    iput v0, p0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 38
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/g/m;)V
    .locals 1

    .prologue
    .line 41
    iget v0, p1, Lcom/acmeaom/android/a/g/m;->d:F

    iput v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 42
    iget v0, p1, Lcom/acmeaom/android/a/g/m;->e:F

    iput v0, p0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 43
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/high16 v1, 0x7fc00000

    .line 26
    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/m;->e:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/m;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/m;->e:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    if-ne p1, p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    instance-of v2, p1, Lcom/acmeaom/android/a/g/m;

    if-nez v2, :cond_2

    move v0, v1

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    check-cast p1, Lcom/acmeaom/android/a/g/m;

    .line 54
    iget v2, p1, Lcom/acmeaom/android/a/g/m;->d:F

    iget v3, p0, Lcom/acmeaom/android/a/g/m;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p1, Lcom/acmeaom/android/a/g/m;->e:F

    iget v3, p0, Lcom/acmeaom/android/a/g/m;->e:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/g/m;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/acmeaom/android/a/g/m;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
