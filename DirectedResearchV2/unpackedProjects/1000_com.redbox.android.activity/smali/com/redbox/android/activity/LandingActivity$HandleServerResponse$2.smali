.class Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$2;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$2;->this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$2;->this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    # getter for: Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->access$0(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->showDialog(I)V

    .line 561
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$2;->this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    # getter for: Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->access$0(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 562
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$2;->this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    # getter for: Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->access$0(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/LandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 563
    return-void
.end method
