.class public Lcom/gamesys/android/social/facebook/AndroidFBInterface;
.super Lcom/facebook/ane/AneActivity;
.source "AndroidFBInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final FLAG_UNIT_TESTING:Ljava/lang/String; = "FLAG_UNIT_TESTING"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentDialog:Lcom/facebook/widget/WebDialog;

.field private fbLoginFragment:Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

.field private receiver:Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/facebook/ane/AneActivity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->currentDialog:Lcom/facebook/widget/WebDialog;

    .line 28
    iput-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->fbLoginFragment:Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    .line 14
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method


# virtual methods
.method public getCurrentDialog()Lcom/facebook/widget/WebDialog;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->currentDialog:Lcom/facebook/widget/WebDialog;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/facebook/ane/AneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "FLAG_UNIT_TESTING"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 42
    .local v1, "isUnitTesting":Z
    const/4 v0, -0x1

    .line 43
    .local v0, "aId":I
    if-eqz v1, :cond_0

    sget-object v3, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v3, :cond_0

    .line 44
    sget-object v3, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-virtual {v3, p0}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->setAndroidContext(Landroid/content/Context;)V

    .line 46
    const v0, 0x1020002

    .line 52
    :goto_0
    if-nez p1, :cond_1

    .line 54
    new-instance v3, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    invoke-direct {v3}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;-><init>()V

    iput-object v3, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->fbLoginFragment:Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    .line 55
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->fbLoginFragment:Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 57
    .local v2, "t":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->fbLoginFragment:Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 58
    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 65
    .end local v2    # "t":Landroid/support/v4/app/FragmentTransaction;
    :goto_1
    new-instance v3, Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;

    invoke-direct {v3, p0, v6}, Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;-><init>(Lcom/gamesys/android/social/facebook/AndroidFBInterface;Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;)V

    iput-object v3, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->receiver:Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;

    .line 66
    return-void

    .line 49
    :cond_0
    const v0, 0x1020002

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    iput-object v3, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->fbLoginFragment:Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/facebook/ane/AneActivity;->onPause()V

    .line 87
    sget-object v0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    iget-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->receiver:Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/facebook/ane/AneActivity;->onResume()V

    .line 77
    sget-object v0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    iget-object v1, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->receiver:Lcom/gamesys/android/social/facebook/AndroidFBInterface$AndroidInterfaceBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->registerAutoCloseReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    :cond_0
    return-void
.end method

.method public performLogin()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->fbLoginFragment:Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/gamesys/android/social/facebook/AndroidFBInterface;->fbLoginFragment:Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;

    invoke-virtual {v0}, Lcom/gamesys/android/social/facebook/AndroidFBInterfaceFragment;->performLogin()V

    .line 72
    :cond_0
    return-void
.end method
