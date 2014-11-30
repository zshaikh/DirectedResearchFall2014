.class La/a/a/a/c/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[D

.field private static final b:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3788
    invoke-static {}, La/a/a/a/c/f;->c()[D

    move-result-object v0

    sput-object v0, La/a/a/a/c/c;->a:[D

    .line 3789
    invoke-static {}, La/a/a/a/c/f;->d()[D

    move-result-object v0

    sput-object v0, La/a/a/a/c/c;->b:[D

    .line 3791
    return-void
.end method

.method static synthetic a()[D
    .locals 1

    .prologue
    .line 3762
    sget-object v0, La/a/a/a/c/c;->a:[D

    return-object v0
.end method

.method static synthetic b()[D
    .locals 1

    .prologue
    .line 3762
    sget-object v0, La/a/a/a/c/c;->b:[D

    return-object v0
.end method
