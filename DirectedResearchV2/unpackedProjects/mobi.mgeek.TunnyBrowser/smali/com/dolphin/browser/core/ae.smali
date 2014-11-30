.class public final Lcom/dolphin/browser/core/ae;
.super Ljava/lang/Object;
.source "NetworkPLOFactory.java"


# static fields
.field private static a:Lcom/dolphin/browser/core/INetworkPLO;


# direct methods
.method public static declared-synchronized a()Lcom/dolphin/browser/core/INetworkPLO;
    .locals 4

    .prologue
    .line 10
    const-class v1, Lcom/dolphin/browser/core/ae;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/ae;->a:Lcom/dolphin/browser/core/INetworkPLO;

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->r()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->n()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 14
    const-string v2, "com.dolphin.browser.dolphinwebkit.DolphinNetworkPLO"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 15
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 16
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/INetworkPLO;

    sput-object v0, Lcom/dolphin/browser/core/ae;->a:Lcom/dolphin/browser/core/INetworkPLO;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/dolphin/browser/core/ae;->a:Lcom/dolphin/browser/core/INetworkPLO;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    invoke-static {}, Lcom/dolphin/browser/core/NullNetworkPLO;->getInstance()Lcom/dolphin/browser/core/INetworkPLO;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/ae;->a:Lcom/dolphin/browser/core/INetworkPLO;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 22
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/dolphin/browser/core/NullNetworkPLO;->getInstance()Lcom/dolphin/browser/core/INetworkPLO;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/ae;->a:Lcom/dolphin/browser/core/INetworkPLO;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
