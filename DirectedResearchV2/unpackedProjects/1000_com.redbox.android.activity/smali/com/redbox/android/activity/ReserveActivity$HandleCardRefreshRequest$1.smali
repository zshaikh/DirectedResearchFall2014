.class Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest$1;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->dataReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest$1;->this$1:Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;

    # getter for: Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->this$0:Lcom/redbox/android/activity/ReserveActivity;
    invoke-static {v0}, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;->access$0(Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;)Lcom/redbox/android/activity/ReserveActivity;

    move-result-object v0

    # invokes: Lcom/redbox/android/activity/ReserveActivity;->updateUI()V
    invoke-static {v0}, Lcom/redbox/android/activity/ReserveActivity;->access$1(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 584
    return-void
.end method
