.class public Lcom/gamesys/android/billing/common/fwk/ClientUri;
.super Ljava/lang/Object;
.source "ClientUri.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final json:Lorg/json/JSONObject;

.field private final params:Landroid/os/Bundle;

.field private final uri:Landroid/net/Uri;

.field private final useParamsAsGET:Z

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/gamesys/android/billing/common/fwk/ClientUri;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "postParams"    # Landroid/os/Bundle;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/gamesys/android/billing/common/fwk/ClientUri;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "postParams"    # Landroid/os/Bundle;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "aUserAgent"    # Ljava/lang/String;
    .param p4, "useParamsForGET"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-boolean v0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_0
    iput-object p3, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->userAgent:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->params:Landroid/os/Bundle;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->json:Lorg/json/JSONObject;

    .line 95
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->uri:Landroid/net/Uri;

    .line 96
    iput-boolean p4, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->useParamsAsGET:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "postParams"    # Landroid/os/Bundle;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "useParamsForGET"    # Z

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/gamesys/android/billing/common/fwk/ClientUri;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v1, v0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "postParams"    # Lorg/json/JSONObject;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "postParams"    # Lorg/json/JSONObject;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "aUserAgent"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-boolean v0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_0
    iput-object p3, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->userAgent:Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->json:Lorg/json/JSONObject;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->params:Landroid/os/Bundle;

    .line 112
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->uri:Landroid/net/Uri;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->useParamsAsGET:Z

    .line 114
    return-void
.end method

.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 9
    .param p0, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    const-string v5, ""

    .line 203
    :goto_0
    return-object v5

    .line 184
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 186
    .local v1, "first":Z
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 186
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 187
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 188
    .local v3, "parameter":Ljava/lang/Object;
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 192
    if-eqz v1, :cond_3

    .line 193
    const/4 v1, 0x0

    .line 198
    :goto_2
    :try_start_0
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, ""

    const-string v7, "Unable to encode URL parameter"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 195
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public generateParameters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->json:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->params:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->params:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 147
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->params:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public generateUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->json:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPostParam()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isPost()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->useParamsAsGET:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->params:Landroid/os/Bundle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->json:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useParamsForGET()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/gamesys/android/billing/common/fwk/ClientUri;->useParamsAsGET:Z

    return v0
.end method
