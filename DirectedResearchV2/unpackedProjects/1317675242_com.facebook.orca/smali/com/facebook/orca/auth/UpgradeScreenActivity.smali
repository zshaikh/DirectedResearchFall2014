.class public Lcom/facebook/orca/auth/UpgradeScreenActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "UpgradeScreenActivity.java"


# instance fields
.field private k:Lcom/facebook/orca/app/OrcaAppType;

.field private m:Lcom/facebook/orca/cache/DataCache;

.field private n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private r:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/UpgradeScreenActivity;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->finish()V

    .line 140
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->e()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->m:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->i()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfig;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->k:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->getDefaultUpgradeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->f()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->g()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v1, "logout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->finish()V

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->d()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    :cond_0
    return-void
.end method

.method private g()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->finish()V

    .line 136
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 51
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->k:Lcom/facebook/orca/app/OrcaAppType;

    .line 52
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->m:Lcom/facebook/orca/cache/DataCache;

    .line 53
    const-class v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    .line 54
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->o:Landroid/widget/Button;

    .line 55
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->p:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/UpgradeScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity$1;-><init>(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/UpgradeScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity$2;-><init>(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-string v0, "fetchAppConfig"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/UpgradeScreenActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity$3;-><init>(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 81
    const-string v0, "logoutOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/UpgradeScreenActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/UpgradeScreenActivity$4;-><init>(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a001e

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 95
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->setContentView(I)V

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v1, "get_app_info"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    :cond_0
    return-void
.end method
