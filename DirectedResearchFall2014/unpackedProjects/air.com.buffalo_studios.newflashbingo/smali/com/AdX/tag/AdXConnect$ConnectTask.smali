.class Lcom/AdX/tag/AdXConnect$ConnectTask;
.super Landroid/os/AsyncTask;
.source "AdXConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/AdX/tag/AdXConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AdX/tag/AdXConnect;


# direct methods
.method private constructor <init>(Lcom/AdX/tag/AdXConnect;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect$ConnectTask;->this$0:Lcom/AdX/tag/AdXConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/AdX/tag/AdXConnect;Lcom/AdX/tag/AdXConnect$ConnectTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/AdX/tag/AdXConnect$ConnectTask;-><init>(Lcom/AdX/tag/AdXConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .parameter "params"

    .prologue
    .line 596
    const/4 v2, 0x0

    .line 598
    .local v2, returnValue:Z
    iget-object v3, p0, Lcom/AdX/tag/AdXConnect$ConnectTask;->this$0:Lcom/AdX/tag/AdXConnect;

    #getter for: Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;
    invoke-static {v3}, Lcom/AdX/tag/AdXConnect;->access$0(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, connectURLParams:Ljava/lang/String;
    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$1()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_0
    const-string v3, "http://ad-x.co.uk/atrk/andrdapp?"

    invoke-static {v3, v0}, Lcom/AdX/tag/AdXURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, result:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 612
    iget-object v3, p0, Lcom/AdX/tag/AdXConnect$ConnectTask;->this$0:Lcom/AdX/tag/AdXConnect;

    #calls: Lcom/AdX/tag/AdXConnect;->handleConnectResponse(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/AdX/tag/AdXConnect;->access$2(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)Z

    move-result v2

    .line 614
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/AdX/tag/AdXConnect$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
