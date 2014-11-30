.class public Lcom/pocketchange/android/app/FragmentActivityWithTasks;
.super Lcom/pocketchange/android/app/PatchedFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/pocketchange/android/app/ActivityTaskManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/pocketchange/android/app/PatchedFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTaskManager()Lcom/pocketchange/android/app/ActivityTaskManager;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/pocketchange/android/app/ActivityTaskManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pocketchange/android/app/ActivityTaskManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/pocketchange/android/app/PatchedFragmentActivity;->onDestroy()V

    .line 43
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    invoke-virtual {v0}, Lcom/pocketchange/android/app/ActivityTaskManager;->onDestroy()V

    .line 46
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/pocketchange/android/app/PatchedFragmentActivity;->onPostResume()V

    .line 19
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    invoke-virtual {v0}, Lcom/pocketchange/android/app/ActivityTaskManager;->onPostResume()V

    .line 22
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/pocketchange/android/app/PatchedFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    invoke-virtual {v0}, Lcom/pocketchange/android/app/ActivityTaskManager;->onSaveInstanceState()V

    .line 30
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/pocketchange/android/app/PatchedFragmentActivity;->onStart()V

    .line 11
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    invoke-virtual {v0}, Lcom/pocketchange/android/app/ActivityTaskManager;->onStart()V

    .line 14
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/pocketchange/android/app/PatchedFragmentActivity;->onStop()V

    .line 35
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentActivityWithTasks;->a:Lcom/pocketchange/android/app/ActivityTaskManager;

    invoke-virtual {v0}, Lcom/pocketchange/android/app/ActivityTaskManager;->onStop()V

    .line 38
    :cond_0
    return-void
.end method
