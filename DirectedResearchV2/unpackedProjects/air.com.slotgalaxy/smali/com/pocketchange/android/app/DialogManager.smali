.class public Lcom/pocketchange/android/app/DialogManager;
.super Lcom/pocketchange/android/app/FragmentManagementHelper;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/pocketchange/android/app/FragmentManagementHelper;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 7
    const-string v0, "active_dialog"

    iput-object v0, p0, Lcom/pocketchange/android/app/DialogManager;->a:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pocketchange/android/app/DialogManager;->dismissDialog(ZLjava/lang/String;)V

    .line 20
    return-void
.end method

.method public dismissDialog(ZLjava/lang/String;)V
    .locals 2
    .param p1, "addToBackStack"    # Z
    .param p2, "backStackTag"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v0, "active_dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pocketchange/android/app/DialogManager;->findFragment(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/pocketchange/android/app/DialogManager;->removeFragment(Landroid/support/v4/app/Fragment;ZLjava/lang/String;)I

    .line 24
    return-void
.end method

.method public dismissOptDialog()V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/pocketchange/android/app/DialogManager;->getActiveDialog()Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/app/DialogManager;->removeFragment(Landroid/support/v4/app/Fragment;)I

    .line 31
    :cond_0
    return-void
.end method

.method public getActiveDialog()Landroid/support/v4/app/DialogFragment;
    .locals 2

    .prologue
    .line 34
    const-string v0, "active_dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pocketchange/android/app/DialogManager;->findFragment(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/DialogFragment;

    return-object p0
.end method

.method public showDialog(Landroid/support/v4/app/DialogFragment;)V
    .locals 1
    .param p1, "dialog"    # Landroid/support/v4/app/DialogFragment;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/pocketchange/android/app/DialogManager;->dismissOptDialog()V

    .line 15
    const-string v0, "active_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/pocketchange/android/app/DialogManager;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 16
    return-void
.end method
