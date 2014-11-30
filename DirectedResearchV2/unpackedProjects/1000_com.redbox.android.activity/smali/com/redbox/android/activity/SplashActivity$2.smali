.class Lcom/redbox/android/activity/SplashActivity$2;
.super Lcom/redbox/android/http/MobileInitCallHandler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/SplashActivity$2;->this$0:Lcom/redbox/android/activity/SplashActivity;

    .line 67
    invoke-direct {p0}, Lcom/redbox/android/http/MobileInitCallHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/SplashActivity$2;)Lcom/redbox/android/activity/SplashActivity;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/redbox/android/activity/SplashActivity$2;->this$0:Lcom/redbox/android/activity/SplashActivity;

    return-object v0
.end method


# virtual methods
.method public callFailed()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/redbox/android/http/MobileInitCallHandler;->callFailed()V

    .line 83
    const-string v0, "MobileInitCallFailed: Splash"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/redbox/android/activity/SplashActivity$2;->this$0:Lcom/redbox/android/activity/SplashActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/SplashActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/SplashActivity$2$2;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/SplashActivity$2$2;-><init>(Lcom/redbox/android/activity/SplashActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public callFinished()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/redbox/android/http/MobileInitCallHandler;->callFinished()V

    .line 71
    iget-object v0, p0, Lcom/redbox/android/activity/SplashActivity$2;->this$0:Lcom/redbox/android/activity/SplashActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/SplashActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/SplashActivity$2$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/SplashActivity$2$1;-><init>(Lcom/redbox/android/activity/SplashActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method
