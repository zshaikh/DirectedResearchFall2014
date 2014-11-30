.class public Lcom/facebook/orca/activity/OrcaFragmentActivity;
.super Lcom/facebook/orca/inject/FragmentActivityWithInjection;
.source "OrcaFragmentActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/OrcaActivityish;


# instance fields
.field private k:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

.field private m:Lcom/facebook/orca/push/PresenceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/inject/FragmentActivityWithInjection;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 101
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-direct {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;-><init>()V

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 105
    :cond_0
    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 89
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 90
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/ServiceException;)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaFragmentActivity;->k:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a(Lcom/facebook/orca/ops/ServiceException;)Z

    move-result v0

    return v0
.end method

.method protected b(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public d()Lcom/facebook/orca/app/OrcaInjector;
    .locals 1

    .prologue
    .line 109
    invoke-static {p0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 32
    const-class v0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/activity/OrcaFragmentActivity;->k:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    .line 33
    const-class v0, Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/activity/OrcaFragmentActivity;->m:Lcom/facebook/orca/push/PresenceManager;

    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaFragmentActivity;->k:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaFragmentActivity;->k:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->onDestroy()V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaFragmentActivity;->k:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b()V

    .line 66
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaFragmentActivity;->m:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->a()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaFragmentActivity;->m:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->b()V

    .line 60
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->onUserInteraction()V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaFragmentActivity;->m:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->c()V

    .line 72
    return-void
.end method
