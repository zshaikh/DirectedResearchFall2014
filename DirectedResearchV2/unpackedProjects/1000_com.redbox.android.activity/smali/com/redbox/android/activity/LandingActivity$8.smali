.class Lcom/redbox/android/activity/LandingActivity$8;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LandingActivity;->onResume()V
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
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$8;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/LandingActivity$8;)Lcom/redbox/android/activity/LandingActivity;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$8;->this$0:Lcom/redbox/android/activity/LandingActivity;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$8;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/LandingActivity$8$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/LandingActivity$8$1;-><init>(Lcom/redbox/android/activity/LandingActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    if-eqz p2, :cond_0

    .line 293
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/model/SelectedKioskManager;->selectKiosk()V

    .line 294
    const-string v0, "Kiosk Selected**"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/model/SelectedKioskManager;->deSelectKiosk()V

    .line 297
    const-string v0, "Kiosk deselected**"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
