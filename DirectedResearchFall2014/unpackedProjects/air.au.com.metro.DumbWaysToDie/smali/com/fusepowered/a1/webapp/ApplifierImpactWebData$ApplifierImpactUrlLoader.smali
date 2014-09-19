.class Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;
.super Landroid/os/AsyncTask;
.source "ApplifierImpactWebData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplifierImpactUrlLoader"
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
.field private _baseUrl:Ljava/lang/String;

.field private _binput:Ljava/io/BufferedInputStream;

.field private _connection:Ljava/net/HttpURLConnection;

.field private _done:Ljava/lang/Boolean;

.field private _downloadLength:I

.field private _finalUrl:Ljava/lang/String;

.field private _httpMethod:Ljava/lang/String;

.field private _input:Ljava/io/InputStream;

.field private _queryParams:Ljava/lang/String;

.field private _requestType:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field private _retries:I

.field private _url:Ljava/net/URL;

.field private _urlData:Ljava/lang/String;

.field final synthetic this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;


# direct methods
.method public constructor <init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V
    .locals 5
    .parameter
    .parameter "url"
    .parameter "queryParams"
    .parameter "httpMethod"
    .parameter "requestType"
    .parameter "existingRetries"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "GET"

    .line 635
    iput-object p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    .line 636
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 621
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    .line 622
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    .line 623
    iput v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_downloadLength:I

    .line 624
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    .line 625
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    .line 626
    const-string v1, ""

    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_urlData:Ljava/lang/String;

    .line 627
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_requestType:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 628
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 629
    iput v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_retries:I

    .line 630
    const-string v1, "GET"

    iput-object v4, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 631
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    .line 632
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 633
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_done:Ljava/lang/Boolean;

    .line 638
    :try_start_0
    iput-object p2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 639
    iput-object p2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 641
    const-string v1, "GET"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 642
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 645
    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    iput-object p3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    .line 652
    iput-object p4, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 653
    #getter for: Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I
    invoke-static {p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->access$2(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I
    invoke-static {p1, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->access$3(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;I)V

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total urlLoaders created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I
    invoke-static {p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->access$2(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    iput-object p5, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_requestType:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 656
    iput p6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_retries:I

    .line 657
    return-void

    .line 647
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 648
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems with url! Error-message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private cancelInMainThread()V
    .locals 3

    .prologue
    .line 700
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 701
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;

    iget-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    invoke-direct {v1, v2, p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 702
    :cond_0
    return-void
.end method

.method private closeAndFlushConnection()V
    .locals 3

    .prologue
    .line 811
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 812
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    .line 813
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 814
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 817
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems closing streams: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 688
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    .line 689
    iput v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_downloadLength:I

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_urlData:Ljava/lang/String;

    .line 691
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_requestType:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 692
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_finalUrl:Ljava/lang/String;

    .line 693
    iput v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_retries:I

    .line 694
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    .line 695
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    .line 696
    iput-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_baseUrl:Ljava/lang/String;

    .line 697
    return-void
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    const-string v11, "POST"

    const-string v10, ", "

    .line 707
    :try_start_0
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 708
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    .line 714
    :goto_0
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/16 v7, 0x4e20

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 715
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 716
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 717
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const-string v7, "Content-type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 720
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 721
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :cond_0
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_3

    .line 730
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    const-string v7, "POST"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 732
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 733
    .local v3, pout:Ljava/io/PrintWriter;
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    .end local v3           #pout:Ljava/io/PrintWriter;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Connection response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    .line 746
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_input:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 754
    const-wide/16 v4, 0x0

    .line 755
    .local v4, total:J
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    iput v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_downloadLength:I

    .line 758
    :try_start_3
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    #getter for: Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I
    invoke-static {v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->access$4(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    #setter for: Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I
    invoke-static {v6, v7}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->access$5(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;I)V

    .line 759
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Total urlLoaders that have started running: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    #getter for: Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I
    invoke-static {v7}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->access$4(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 760
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reading data from: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Content-length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_downloadLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 762
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v6, 0x5000

    invoke-direct {v0, v6}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 763
    .local v0, baf:Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v1, 0x0

    .line 765
    .local v1, current:I
    :cond_2
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_binput:Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_5

    .line 773
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_urlData:Ljava/lang/String;

    .line 774
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Read total of: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #current:I
    .end local v4           #total:J
    :cond_3
    move-object v6, v9

    .line 783
    :goto_1
    return-object v6

    .line 711
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    iput-object v6, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_connection:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 723
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 724
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problems opening connection: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancelInMainThread()V

    move-object v6, v9

    .line 726
    goto :goto_1

    .line 736
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 737
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problems writing post-data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 738
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancelInMainThread()V

    move-object v6, v9

    .line 739
    goto :goto_1

    .line 748
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 749
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problems opening stream: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancelInMainThread()V

    move-object v6, v9

    .line 751
    goto :goto_1

    .line 766
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1       #current:I
    .restart local v4       #total:J
    :cond_5
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 767
    int-to-byte v6, v1

    :try_start_5
    invoke-virtual {v0, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    .line 769
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->isCancelled()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v9

    .line 770
    goto :goto_1

    .line 776
    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #current:I
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 777
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problems loading url! Error-message: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 778
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancelInMainThread()V

    move-object v6, v9

    .line 779
    goto/16 :goto_1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_urlData:Ljava/lang/String;

    return-object v0
.end method

.method public getHTTPMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_queryParams:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_requestType:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_retries:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_done:Ljava/lang/Boolean;

    .line 789
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->closeAndFlushConnection()V

    .line 790
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    #calls: Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->urlLoadFailed(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    invoke-static {v0, p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->access$6(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    .line 791
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_done:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->_done:Ljava/lang/Boolean;

    .line 797
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->closeAndFlushConnection()V

    .line 798
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;

    #calls: Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->urlLoadCompleted(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    invoke-static {v0, p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->access$7(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    .line 801
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 802
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 806
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 807
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
