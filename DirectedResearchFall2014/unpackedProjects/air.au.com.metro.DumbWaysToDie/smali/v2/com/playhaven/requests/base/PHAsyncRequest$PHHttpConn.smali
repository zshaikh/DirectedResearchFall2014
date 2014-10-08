.class public Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;
.super Ljava/lang/Object;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/requests/base/PHAsyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PHHttpConn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHRedirectHandler;,
        Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;
    }
.end annotation


# instance fields
.field protected client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mSchemeReg:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

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

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const v0, 0x7fffffff

    iput v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->max_redirects:I

    .line 99
    new-instance v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    invoke-direct {v0}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->mSchemeReg:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, v2}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->enableRedirecting(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 143
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHRedirectHandler;

    invoke-direct {v1, p0, v2}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHRedirectHandler;-><init>(Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHRedirectHandler;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 144
    return-void
.end method

.method private enableRedirecting(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/params/HttpParams;
    .locals 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    const/4 v2, 0x1

    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    .end local p1    # "params":Lorg/apache/http/params/HttpParams;
    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 221
    .restart local p1    # "params":Lorg/apache/http/params/HttpParams;
    :cond_0
    const-string v0, "http.protocol.version"

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 222
    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {p1, v0, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 223
    invoke-static {p1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 224
    return-object p1
.end method


# virtual methods
.method public addRedirectUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public clearRedirects()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    return-void
.end method

.method public getCurrentRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getLastRedirect()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 159
    .end local p0    # "this":Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    iget-object v1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public getMaxRedirects()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->max_redirects:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isRedirectResponse(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 172
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
    .line 132
    iput p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->max_redirects:I

    .line 133
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setSchemeRegistry(Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;)V
    .locals 0
    .param p1, "reg"    # Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    .prologue
    .line 147
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->mSchemeReg:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    .line 148
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public shouldRedirect(Lorg/apache/http/HttpResponse;)Z
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v5, 0x0

    const-string v4, "Location"

    .line 185
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->isRedirectResponse(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 187
    const-string v3, "Location"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_0

    move v3, v5

    .line 213
    :goto_0
    return v3

    .line 189
    :cond_0
    const-string v3, "Location"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "redirectURL":Ljava/lang/String;
    if-nez v0, :cond_1

    move v3, v5

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 195
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 197
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    move v3, v5

    .line 198
    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->addRedirectUrl(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->mSchemeReg:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn$PHSchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 206
    .local v1, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    if-nez v1, :cond_4

    move v3, v5

    goto :goto_0

    .line 209
    :cond_4
    iget v3, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    iget v4, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->max_redirects:I

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

    .line 213
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

    .line 245
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 247
    iput v4, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    .line 248
    invoke-virtual {p0}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->clearRedirects()V

    .line 251
    iget-object v2, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "encodedCredentials":Ljava/lang/String;
    const-string v2, "Basic %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "authStr":Ljava/lang/String;
    const-string v2, "Authorization"

    invoke-interface {p1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v0    # "authStr":Ljava/lang/String;
    .end local v1    # "encodedCredentials":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method
