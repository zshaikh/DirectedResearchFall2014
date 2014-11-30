.class Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$2;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$2;->this$2:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 716
    .line 717
    const-string v1, "Movie reserved, Result code set to : 5"

    .line 715
    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 720
    .local v0, "resultIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$2;->this$2:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;
    invoke-static {v1}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;)Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    move-result-object v1

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/redbox/android/activity/ReserveActivity;->setResult(ILandroid/content/Intent;)V

    .line 722
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$2;->this$2:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;
    invoke-static {v1}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;)Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    move-result-object v1

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v1

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->closeActivity()V
    invoke-static {v1}, Lcom/redbox/android/activity/ReserveActivity;->access$2(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 723
    return-void
.end method
