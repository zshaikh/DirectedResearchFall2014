.class Lcom/redbox/android/activity/MovieDetailActivity$1;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Lcom/redbox/android/adapter/KioskSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/MovieDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/MovieDetailActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$1;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/MovieDetailActivity$1;)Lcom/redbox/android/activity/MovieDetailActivity;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$1;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    return-object v0
.end method


# virtual methods
.method public kisokSelectionStateChanged()V
    .locals 2

    .prologue
    .line 296
    const-string v0, "Kiosk slection changed"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$1;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    # invokes: Lcom/redbox/android/activity/MovieDetailActivity;->modifyReserveFindButton()V
    invoke-static {v0}, Lcom/redbox/android/activity/MovieDetailActivity;->access$0(Lcom/redbox/android/activity/MovieDetailActivity;)V

    .line 298
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$1;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/MovieDetailActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/MovieDetailActivity$1$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/MovieDetailActivity$1$1;-><init>(Lcom/redbox/android/activity/MovieDetailActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method

.method public selectedKioskChanged()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public selectedKioskConnectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$1;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/MovieDetailActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/MovieDetailActivity$1$2;

    invoke-direct {v1, p0, p1}, Lcom/redbox/android/activity/MovieDetailActivity$1$2;-><init>(Lcom/redbox/android/activity/MovieDetailActivity$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method
