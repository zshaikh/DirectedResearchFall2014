.class Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsponsor/appsponsorsdk/PopupAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field private adProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;


# direct methods
.method private constructor <init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->activity:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;Landroid/app/Activity;Lcom/appsponsor/appsponsorsdk/PopupAdActivity$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;-><init>(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->postData()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    const-string v3, "https://play.google.com/store/apps/"

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->adProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->adProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-virtual {v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->finish()V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$800(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://play.google.com/store/apps/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$800(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://play.google.com/store/apps/"

    const-string v2, "market://"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$802(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$800(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-virtual {v1, v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->adProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->adProgress:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->adProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->adProgress:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->adProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public postData()V
    .locals 4

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$800(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    # getter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$800(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    new-instance v1, Ljava/io/IOException;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "http.request"

    invoke-interface {v2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v1, "http.target_host"

    invoke-interface {v2, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/appsponsor/appsponsorsdk/PopupAdActivity$MyAsyncTask;->this$0:Lcom/appsponsor/appsponsorsdk/PopupAdActivity;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    # setter for: Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->adUrl:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/appsponsor/appsponsorsdk/PopupAdActivity;->access$802(Lcom/appsponsor/appsponsorsdk/PopupAdActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1
.end method
