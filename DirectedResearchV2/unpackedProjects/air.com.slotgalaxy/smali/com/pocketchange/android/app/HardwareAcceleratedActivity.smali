.class public Lcom/pocketchange/android/app/HardwareAcceleratedActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final EXTRA_HARDWARE_ACCELERATION_ENABLED:Ljava/lang/String; = "hardwareAccelerationEnabled"

.field public static final EXTRA_SAVED_STATE:Ljava/lang/String; = "state"

.field private static final a:Lcom/pocketchange/android/util/MethodCacheByName;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/pocketchange/android/util/MethodCacheByName;

    const-class v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/pocketchange/android/util/MethodCacheByName;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->a:Lcom/pocketchange/android/util/MethodCacheByName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final a()Z
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hardwareAccelerationEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/pocketchange/android/app/HardwareAcceleratedActivity;)Z
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->a()Z

    move-result v0

    return v0
.end method

.method private final b()Z
    .locals 2

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getSavedStateFromIntent()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected handleOnCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/pocketchange/android/view/ViewUtils;->enableHardwareAcceleration(Landroid/app/Activity;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/pocketchange/android/view/ViewUtils;->disableHardwareAcceleration(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected handleOnPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method protected isDestroyed()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->b:Z

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 137
    :cond_1
    invoke-static {v0}, Lcom/pocketchange/android/view/ViewUtils;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->getSavedStateFromIntent()Landroid/os/Bundle;

    move-result-object p1

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->handleOnCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->b:Z

    .line 66
    return-void
.end method

.method protected onHardwareAccelerationStateChangeRequested(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    const-string v1, "hardwareAccelerationEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->setIntent(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->restart()V

    .line 131
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->getSavedStateFromIntent()Landroid/os/Bundle;

    move-result-object p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->handleOnPostCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public restart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 77
    :try_start_0
    sget-object v0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->a:Lcom/pocketchange/android/util/MethodCacheByName;

    const-string v1, "recreate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pocketchange/android/util/MethodCacheByName;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "HardwareAcceleratedActivity"

    const-string v2, "Error invoking recreate method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->finish()V

    .line 90
    invoke-virtual {p0, v3, v3}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->overridePendingTransition(II)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->setHardwareAccelerationEnabled(ZLorg/json/JSONObject;)V

    .line 102
    return-void
.end method

.method public setHardwareAccelerationEnabled(ZLorg/json/JSONObject;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "filter"    # Lorg/json/JSONObject;

    .prologue
    .line 106
    if-eqz p2, :cond_0

    .line 108
    :try_start_0
    invoke-static {p2}, Lcom/pocketchange/android/Util;->deviceMatchesFilter(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed filter criteria"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 115
    :cond_0
    new-instance v0, Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity$1;-><init>(Lcom/pocketchange/android/app/HardwareAcceleratedActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
