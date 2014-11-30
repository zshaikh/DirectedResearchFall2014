.class Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;
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
        "Lcom/facebook/orca/activity/AuthenticatingActivityHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/activity/AuthenticatingActivityHelper;
    .locals 10

    .prologue
    .line 567
    new-instance v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/auth/AuthenticationManager;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/config/OrcaConfig;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/cache/DataCache;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v5}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/facebook/orca/app/OrcaInjector;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Lcom/facebook/orca/common/util/VersionStringComparator;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/common/util/VersionStringComparator;

    iget-object v7, p0, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/facebook/orca/annotations/DisableSmsConfirmationFlow;

    invoke-virtual {v7, v8, v9}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;-><init>(Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/config/OrcaConfig;Lcom/facebook/orca/cache/DataCache;Landroid/app/Activity;Lcom/facebook/orca/common/util/VersionStringComparator;Z)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$AuthenticatingActivityHelperProvider;->a()Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    move-result-object v0

    return-object v0
.end method
