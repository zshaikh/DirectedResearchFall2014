.class public Lcom/redbox/android/activity/SplashActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "SplashActivity.java"


# instance fields
.field protected exitHandler:Landroid/os/Handler;

.field protected exitRunnable:Ljava/lang/Runnable;

.field protected splashTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/redbox/android/activity/SplashActivity;->splashTime:I

    .line 30
    iput-object v1, p0, Lcom/redbox/android/activity/SplashActivity;->exitHandler:Landroid/os/Handler;

    .line 31
    iput-object v1, p0, Lcom/redbox/android/activity/SplashActivity;->exitRunnable:Ljava/lang/Runnable;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/SplashActivity;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/redbox/android/activity/SplashActivity;->exitSplash()V

    return-void
.end method

.method private exitSplash()V
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/redbox/android/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/redbox/android/utils/RBTracker;->setApplication(Landroid/app/Application;)V

    .line 147
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/redbox/android/utils/RBTracker;->trackSpash(Ljava/lang/Object;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/redbox/android/activity/LandingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/redbox/android/activity/SplashActivity;->finish()V

    .line 154
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/SplashActivity;->setContentView(I)V

    .line 44
    invoke-static {}, Lcom/redbox/android/controller/Controller;->getController()Lcom/redbox/android/controller/Controller;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/redbox/android/controller/Controller;->setApplicationContext(Landroid/content/Context;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/redbox/android/utils/RBLogger;->filename:Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Is logged in :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/redbox/android/adapter/LocalDataStore;->isLoggedIn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/adapter/LocalDataStore;->isLoggedIn()Z

    move-result v2

    sput-boolean v2, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cache login state :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v1, Lcom/redbox/android/activity/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/SplashActivity$1;-><init>(Lcom/redbox/android/activity/SplashActivity;)V

    .line 62
    .local v1, "loadingRunnable":Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 63
    .local v0, "lHandler":Landroid/os/Handler;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v2

    .line 67
    new-instance v3, Lcom/redbox/android/activity/SplashActivity$2;

    invoke-direct {v3, p0}, Lcom/redbox/android/activity/SplashActivity$2;-><init>(Lcom/redbox/android/activity/SplashActivity;)V

    .line 66
    invoke-virtual {v2, v3}, Lcom/redbox/android/http/ServerCommunicationHandler;->mobileInitCall(Lcom/redbox/android/http/ServerCommunicationListener;)V

    .line 107
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "Splash Paused"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/redbox/android/activity/SplashActivity;->exitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/redbox/android/activity/SplashActivity;->exitRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/redbox/android/activity/SplashActivity;->exitHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/redbox/android/activity/SplashActivity;->exitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/redbox/android/activity/SplashActivity;->finish()V

    .line 140
    return-void
.end method
