.class Lcom/dolphin/browser/analytics/c;
.super Lcom/dolphin/browser/util/f;
.source "ActivationAnalysisManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/analytics/a;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/analytics/a;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dolphin/browser/analytics/c;->a:Lcom/dolphin/browser/analytics/a;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/analytics/a;Lcom/dolphin/browser/analytics/b;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/dolphin/browser/analytics/c;-><init>(Lcom/dolphin/browser/analytics/a;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/analytics/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/16 v6, 0x7d0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ref"

    invoke-static {}, Lcom/dolphin/browser/analytics/e;->e()Lcom/dolphin/browser/analytics/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/analytics/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "did"

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/core/Configuration;->getAndroidId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "lc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    new-instance v3, Lcom/dolphin/browser/Network/h;

    const-string v4, "http://opsen.dolphin-browser.com/api/promotion/active.json"

    invoke-direct {v3, v4}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v3, "BizInstallExchange"

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 113
    :try_start_1
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 114
    if-eqz v3, :cond_1

    .line 115
    :try_start_2
    iget-object v0, v3, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 116
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    .line 117
    const/4 v0, 0x1

    .line 123
    :goto_1
    invoke-static {v3}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 125
    :goto_2
    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/dolphin/browser/analytics/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "activation analysis successful"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_3
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {}, Lcom/dolphin/browser/analytics/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    move-object v3, v1

    .line 121
    :goto_4
    :try_start_3
    invoke-static {}, Lcom/dolphin/browser/analytics/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    invoke-static {v3}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    move v0, v2

    .line 124
    goto :goto_2

    .line 123
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_5
    invoke-static {v3}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    .line 128
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/analytics/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "activation analysis failed "

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 123
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 120
    :catch_2
    move-exception v0

    goto :goto_4

    :cond_1
    move v0, v2

    goto :goto_1
.end method
