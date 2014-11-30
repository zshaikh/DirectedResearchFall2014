.class public Lcom/facebook/orca/activity/AuthenticatedActivityHelper;
.super Ljava/lang/Object;
.source "AuthenticatedActivityHelper.java"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/facebook/orca/auth/AuthenticationManager;

.field private final c:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

.field private final d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final e:Lcom/facebook/orca/app/OrcaDataManager;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/activity/AuthenticatingActivityHelper;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/app/OrcaDataManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 42
    iput-object p3, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->c:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    .line 43
    iput-object p4, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 44
    iput-object p5, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->e:Lcom/facebook/orca/app/OrcaDataManager;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/activity/AuthenticatedActivityHelper;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 92
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AuthNotRequired;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    const-string v1, "com.facebook.orca.ACTION_LOGGED_OUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;-><init>(Lcom/facebook/orca/activity/AuthenticatedActivityHelper;)V

    iput-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->f:Landroid/content/BroadcastReceiver;

    .line 77
    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AuthNotRequired;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 61
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/auth/SilentLoginActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v2, "return_intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/ops/ServiceException;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AuthNotRequired;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 120
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/ops/ServiceException;->a()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/ErrorCode;->API_ERROR:Lcom/facebook/orca/server/ErrorCode;

    if-eq v0, v1, :cond_1

    move v0, v3

    .line 101
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/ops/ServiceException;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ApiErrorResult;

    .line 105
    invoke-virtual {v0}, Lcom/facebook/orca/server/ApiErrorResult;->a()I

    move-result v1

    const/16 v2, 0xbe

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/server/ApiErrorResult;->a()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    move v0, v3

    .line 108
    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->e:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->a()V

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a()V

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->c:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->c()Landroid/content/Intent;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AuthNotRequired;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->f:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
