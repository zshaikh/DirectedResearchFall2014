.class public Lcom/facebook/orca/inject/FragmentActivityWithInjection;
.super Landroid/support/v4/app/FragmentActivity;
.source "FragmentActivityWithInjection.java"


# instance fields
.field protected l:Lcom/facebook/orca/app/ContextScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/facebook/orca/app/OrcaInjector;
    .locals 1

    .prologue
    .line 119
    invoke-static {p0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->b(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onContentChanged()V

    .line 106
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 27
    const-class v1, Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    .line 28
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->b(Landroid/content/Context;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->c(Landroid/content/Context;)V

    .line 93
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 95
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 68
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 50
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 62
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 63
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 56
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 57
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->a(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/inject/FragmentActivityWithInjection;->l:Lcom/facebook/orca/app/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/app/ContextScope;->b(Landroid/content/Context;)V

    .line 82
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 84
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 35
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    return-void
.end method
