.class Lcom/redbox/android/activity/SplashActivity$2$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/SplashActivity$2;->callFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/SplashActivity$2;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/SplashActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/SplashActivity$2$1;->this$1:Lcom/redbox/android/activity/SplashActivity$2;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/redbox/android/activity/SplashActivity$2$1;->this$1:Lcom/redbox/android/activity/SplashActivity$2;

    # getter for: Lcom/redbox/android/activity/SplashActivity$2;->this$0:Lcom/redbox/android/activity/SplashActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/SplashActivity$2;->access$0(Lcom/redbox/android/activity/SplashActivity$2;)Lcom/redbox/android/activity/SplashActivity;

    move-result-object v0

    # invokes: Lcom/redbox/android/activity/SplashActivity;->exitSplash()V
    invoke-static {v0}, Lcom/redbox/android/activity/SplashActivity;->access$0(Lcom/redbox/android/activity/SplashActivity;)V

    .line 76
    return-void
.end method
