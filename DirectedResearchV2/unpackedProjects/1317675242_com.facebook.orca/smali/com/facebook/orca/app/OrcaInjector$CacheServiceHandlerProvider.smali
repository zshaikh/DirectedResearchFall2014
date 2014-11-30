.class Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/cache/CacheServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/cache/CacheServiceHandler;
    .locals 8

    .prologue
    .line 674
    new-instance v0, Lcom/facebook/orca/cache/CacheServiceHandler;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/ThreadsCache;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/cache/AppConfigCache;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/cache/CacheServiceHandler;-><init>(Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Lcom/facebook/orca/cache/AppConfigCache;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$CacheServiceHandlerProvider;->a()Lcom/facebook/orca/cache/CacheServiceHandler;

    move-result-object v0

    return-object v0
.end method
