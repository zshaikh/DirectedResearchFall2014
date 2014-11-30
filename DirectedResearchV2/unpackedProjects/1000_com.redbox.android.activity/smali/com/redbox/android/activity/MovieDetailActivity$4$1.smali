.class Lcom/redbox/android/activity/MovieDetailActivity$4$1;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MovieDetailActivity$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/MovieDetailActivity$4;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$4$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$4;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$4$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$4;

    # getter for: Lcom/redbox/android/activity/MovieDetailActivity$4;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/MovieDetailActivity$4;->access$0(Lcom/redbox/android/activity/MovieDetailActivity$4;)Lcom/redbox/android/activity/MovieDetailActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/MovieDetailActivity;->showDialog(I)V

    .line 222
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$4$1;->this$1:Lcom/redbox/android/activity/MovieDetailActivity$4;

    # getter for: Lcom/redbox/android/activity/MovieDetailActivity$4;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/MovieDetailActivity$4;->access$0(Lcom/redbox/android/activity/MovieDetailActivity$4;)Lcom/redbox/android/activity/MovieDetailActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/MovieDetailActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 223
    const-string v1, "Updating selected Kiosk Inventory"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method
