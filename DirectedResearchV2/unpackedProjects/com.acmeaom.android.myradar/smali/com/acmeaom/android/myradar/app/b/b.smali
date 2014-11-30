.class public Lcom/acmeaom/android/myradar/app/b/b;
.super Lcom/acmeaom/android/a/d/a;
.source "ProGuard"


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    .prologue
    .line 20
    invoke-static {p1, p2}, Lcom/acmeaom/android/myradar/app/b/a;->a(D)I

    move-result v0

    invoke-static {p3, p4}, Lcom/acmeaom/android/myradar/app/b/a;->a(D)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/a/d/a;-><init>(II)V

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/a/d/a;-><init>(II)V

    .line 17
    return-void
.end method
