.class Lcom/facebook/dolphin/AsyncFacebookRunner$1;
.super Ljava/lang/Thread;
.source "AsyncFacebookRunner.java"


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/AsyncFacebookRunner;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/dolphin/AsyncFacebookRunner;Landroid/content/Context;Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->this$0:Lcom/facebook/dolphin/AsyncFacebookRunner;

    iput-object p2, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$listener:Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;

    iput-object p4, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->this$0:Lcom/facebook/dolphin/AsyncFacebookRunner;

    iget-object v0, v0, Lcom/facebook/dolphin/AsyncFacebookRunner;->fb:Lcom/facebook/dolphin/Facebook;

    iget-object v1, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/dolphin/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$listener:Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;

    new-instance v1, Lcom/facebook/dolphin/FacebookError;

    const-string v2, "auth.expireSession failed"

    invoke-direct {v1, v2}, Lcom/facebook/dolphin/FacebookError;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;->onFacebookError(Lcom/facebook/dolphin/FacebookError;Ljava/lang/Object;)V

    .line 97
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$listener:Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;

    iget-object v2, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    iget-object v1, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$listener:Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;

    iget-object v2, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$listener:Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;

    iget-object v2, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :catch_2
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$listener:Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;

    iget-object v2, p0, Lcom/facebook/dolphin/AsyncFacebookRunner$1;->val$state:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/facebook/dolphin/AsyncFacebookRunner$RequestListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_0
.end method
