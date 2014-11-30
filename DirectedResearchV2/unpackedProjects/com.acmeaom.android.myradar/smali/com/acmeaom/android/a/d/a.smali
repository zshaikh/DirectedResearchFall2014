.class public Lcom/acmeaom/android/a/d/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/acmeaom/android/a/d/a;->a:I

    .line 13
    iput p2, p0, Lcom/acmeaom/android/a/d/a;->b:I

    .line 14
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/acmeaom/android/a/d/a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/acmeaom/android/a/d/a;->b:I

    return v0
.end method

.method public c()Lcom/acmeaom/android/a/g/m;
    .locals 5

    .prologue
    const v4, 0x358637bd

    .line 25
    new-instance v0, Lcom/acmeaom/android/a/a/d/b;

    iget v1, p0, Lcom/acmeaom/android/a/d/a;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-double v1, v1

    iget v3, p0, Lcom/acmeaom/android/a/d/a;->b:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/acmeaom/android/a/a/d/b;-><init>(DD)V

    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    return-object v0
.end method
