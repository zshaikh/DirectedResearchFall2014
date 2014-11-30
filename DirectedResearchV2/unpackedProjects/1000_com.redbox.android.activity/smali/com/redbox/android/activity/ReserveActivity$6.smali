.class Lcom/redbox/android/activity/ReserveActivity$6;
.super Ljava/lang/Object;
.source "ReserveActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/ReserveActivity;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/ReserveActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/ReserveActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/ReserveActivity$6;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ReserveActivity$6;)Lcom/redbox/android/activity/ReserveActivity;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$6;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$6;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/ReserveActivity$6$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/ReserveActivity$6$1;-><init>(Lcom/redbox/android/activity/ReserveActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 333
    new-instance v1, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;

    iget-object v2, p0, Lcom/redbox/android/activity/ReserveActivity$6;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    invoke-direct {v1, v2}, Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 332
    invoke-virtual {v0, v1, p2}, Lcom/redbox/android/http/ServerCommunicationHandler;->cartRefresh(Lcom/redbox/android/http/ServerCommunicationListener;Z)V

    .line 335
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity$6;->this$0:Lcom/redbox/android/activity/ReserveActivity;

    iput-boolean p2, v0, Lcom/redbox/android/activity/ReserveActivity;->applyCredit:Z

    .line 336
    return-void
.end method
