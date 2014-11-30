.class public La/a/a/a/a/c;
.super La/a/a/a/a/b;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/Number;


# direct methods
.method protected varargs constructor <init>(La/a/a/a/a/a/c;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, La/a/a/a/a/b;-><init>(La/a/a/a/a/a/c;[Ljava/lang/Object;)V

    .line 47
    iput-object p2, p0, La/a/a/a/a/c;->a:Ljava/lang/Number;

    .line 48
    return-void
.end method
