.class public Lcom/pocketchange/android/app/FragmentManagementHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final fragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 14
    return-void
.end method


# virtual methods
.method public addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 18
    return-void
.end method

.method public findBackStackEntry(Ljava/lang/Integer;Ljava/lang/String;)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 4
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    .line 57
    iget-object v1, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 58
    if-eqz p1, :cond_0

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 63
    :goto_1
    return-object v0

    .line 56
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 63
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findBackStackEntryById(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pocketchange/android/app/FragmentManagementHelper;->findBackStackEntry(Ljava/lang/Integer;Ljava/lang/String;)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    return-object v0
.end method

.method public findBackStackEntryByTag(Ljava/lang/String;)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/pocketchange/android/app/FragmentManagementHelper;->findBackStackEntry(Ljava/lang/Integer;Ljava/lang/String;)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    return-object v0
.end method

.method public findFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pocketchange/android/app/FragmentManagementHelper;->findFragment(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragment(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "errorIfNotFound"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 39
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment with tag ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    return-object v0
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;)I
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/pocketchange/android/app/FragmentManagementHelper;->removeFragment(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)I
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "backStackTag"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 27
    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v0

    return v0
.end method

.method public restoreBackStack(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 79
    const-string v0, "hasBackStackEntries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Back stack is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    const-string v0, "backStackTopEntryId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Back stack entry with id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 93
    :cond_2
    return-void
.end method

.method public saveBackStack(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 67
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 68
    iget-object v0, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 69
    if-lez v0, :cond_1

    move v1, v3

    .line 70
    :goto_0
    const-string v2, "hasBackStackEntries"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/pocketchange/android/app/FragmentManagementHelper;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v0

    .line 73
    const-string v1, "backStackTopEntryId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    :cond_0
    return-void

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
