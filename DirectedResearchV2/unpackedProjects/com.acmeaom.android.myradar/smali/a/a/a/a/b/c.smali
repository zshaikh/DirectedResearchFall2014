.class final La/a/a/a/b/c;
.super La/a/a/a/c/a;
.source "ProGuard"


# instance fields
.field final synthetic a:D


# direct methods
.method constructor <init>(D)V
    .locals 0

    .prologue
    .line 404
    iput-wide p1, p0, La/a/a/a/b/c;->a:D

    invoke-direct {p0}, La/a/a/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ID)D
    .locals 4

    .prologue
    .line 408
    const-wide/high16 v0, 0x4000000000000000L

    int-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L

    add-double/2addr v0, v2

    iget-wide v2, p0, La/a/a/a/b/c;->a:D

    sub-double/2addr v0, v2

    add-double/2addr v0, p2

    return-wide v0
.end method

.method protected b(ID)D
    .locals 6

    .prologue
    .line 413
    int-to-double v0, p1

    iget-wide v2, p0, La/a/a/a/b/c;->a:D

    int-to-double v4, p1

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method
