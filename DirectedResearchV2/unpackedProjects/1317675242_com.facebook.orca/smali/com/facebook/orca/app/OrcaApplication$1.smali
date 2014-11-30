.class Lcom/facebook/orca/app/OrcaApplication$1;
.super Ljava/lang/Object;
.source "OrcaApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaApplication;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/OrcaApplication;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaApplication$1;->a:Lcom/facebook/orca/app/OrcaApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaApplication$1;->a:Lcom/facebook/orca/app/OrcaApplication;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaApplication;->a(Lcom/facebook/orca/app/OrcaApplication;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()V

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaApplication$1;->a:Lcom/facebook/orca/app/OrcaApplication;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaApplication;->a(Lcom/facebook/orca/app/OrcaApplication;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/PushManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/push/PushManager;

    invoke-virtual {p0}, Lcom/facebook/orca/push/PushManager;->a()V

    .line 92
    return-void
.end method
