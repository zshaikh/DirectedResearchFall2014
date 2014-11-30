.class public Lcom/facebook/orca/activity/OrcaFragment;
.super Landroid/support/v4/app/Fragment;
.source "OrcaFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->l()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 30
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 31
    return-void
.end method

.method protected c(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->l()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 42
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-direct {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;-><init>()V

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/activity/OrcaFragment;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 46
    :cond_0
    return-object v0
.end method

.method public u()Lcom/facebook/orca/app/OrcaInjector;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    return-object v0
.end method
