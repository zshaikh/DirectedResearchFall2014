.class Ldolphin/net/b/d;
.super Ljava/lang/Object;
.source "DNSPrefetchQueue.java"


# instance fields
.field a:[Ldolphin/net/b/e;

.field final synthetic b:Ldolphin/net/b/c;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Ldolphin/net/b/c;I)V
    .locals 4

    .prologue
    .line 65
    iput-object p1, p0, Ldolphin/net/b/d;->b:Ldolphin/net/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/net/b/d;->e:I

    .line 66
    iput p2, p0, Ldolphin/net/b/d;->d:I

    .line 67
    new-array v0, p2, [Ldolphin/net/b/e;

    iput-object v0, p0, Ldolphin/net/b/d;->a:[Ldolphin/net/b/e;

    .line 69
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ldolphin/net/b/d;->d:I

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Ldolphin/net/b/d;->a:[Ldolphin/net/b/e;

    new-instance v2, Ldolphin/net/b/e;

    invoke-static {p1}, Ldolphin/net/b/c;->a(Ldolphin/net/b/c;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Ldolphin/net/b/e;-><init>(Landroid/content/Context;ILdolphin/net/b/b;)V

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic a(Ldolphin/net/b/d;)I
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Ldolphin/net/b/d;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldolphin/net/b/d;->c:I

    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ldolphin/net/b/d;->d:I

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Ldolphin/net/b/d;->a:[Ldolphin/net/b/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ldolphin/net/b/e;->start()V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Ldolphin/net/b/d;->b:Ldolphin/net/b/c;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Ldolphin/net/b/d;->b:Ldolphin/net/b/c;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
