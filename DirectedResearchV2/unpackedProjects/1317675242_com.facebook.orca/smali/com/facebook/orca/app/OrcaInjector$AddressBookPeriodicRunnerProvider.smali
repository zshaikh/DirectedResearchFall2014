.class Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;
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
        "Lcom/facebook/orca/database/AddressBookPeriodicRunner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/AddressBookPeriodicRunner;
    .locals 9

    .prologue
    .line 929
    new-instance v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v2}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/auth/AuthenticationManager;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v7, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {v5, v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Ljava/lang/Boolean;

    const-class v8, Lcom/facebook/orca/annotations/DisableBackgroundOperations;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/ops/OrcaServiceOperation;Z)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$AddressBookPeriodicRunnerProvider;->a()Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    move-result-object v0

    return-object v0
.end method
