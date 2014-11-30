.class public Lcom/facebook/orca/inject/MapActivityWithInjection;
.super Lcom/google/android/maps/MapActivity;
.source "MapActivityWithInjection.java"


# instance fields
.field protected a:Lcom/facebook/orca/app/ContextScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaInjector;
    .locals 1

    .prologue
    .line 121
    invoke-static {p0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    return-object v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/MapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->b(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/inject/MapActivityWithInjection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 97
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onContentChanged()V

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/facebook/orca/inject/MapActivityWithInjection;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 24
    const-class v1, Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    .line 25
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 26
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->b(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->c(Landroid/content/Context;)V

    .line 90
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 92
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 65
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 47
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onRestart()V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 59
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 60
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 53
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStart()V

    .line 54
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/inject/MapActivityWithInjection;->a:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->b(Landroid/content/Context;)V

    .line 79
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    .line 81
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->setContentView(I)V

    .line 32
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->setContentView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
.end method