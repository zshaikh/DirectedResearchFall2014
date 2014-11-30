.class public Lcom/facebook/orca/auth/SilentLoginActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "SilentLoginActivity.java"


# annotations
.annotation runtime Lcom/facebook/orca/annotations/AuthNotRequired;
.end annotation


# instance fields
.field private k:Lcom/facebook/orca/auth/AuthenticationManager;

.field private m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

.field private n:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private o:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

.field private p:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/SilentLoginActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->e()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/auth/SilentLoginActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->g()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->p:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "login"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "orca:SilentLoginActivity"

    const-string v1, "Successful login."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->f()V

    .line 115
    invoke-virtual {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->finish()V

    .line 116
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x4010000

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/auth/UpgradeScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    :goto_0
    invoke-virtual {p0, v3, v3}, Lcom/facebook/orca/auth/SilentLoginActivity;->overridePendingTransition(II)V

    .line 134
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->g()Landroid/content/Intent;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "orca:SilentLoginActivity"

    const-string v1, "Failed login. Going to home activity."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->h()V

    .line 139
    invoke-virtual {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->finish()V

    .line 140
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->c()Landroid/content/Intent;

    move-result-object v0

    .line 144
    const/high16 v1, 0x4010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    const-string v1, "no_silent_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 54
    const-class v0, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthenticationManager;

    iput-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->k:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 55
    const-class v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    .line 56
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->n:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 57
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->o:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a()V

    .line 61
    invoke-static {}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->newBuilder()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(I)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpecBuilder;->f()Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->q:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->o:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iget-object v1, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setButtonSpecs(Ljava/util/List;)V

    .line 68
    const-string v0, "loginOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->p:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->p:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/SilentLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/SilentLoginActivity$1;-><init>(Lcom/facebook/orca/auth/SilentLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->n:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->n:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(I)V

    .line 82
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->setContentView(I)V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->k:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->k:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "orca:SilentLoginActivity"

    const-string v1, "Cookie exists. Going to threadlist"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->f()V

    .line 91
    invoke-virtual {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->finish()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->p:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity;->k:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const-string v0, "orca:SilentLoginActivity"

    const-string v1, "No cookie but have saved credentials. Running login flow."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->c()V

    goto :goto_0

    .line 98
    :cond_2
    const-string v0, "orca:SilentLoginActivity"

    const-string v1, "No cookies or saved credentials. Going to home screen."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->h()V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/auth/SilentLoginActivity;->finish()V

    goto :goto_0
.end method
