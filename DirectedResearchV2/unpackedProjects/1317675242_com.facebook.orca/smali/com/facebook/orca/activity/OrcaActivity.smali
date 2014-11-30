.class public abstract Lcom/facebook/orca/activity/OrcaActivity;
.super Lcom/facebook/orca/inject/ActivityWithInjection;
.source "OrcaActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/OrcaActivityish;


# instance fields
.field private b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

.field private c:Lcom/facebook/orca/push/PresenceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/orca/inject/ActivityWithInjection;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/ServiceException;)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a(Lcom/facebook/orca/ops/ServiceException;)Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/facebook/orca/inject/ActivityWithInjection;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaActivity;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 27
    const-class v0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/activity/OrcaActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    .line 28
    const-class v0, Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/activity/OrcaActivity;->c:Lcom/facebook/orca/push/PresenceManager;

    .line 30
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->a(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/facebook/orca/inject/ActivityWithInjection;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b()V

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/facebook/orca/inject/ActivityWithInjection;->onPause()V

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaActivity;->c:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->a()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/facebook/orca/inject/ActivityWithInjection;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaActivity;->c:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->b()V

    .line 55
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/facebook/orca/inject/ActivityWithInjection;->onUserInteraction()V

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaActivity;->c:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->c()V

    .line 67
    return-void
.end method
