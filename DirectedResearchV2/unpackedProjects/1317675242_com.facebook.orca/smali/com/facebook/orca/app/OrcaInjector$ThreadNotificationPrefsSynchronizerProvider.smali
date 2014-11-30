.class Lcom/facebook/orca/app/OrcaInjector$ThreadNotificationPrefsSynchronizerProvider;
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
        "Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadNotificationPrefsSynchronizerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1394
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ThreadNotificationPrefsSynchronizerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;
    .locals 5

    .prologue
    .line 1399
    new-instance v2, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadNotificationPrefsSynchronizerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadNotificationPrefsSynchronizerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v4, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$ThreadNotificationPrefsSynchronizerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/cache/DataCache;

    invoke-direct {v2, v0, v1, p0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/cache/DataCache;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ThreadNotificationPrefsSynchronizerProvider;->a()Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    move-result-object v0

    return-object v0
.end method
