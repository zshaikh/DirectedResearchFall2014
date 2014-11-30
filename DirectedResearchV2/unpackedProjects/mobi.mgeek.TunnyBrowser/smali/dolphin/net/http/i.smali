.class Ldolphin/net/http/i;
.super Ljava/lang/Object;
.source "ConnectionPreconnectQueue.java"


# instance fields
.field a:[Ldolphin/net/http/j;

.field final synthetic b:Ldolphin/net/http/h;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Ldolphin/net/http/h;I)V
    .locals 4

    .prologue
    .line 64
    iput-object p1, p0, Ldolphin/net/http/i;->b:Ldolphin/net/http/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/net/http/i;->d:I

    .line 65
    iput p2, p0, Ldolphin/net/http/i;->c:I

    .line 66
    new-array v0, p2, [Ldolphin/net/http/j;

    iput-object v0, p0, Ldolphin/net/http/i;->a:[Ldolphin/net/http/j;

    .line 68
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ldolphin/net/http/i;->c:I

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Ldolphin/net/http/i;->a:[Ldolphin/net/http/j;

    new-instance v2, Ldolphin/net/http/j;

    invoke-static {p1}, Ldolphin/net/http/h;->a(Ldolphin/net/http/h;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Ldolphin/net/http/j;-><init>(Landroid/content/Context;ILdolphin/net/http/g;)V

    aput-object v2, v1, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ldolphin/net/http/i;->c:I

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Ldolphin/net/http/i;->a:[Ldolphin/net/http/j;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ldolphin/net/http/j;->start()V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method
