.class public final Lcom/dolphin/browser/core/be;
.super Ljava/lang/Object;
.source "UsageManager.java"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static final a()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/dolphin/browser/core/be;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/dolphin/browser/core/bf;

    invoke-direct {v0}, Lcom/dolphin/browser/core/bf;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/be;->a:Landroid/os/Handler;

    .line 159
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/be;->b:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/core/be;->b:Ljava/util/HashSet;

    .line 162
    :cond_1
    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/dolphin/browser/core/be;->a()V

    .line 171
    invoke-static {}, Lcom/dolphin/browser/core/bb;->a()Lcom/dolphin/browser/core/bb;

    move-result-object v0

    const-string v1, "speed_dial"

    invoke-virtual {v0, v1, p0}, Lcom/dolphin/browser/core/bb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 224
    invoke-static {}, Lcom/dolphin/browser/core/be;->a()V

    .line 225
    sget-object v1, Lcom/dolphin/browser/core/be;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 226
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/be;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/dolphin/browser/core/be;->a:Landroid/os/Handler;

    const/16 v2, 0x5000

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 228
    sget-object v2, Lcom/dolphin/browser/core/be;->a:Landroid/os/Handler;

    const-wide/32 v3, 0x6ddd00

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 229
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-static {}, Lcom/dolphin/browser/core/bb;->a()Lcom/dolphin/browser/core/bb;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/core/bb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void

    .line 229
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/dolphin/browser/core/be;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/dolphin/browser/core/be;->a()V

    .line 181
    invoke-static {}, Lcom/dolphin/browser/core/bb;->a()Lcom/dolphin/browser/core/bb;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1, p0}, Lcom/dolphin/browser/core/bb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    const-string v0, "speed_dial"

    invoke-static {v0, p0}, Lcom/dolphin/browser/core/be;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method
