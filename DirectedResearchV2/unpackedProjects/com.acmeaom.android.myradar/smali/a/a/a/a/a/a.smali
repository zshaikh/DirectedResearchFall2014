.class public La/a/a/a/a/a;
.super La/a/a/a/a/d;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, La/a/a/a/a/a/d;->K:La/a/a/a/a/a/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, La/a/a/a/a/a;-><init>(La/a/a/a/a/a/c;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public varargs constructor <init>(La/a/a/a/a/a/c;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, La/a/a/a/a/d;-><init>()V

    .line 49
    invoke-virtual {p0}, La/a/a/a/a/a;->a()La/a/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, La/a/a/a/a/a/b;->a(La/a/a/a/a/a/c;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method
