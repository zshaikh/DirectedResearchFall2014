.class public Lcom/facebook/orca/activity/OrcaPreferenceActivity;
.super Lcom/facebook/orca/inject/PreferenceActivityWithInjection;
.source "OrcaPreferenceActivity.java"

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
    invoke-direct {p0}, Lcom/facebook/orca/inject/PreferenceActivityWithInjection;-><init>()V

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
    .line 79
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/ServiceException;)Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a(Lcom/facebook/orca/ops/ServiceException;)Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/facebook/orca/inject/PreferenceActivityWithInjection;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 27
    const-class v0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    .line 28
    const-class v0, Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->c:Lcom/facebook/orca/push/PresenceManager;

    .line 30
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->a(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/facebook/orca/inject/PreferenceActivityWithInjection;->onDestroy()V

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->b:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b()V

    .line 60
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/facebook/orca/inject/PreferenceActivityWithInjection;->onPause()V

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->c:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->a()V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/facebook/orca/inject/PreferenceActivityWithInjection;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->c:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->b()V

    .line 54
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/facebook/orca/inject/PreferenceActivityWithInjection;->onUserInteraction()V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->c:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PresenceManager;->c()V

    .line 66
    return-void
.end method
