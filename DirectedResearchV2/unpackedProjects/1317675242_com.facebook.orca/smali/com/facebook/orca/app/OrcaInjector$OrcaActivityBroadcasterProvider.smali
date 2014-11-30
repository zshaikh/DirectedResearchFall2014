.class Lcom/facebook/orca/app/OrcaInjector$OrcaActivityBroadcasterProvider;
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
        "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaActivityBroadcasterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaActivityBroadcasterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaActivityBroadcaster;
    .locals 2

    .prologue
    .line 582
    new-instance v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaActivityBroadcasterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaActivityBroadcasterProvider;->a()Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    move-result-object v0

    return-object v0
.end method
