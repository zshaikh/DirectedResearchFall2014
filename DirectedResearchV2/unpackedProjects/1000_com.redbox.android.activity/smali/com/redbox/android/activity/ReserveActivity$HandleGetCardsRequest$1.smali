.class Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest$1;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v1}, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method
