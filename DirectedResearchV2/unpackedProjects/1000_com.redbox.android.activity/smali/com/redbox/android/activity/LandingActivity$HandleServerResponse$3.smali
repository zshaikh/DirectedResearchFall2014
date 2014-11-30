.class Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$3;
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
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$3;->this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$3;->this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    # getter for: Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->access$0(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-virtual {v0}, Lcom/redbox/android/adapter/MovieListAdapter;->notifyDataSetChanged()V

    .line 579
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$3;->this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    # getter for: Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->access$0(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$3;->this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    # getter for: Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->access$0(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$3;->this$1:Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;

    # getter for: Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->access$0(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)Lcom/redbox/android/activity/LandingActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->removeDialog(I)V

    .line 583
    :cond_0
    return-void
.end method
