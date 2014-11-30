.class Lcom/redbox/android/activity/MovieDetailActivity$1$1;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MovieDetailActivity$1;->kisokSelectionStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/MovieDetailActivity$1;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$1$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$1;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$1$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$1;

    # getter for: Lcom/redbox/android/activity/MovieDetailActivity$1;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/MovieDetailActivity$1;->access$0(Lcom/redbox/android/activity/MovieDetailActivity$1;)Lcom/redbox/android/activity/MovieDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/MovieDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$1$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$1;

    # getter for: Lcom/redbox/android/activity/MovieDetailActivity$1;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/MovieDetailActivity$1;->access$0(Lcom/redbox/android/activity/MovieDetailActivity$1;)Lcom/redbox/android/activity/MovieDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/MovieDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$1$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$1;

    # getter for: Lcom/redbox/android/activity/MovieDetailActivity$1;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/MovieDetailActivity$1;->access$0(Lcom/redbox/android/activity/MovieDetailActivity$1;)Lcom/redbox/android/activity/MovieDetailActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/MovieDetailActivity;->removeDialog(I)V

    .line 306
    :cond_0
    return-void
.end method
