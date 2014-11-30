.class public Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
.super Ljava/lang/Object;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHAsyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PHHttpConn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;,
        Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;
    }
.end annotation


# instance fields
.field protected client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mSchemeReg:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

.field private max_redirects:I

.field private password:Ljava/lang/String;

.field private redirectUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalRedirects:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const v0, 0x7fffffff

    iput v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->max_redirects:I

    .line 98
    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    invoke-direct {v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->mSchemeReg:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, v2}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->enableRedirecting(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 142
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;

    invoke-direct {v1, p0, v2}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;-><init>(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 143
    return-void
.end method

.method private enableRedirecting(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/params/HttpParams;
    .locals 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    const/4 v2, 0x1

    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    .end local p1    # "params":Lorg/apache/http/params/HttpParams;
    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 220
    .restart local p1    # "params":Lorg/apache/http/params/HttpParams;
    :cond_0
    const-string v0, "http.protocol.version"

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 221
    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {p1, v0, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 222
    invoke-static {p1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 223
    return-object p1
.end method


# virtual methods
.method public addRedirectUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public clearRedirects()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    return-void
.end method

.method public getCurrentRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getLastRedirect()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 158
    .end local p0    # "this":Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public getMaxRedirects()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->max_redirects:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isRedirectResponse(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 171
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x133

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxRedirect(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->max_redirects:I

    .line 132
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setSchemeRegistry(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;)V
    .locals 0
    .param p1, "reg"    # Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->mSchemeReg:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    .line 147
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public shouldRedirect(Lorg/apache/http/HttpResponse;)Z
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v5, 0x0

    const-string v4, "Location"

    .line 184
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->isRedirectResponse(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 186
    const-string v3, "Location"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_0

    move v3, v5

    .line 212
    :goto_0
    return v3

    .line 188
    :cond_0
    const-string v3, "Location"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "redirectURL":Ljava/lang/String;
    if-nez v0, :cond_1

    move v3, v5

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 194
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 196
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    move v3, v5

    .line 197
    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->addRedirectUrl(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->mSchemeReg:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 205
    .local v1, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    if-nez v1, :cond_4

    move v3, v5

    goto :goto_0

    .line 208
    :cond_4
    iget v3, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    iget v4, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->max_redirects:I

    if-gt v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_0

    .end local v0    # "redirectURL":Ljava/lang/String;
    .end local v1    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_6
    move v3, v5

    .line 212
    goto :goto_0
.end method

.method public start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 244
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 246
    iput v4, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    .line 247
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->clearRedirects()V

    .line 250
    iget-object v2, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "encodedCredentials":Ljava/lang/String;
    const-string v2, "Basic %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "authStr":Ljava/lang/String;
    const-string v2, "Authorization"

    invoke-interface {p1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v0    # "authStr":Ljava/lang/String;
    .end local v1    # "encodedCredentials":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method
