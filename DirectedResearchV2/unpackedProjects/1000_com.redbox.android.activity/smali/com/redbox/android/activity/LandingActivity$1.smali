.class Lcom/redbox/android/activity/LandingActivity$1;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Lcom/redbox/android/adapter/KioskSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/LandingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/LandingActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LandingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$1;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/LandingActivity$1;)Lcom/redbox/android/activity/LandingActivity;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$1;->this$0:Lcom/redbox/android/activity/LandingActivity;

    return-object v0
.end method


# virtual methods
.method public kisokSelectionStateChanged()V
    .locals 2

    .prologue
    .line 435
    const-string v0, "Kiosk slection changed *"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$1;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/LandingActivity$1$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/LandingActivity$1$1;-><init>(Lcom/redbox/android/activity/LandingActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    return-void
.end method

.method public selectedKioskChanged()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public selectedKioskConnectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$1;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/LandingActivity$1$2;

    invoke-direct {v1, p0, p1}, Lcom/redbox/android/activity/LandingActivity$1$2;-><init>(Lcom/redbox/android/activity/LandingActivity$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    return-void
.end method
