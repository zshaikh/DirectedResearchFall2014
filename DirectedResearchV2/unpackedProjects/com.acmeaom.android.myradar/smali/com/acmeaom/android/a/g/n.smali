.class public Lcom/acmeaom/android/a/g/n;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/acmeaom/android/a/g/n;


# instance fields
.field public b:F

.field public c:F

.field public d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x7fc00000

    .line 6
    new-instance v0, Lcom/acmeaom/android/a/g/n;

    invoke-direct {v0, v1, v1, v1}, Lcom/acmeaom/android/a/g/n;-><init>(FFF)V

    sput-object v0, Lcom/acmeaom/android/a/g/n;->a:Lcom/acmeaom/android/a/g/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/acmeaom/android/a/g/n;->b:F

    .line 13
    iput p2, p0, Lcom/acmeaom/android/a/g/n;->c:F

    .line 14
    iput p3, p0, Lcom/acmeaom/android/a/g/n;->d:F

    .line 15
    return-void
.end method

.method public static a([Lcom/acmeaom/android/a/g/n;Ljava/nio/FloatBuffer;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 21
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 22
    const/4 v4, 0x3

    new-array v4, v4, [F

    iget v5, v3, Lcom/acmeaom/android/a/g/n;->b:F

    aput v5, v4, v1

    const/4 v5, 0x1

    iget v6, v3, Lcom/acmeaom/android/a/g/n;->c:F

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v3, v3, Lcom/acmeaom/android/a/g/n;->d:F

    aput v3, v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/high16 v3, 0x7fc00000

    const/high16 v2, 0x7f800000

    const/high16 v1, -0x800000

    .line 27
    iget v0, p0, Lcom/acmeaom/android/a/g/n;->b:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/n;->b:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/n;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/n;->c:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/n;->c:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/n;->c:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/n;->d:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/n;->d:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/acmeaom/android/a/g/n;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
