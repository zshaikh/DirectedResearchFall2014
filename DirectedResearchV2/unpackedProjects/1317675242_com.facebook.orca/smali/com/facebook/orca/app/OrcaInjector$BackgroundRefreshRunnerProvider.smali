.class Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;
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
        "Lcom/facebook/orca/server/BackgroundRefreshRunner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1772
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/BackgroundRefreshRunner;
    .locals 10

    .prologue
    .line 1776
    new-instance v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/DataCache;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/auth/AuthenticationManager;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/database/DbCache;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/database/DbCache;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v8, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v7, p0, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/facebook/orca/annotations/DisableBackgroundOperations;

    invoke-virtual {v7, v8, v9}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/BackgroundRefreshRunner;-><init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/database/DbCache;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/ops/OrcaServiceOperation;Z)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1772
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$BackgroundRefreshRunnerProvider;->a()Lcom/facebook/orca/server/BackgroundRefreshRunner;

    move-result-object v0

    return-object v0
.end method
