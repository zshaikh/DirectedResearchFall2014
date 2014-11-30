.class Lcom/redbox/android/activity/LandingActivity$8$1;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LandingActivity$8;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/LandingActivity$8;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LandingActivity$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$8$1;->this$1:Lcom/redbox/android/activity/LandingActivity$8;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$8$1;->this$1:Lcom/redbox/android/activity/LandingActivity$8;

    # getter for: Lcom/redbox/android/activity/LandingActivity$8;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$8;->access$0(Lcom/redbox/android/activity/LandingActivity$8;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->showDialog(I)V

    .line 285
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$8$1;->this$1:Lcom/redbox/android/activity/LandingActivity$8;

    # getter for: Lcom/redbox/android/activity/LandingActivity$8;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$8;->access$0(Lcom/redbox/android/activity/LandingActivity$8;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 286
    const-string v1, "Updating selected Kiosk Inventory"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$8$1;->this$1:Lcom/redbox/android/activity/LandingActivity$8;

    # getter for: Lcom/redbox/android/activity/LandingActivity$8;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$8;->access$0(Lcom/redbox/android/activity/LandingActivity$8;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 288
    return-void
.end method
