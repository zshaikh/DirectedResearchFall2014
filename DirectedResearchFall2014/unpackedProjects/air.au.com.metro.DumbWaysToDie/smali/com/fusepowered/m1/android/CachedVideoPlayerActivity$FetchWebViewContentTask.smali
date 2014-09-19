.class Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;
.super Landroid/os/AsyncTask;
.source "CachedVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchWebViewContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private cancelVideo:Z

.field final synthetic this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "baseUrl"

    .prologue
    .line 773
    iput-object p1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 774
    iput-object p2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    .line 775
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 766
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .parameter "arg0"

    .prologue
    .line 796
    :try_start_0
    new-instance v5, Lcom/fusepowered/m1/android/HttpGetRequest;

    invoke-direct {v5}, Lcom/fusepowered/m1/android/HttpGetRequest;-><init>()V

    iget-object v6, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/fusepowered/m1/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 797
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 798
    .local v3, statusLine:Lorg/apache/http/StatusLine;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x194

    if-eq v5, v6, :cond_0

    .line 800
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 802
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1

    .line 804
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/m1/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .local v4, webContent:Ljava/lang/String;
    move-object v5, v4

    .line 818
    .end local v1           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v3           #statusLine:Lorg/apache/http/StatusLine;
    .end local v4           #webContent:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 811
    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v3       #statusLine:Lorg/apache/http/StatusLine;
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->cancelVideo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v3           #statusLine:Lorg/apache/http/StatusLine;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 816
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 766
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "webContent"

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->cancelVideo:Z

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->dismiss()V

    .line 784
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    #getter for: Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;
    invoke-static {v0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->access$100(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;)Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    #getter for: Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->mWebView:Lcom/fusepowered/m1/android/MMWebView;
    invoke-static {v0}, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->access$100(Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;)Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    iget-object v2, v2, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->activity:Lcom/fusepowered/m1/android/MMActivity;

    invoke-virtual {v0, p1, v1, v2}, Lcom/fusepowered/m1/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 787
    iget-object v0, p0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

    .line 789
    :cond_1
    return-void
.end method
