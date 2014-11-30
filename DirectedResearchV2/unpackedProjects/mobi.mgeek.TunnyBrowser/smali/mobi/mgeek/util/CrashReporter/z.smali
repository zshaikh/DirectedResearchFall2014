.class public Lmobi/mgeek/util/CrashReporter/z;
.super Ljava/lang/Object;
.source "NativeCrashStateHandler.java"


# static fields
.field private static volatile a:Lmobi/mgeek/util/CrashReporter/z;


# instance fields
.field private b:Lmobi/mgeek/util/CrashReporter/ab;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lmobi/mgeek/util/CrashReporter/z;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lmobi/mgeek/util/CrashReporter/z;->a:Lmobi/mgeek/util/CrashReporter/z;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lmobi/mgeek/util/CrashReporter/z;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lmobi/mgeek/util/CrashReporter/z;->a:Lmobi/mgeek/util/CrashReporter/z;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lmobi/mgeek/util/CrashReporter/z;

    invoke-direct {v0}, Lmobi/mgeek/util/CrashReporter/z;-><init>()V

    sput-object v0, Lmobi/mgeek/util/CrashReporter/z;->a:Lmobi/mgeek/util/CrashReporter/z;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lmobi/mgeek/util/CrashReporter/z;->a:Lmobi/mgeek/util/CrashReporter/z;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 40
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/z;->b:Lmobi/mgeek/util/CrashReporter/ab;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/z;->b:Lmobi/mgeek/util/CrashReporter/ab;

    invoke-virtual {v0, v3}, Lmobi/mgeek/util/CrashReporter/ab;->b(Z)Z

    .line 44
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    new-instance v1, Lmobi/mgeek/util/CrashReporter/ab;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmobi/mgeek/util/CrashReporter/ab;-><init>(Lmobi/mgeek/util/CrashReporter/z;Lmobi/mgeek/util/CrashReporter/aa;)V

    iput-object v1, p0, Lmobi/mgeek/util/CrashReporter/z;->b:Lmobi/mgeek/util/CrashReporter/ab;

    .line 47
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/z;->b:Lmobi/mgeek/util/CrashReporter/ab;

    sget-object v2, Lcom/dolphin/browser/util/t;->a:Lcom/dolphin/browser/util/t;

    new-array v3, v3, [Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->g()Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 50
    :cond_1
    return-void
.end method
