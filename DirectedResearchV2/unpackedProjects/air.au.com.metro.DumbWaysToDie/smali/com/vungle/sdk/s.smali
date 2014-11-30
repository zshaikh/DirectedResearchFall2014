.class final Lcom/vungle/sdk/s;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/s$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Ljava/lang/Thread;

.field private static c:Lcom/vungle/sdk/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/16 v0, 0x2710

    sput v0, Lcom/vungle/sdk/s;->a:I

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/vungle/sdk/s;->b:Ljava/lang/Thread;

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    .prologue
    .line 15
    const-class v0, Lcom/vungle/sdk/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vungle/sdk/s;->b:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 22
    :goto_0
    monitor-exit v0

    return-void

    .line 17
    :cond_0
    :try_start_1
    new-instance v1, Lcom/vungle/sdk/s$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vungle/sdk/s$a;-><init>(B)V

    sput-object v1, Lcom/vungle/sdk/s;->c:Lcom/vungle/sdk/s$a;

    .line 18
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/vungle/sdk/s;->c:Lcom/vungle/sdk/s$a;

    const-string v3, "VungleSDKStatusThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 19
    sput-object v1, Lcom/vungle/sdk/s;->b:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 20
    sget-object v1, Lcom/vungle/sdk/s;->b:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 21
    sget-object v1, Lcom/vungle/sdk/s;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/vungle/sdk/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vungle/sdk/s;->b:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 29
    :goto_0
    monitor-exit v0

    return-void

    .line 26
    :cond_0
    :try_start_1
    sget-object v1, Lcom/vungle/sdk/s;->c:Lcom/vungle/sdk/s$a;

    invoke-virtual {v1}, Lcom/vungle/sdk/s$a;->a()V

    .line 27
    const/4 v1, 0x0

    sput-object v1, Lcom/vungle/sdk/s;->c:Lcom/vungle/sdk/s$a;

    .line 28
    const/4 v1, 0x0

    sput-object v1, Lcom/vungle/sdk/s;->b:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 3
    sget v0, Lcom/vungle/sdk/s;->a:I

    return v0
.end method
