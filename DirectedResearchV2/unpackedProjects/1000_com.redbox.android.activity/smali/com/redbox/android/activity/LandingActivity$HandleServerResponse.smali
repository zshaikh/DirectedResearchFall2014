.class Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/LandingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleServerResponse"
.end annotation


# instance fields
.field private aborted:Z

.field private backgroundSync:Z

.field final synthetic this$0:Lcom/redbox/android/activity/LandingActivity;


# direct methods
.method public constructor <init>(Lcom/redbox/android/activity/LandingActivity;Z)V
    .locals 1
    .param p2, "backgroundSync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 511
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-boolean v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->backgroundSync:Z

    .line 603
    iput-boolean v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->aborted:Z

    .line 510
    iput-boolean p2, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->backgroundSync:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)Lcom/redbox/android/activity/LandingActivity;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->aborted:Z

    .line 608
    return-void
.end method

.method public connectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->aborted:Z

    if-eqz v0, :cond_0

    .line 601
    :goto_0
    return-void

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-static {p1}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    invoke-virtual {v0, p1}, Lcom/redbox/android/activity/LandingActivity;->showConnectionError(I)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 544
    iget-boolean v3, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->aborted:Z

    if-eqz v3, :cond_1

    .line 545
    const-string v3, "No data from server"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 551
    .local v2, "output":Ljava/lang/String;
    :try_start_0
    const-string v3, "[{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "allMoviesJson":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->backgroundSync:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 554
    sget-boolean v3, Lcom/redbox/android/utils/RuntimeCache;->isRunning:Z

    if-eqz v3, :cond_2

    .line 555
    iget-object v3, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$2;

    invoke-direct {v4, p0}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$2;-><init>(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    :cond_2
    iget-object v3, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/LandingActivity;->movieListAdapter:Lcom/redbox/android/adapter/MovieListAdapter;

    invoke-static {}, Lcom/redbox/android/adapter/MovieService;->getInstance()Lcom/redbox/android/adapter/MovieService;

    move-result-object v4

    .line 570
    invoke-virtual {v4, v0}, Lcom/redbox/android/adapter/MovieService;->saveAllMoviesTitles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 569
    invoke-virtual {v3, v4}, Lcom/redbox/android/adapter/MovieListAdapter;->updateData(Ljava/util/List;)V

    .line 573
    sget-boolean v3, Lcom/redbox/android/utils/RuntimeCache;->isRunning:Z

    if-eqz v3, :cond_0

    .line 574
    iget-object v3, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v3, v3, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$3;

    invoke-direct {v4, p0}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$3;-><init>(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    .end local v0    # "allMoviesJson":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 588
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v3, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    const-string v4, "exception while parsing"

    invoke-virtual {v3, v4}, Lcom/redbox/android/activity/LandingActivity;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public status(II)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->aborted:Z

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    if-nez p1, :cond_0

    .line 519
    iget-boolean v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->backgroundSync:Z

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 525
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/LandingActivity;->removeDialog(I)V

    .line 527
    iget-object v0, p0, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;->this$0:Lcom/redbox/android/activity/LandingActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/LandingActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/LandingActivity$HandleServerResponse$1;-><init>(Lcom/redbox/android/activity/LandingActivity$HandleServerResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
