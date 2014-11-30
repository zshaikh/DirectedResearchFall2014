.class Lcom/facebook/orca/app/OrcaInjector$FragmentManagerProvider;
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
        "Landroid/support/v4/app/FragmentManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2115
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$FragmentManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2115
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$FragmentManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$FragmentManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->b(Lcom/facebook/orca/app/OrcaInjector;)Landroid/app/Activity;

    move-result-object p0

    .line 2120
    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 2121
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->b()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2115
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$FragmentManagerProvider;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method
