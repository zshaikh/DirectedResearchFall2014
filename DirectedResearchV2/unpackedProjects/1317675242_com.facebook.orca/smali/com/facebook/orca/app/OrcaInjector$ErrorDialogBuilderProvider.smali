.class Lcom/facebook/orca/app/OrcaInjector$ErrorDialogBuilderProvider;
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
        "Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ErrorDialogBuilderProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ErrorDialogBuilderProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 5

    .prologue
    .line 760
    new-instance v1, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$ErrorDialogBuilderProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$ErrorDialogBuilderProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$ErrorDialogBuilderProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-direct {v1, v2, v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;Lcom/facebook/orca/app/OrcaAppType;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ErrorDialogBuilderProvider;->a()Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    return-object v0
.end method
