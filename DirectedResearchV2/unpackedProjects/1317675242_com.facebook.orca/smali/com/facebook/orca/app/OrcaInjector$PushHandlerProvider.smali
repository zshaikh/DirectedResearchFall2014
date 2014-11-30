.class Lcom/facebook/orca/app/OrcaInjector$PushHandlerProvider;
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
        "Lcom/facebook/orca/push/mqtt/PushHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$PushHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1752
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$PushHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/mqtt/PushHandler;
    .locals 6

    .prologue
    .line 1756
    new-instance v2, Lcom/facebook/orca/push/mqtt/PushHandler;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$PushHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$PushHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$PushHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v5, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/orca/push/mqtt/PushHandler;-><init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/notify/OrcaNotificationManager;Lcom/google/inject/Provider;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1752
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$PushHandlerProvider;->a()Lcom/facebook/orca/push/mqtt/PushHandler;

    move-result-object v0

    return-object v0
.end method
