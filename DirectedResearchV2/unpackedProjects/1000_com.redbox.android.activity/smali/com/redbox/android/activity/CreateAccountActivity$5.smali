.class Lcom/redbox/android/activity/CreateAccountActivity$5;
.super Ljava/lang/Object;
.source "CreateAccountActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/CreateAccountActivity;->setCaptcha(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/CreateAccountActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/CreateAccountActivity$5;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$5;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/CreateAccountActivity$5;)Lcom/redbox/android/activity/CreateAccountActivity;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$5;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$5;->aborted:Z

    .line 398
    return-void
.end method

.method public connectionError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$5;->aborted:Z

    if-eqz v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/CreateAccountActivity$5;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    invoke-virtual {v0, p1}, Lcom/redbox/android/activity/CreateAccountActivity;->showConnectionError(I)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-static {p1}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 417
    iget-boolean v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$5;->aborted:Z

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data received :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    const/4 v1, 0x0

    array-length v2, p1

    .line 422
    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/redbox/android/activity/CreateAccountActivity$5;->this$0:Lcom/redbox/android/activity/CreateAccountActivity;

    iget-object v1, v1, Lcom/redbox/android/activity/CreateAccountActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/redbox/android/activity/CreateAccountActivity$5$1;

    invoke-direct {v2, p0, v0}, Lcom/redbox/android/activity/CreateAccountActivity$5$1;-><init>(Lcom/redbox/android/activity/CreateAccountActivity$5;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public status(II)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 445
    return-void
.end method
