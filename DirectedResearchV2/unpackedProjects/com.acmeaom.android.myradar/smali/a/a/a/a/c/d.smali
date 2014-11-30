.class La/a/a/a/c/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[D

.field private static final b:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3755
    invoke-static {}, La/a/a/a/c/f;->a()[D

    move-result-object v0

    sput-object v0, La/a/a/a/c/d;->a:[D

    .line 3756
    invoke-static {}, La/a/a/a/c/f;->b()[D

    move-result-object v0

    sput-object v0, La/a/a/a/c/d;->b:[D

    .line 3758
    return-void
.end method

.method static synthetic a()[D
    .locals 1

    .prologue
    .line 3723
    sget-object v0, La/a/a/a/c/d;->a:[D

    return-object v0
.end method

.method static synthetic b()[D
    .locals 1

    .prologue
    .line 3723
    sget-object v0, La/a/a/a/c/d;->b:[D

    return-object v0
.end method
