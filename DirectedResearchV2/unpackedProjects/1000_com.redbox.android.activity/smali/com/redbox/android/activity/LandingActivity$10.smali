.class Lcom/redbox/android/activity/LandingActivity$10;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LandingActivity;->updateMoviesByKisok()V
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
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$10;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$10;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$10;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$10;->this$0:Lcom/redbox/android/activity/LandingActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->removeDialog(I)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$10;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$10;->this$0:Lcom/redbox/android/activity/LandingActivity;

    const v2, 0x7f050037

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/LandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/redbox/android/activity/LandingActivity;->alertBoxMsg:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$10;->this$0:Lcom/redbox/android/activity/LandingActivity;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->showDialog(I)V

    .line 362
    return-void
.end method
