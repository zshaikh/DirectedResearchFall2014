.class public Lcom/acmeaom/android/a/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 7
    const-wide/high16 v0, 0x3ff0000000000000L

    const-wide/high16 v2, 0x4000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lcom/acmeaom/android/a/b/a;->a:D

    return-void
.end method

.method public static a(F)F
    .locals 1

    .prologue
    .line 15
    invoke-static {p0}, Lcom/acmeaom/android/c/d/a;->e(F)F

    move-result v0

    return v0
.end method

.method public static a(D)Z
    .locals 1

    .prologue
    .line 11
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method
