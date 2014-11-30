.class Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$1;
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
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$1;->this$2:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1$1;->this$2:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;
    invoke-static {v0}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest$1;)Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;

    move-result-object v0

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->setResult(I)V

    .line 680
    return-void
.end method
