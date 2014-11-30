.class public La/a/a/a/a/g;
.super La/a/a/a/a/c;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/Number;

.field private final b:Z


# direct methods
.method public constructor <init>(La/a/a/a/a/a/c;Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, La/a/a/a/a/c;-><init>(La/a/a/a/a/a/c;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 70
    iput-object p3, p0, La/a/a/a/a/g;->a:Ljava/lang/Number;

    .line 71
    iput-boolean p4, p0, La/a/a/a/a/g;->b:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Z)V
    .locals 1

    .prologue
    .line 50
    if-eqz p3, :cond_0

    sget-object v0, La/a/a/a/a/a/d;->dp:La/a/a/a/a/a/d;

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, La/a/a/a/a/g;-><init>(La/a/a/a/a/a/c;Ljava/lang/Number;Ljava/lang/Number;Z)V

    .line 54
    return-void

    .line 50
    :cond_0
    sget-object v0, La/a/a/a/a/a/d;->dr:La/a/a/a/a/a/d;

    goto :goto_0
.end method
