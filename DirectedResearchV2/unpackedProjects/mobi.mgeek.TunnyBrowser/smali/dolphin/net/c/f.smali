.class Ldolphin/net/c/f;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# instance fields
.field a:[Ldolphin/net/c/i;

.field final synthetic b:Ldolphin/net/c/e;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Ldolphin/net/c/e;I)V
    .locals 4

    .prologue
    .line 77
    iput-object p1, p0, Ldolphin/net/c/f;->b:Ldolphin/net/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p2, p0, Ldolphin/net/c/f;->d:I

    .line 79
    iget v0, p0, Ldolphin/net/c/f;->d:I

    new-array v0, v0, [Ldolphin/net/c/i;

    iput-object v0, p0, Ldolphin/net/c/f;->a:[Ldolphin/net/c/i;

    .line 81
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ldolphin/net/c/f;->d:I

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Ldolphin/net/c/f;->a:[Ldolphin/net/c/i;

    new-instance v2, Ldolphin/net/c/i;

    invoke-static {p1}, Ldolphin/net/c/e;->a(Ldolphin/net/c/e;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Ldolphin/net/c/i;-><init>(Landroid/content/Context;ILdolphin/net/c/b;)V

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic a(Ldolphin/net/c/f;)I
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Ldolphin/net/c/f;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ldolphin/net/c/f;->c:I

    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ldolphin/net/c/f;->d:I

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Ldolphin/net/c/f;->a:[Ldolphin/net/c/i;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ldolphin/net/c/i;->start()V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ldolphin/net/c/f;->d:I

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Ldolphin/net/c/f;->a:[Ldolphin/net/c/i;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ldolphin/net/c/i;->a()V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Ldolphin/net/c/f;->b:Ldolphin/net/c/e;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Ldolphin/net/c/f;->b:Ldolphin/net/c/e;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    move v0, v1

    :goto_0
    iget v2, p0, Ldolphin/net/c/f;->d:I

    if-ge v0, v2, :cond_1

    .line 142
    iget-object v2, p0, Ldolphin/net/c/f;->a:[Ldolphin/net/c/i;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ldolphin/net/c/i;->b()Ldolphin/net/c/h;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ldolphin/net/c/h;->a()Ldolphin/net/http/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldolphin/net/http/c;->a(Z)V

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    return-void
.end method
