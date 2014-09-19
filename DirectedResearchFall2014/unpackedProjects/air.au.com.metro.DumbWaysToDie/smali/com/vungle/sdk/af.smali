.class public final Lcom/vungle/sdk/af;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field final a:Landroid/content/Context;

.field private b:Lcom/vungle/sdk/VungleCache;

.field private c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/af;->c:Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/af;->a:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method final a()Lcom/vungle/sdk/VungleCache;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/sdk/af;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/vungle/sdk/af;->b:Lcom/vungle/sdk/VungleCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 71
    :try_start_1
    new-instance v1, Lcom/vungle/sdk/VungleCache;

    invoke-direct {v1}, Lcom/vungle/sdk/VungleCache;-><init>()V

    iput-object v1, p0, Lcom/vungle/sdk/af;->b:Lcom/vungle/sdk/VungleCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/vungle/sdk/VungleCache$d; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/vungle/sdk/af;->b:Lcom/vungle/sdk/VungleCache;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
