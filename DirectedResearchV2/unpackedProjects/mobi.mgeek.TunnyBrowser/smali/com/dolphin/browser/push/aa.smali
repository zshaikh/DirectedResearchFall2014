.class public Lcom/dolphin/browser/push/aa;
.super Ljava/lang/Object;
.source "PushMessageRequester.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-static {}, Lcom/dolphin/browser/core/g;->a()Lcom/dolphin/browser/core/g;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/dolphin/browser/core/g;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const/4 v0, 0x2

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/core/g;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    const/4 v0, 0x3

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v1}, Lcom/dolphin/browser/core/g;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v0, 0x4

    goto :goto_0

    .line 90
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_0

    .line 103
    invoke-static {v3}, Lcom/dolphin/browser/push/a/c;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/push/v;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_0

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 111
    return-object v2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    const-string v0, "http://opsen.dolphin-browser.com/api/2/push/message.json"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/dolphin/browser/DolphinService/WebService/i;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/i;-><init>(Landroid/net/Uri;)V

    .line 67
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/WebService/i;->a()Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->b()Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->d()Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->c()Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/i;->f(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->f()Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    const-string v1, "msgid"

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    const-string v1, "es"

    invoke-direct {p0}, Lcom/dolphin/browser/push/aa;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/v;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v2, Lcom/dolphin/browser/Network/h;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v0, "Push"

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 42
    :try_start_0
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 43
    :try_start_1
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 44
    const/16 v3, 0xc8

    if-ne v3, v0, :cond_0

    .line 45
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->b(Lorg/apache/http/HttpEntity;)Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 47
    const-string v3, "PushMessageRequester"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/aa;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-lez v3, :cond_0

    .line 57
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    :goto_1
    move-object v0, v1

    .line 60
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 55
    :goto_2
    :try_start_2
    const-string v3, "PushMessageRequester"

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 54
    :catch_1
    move-exception v0

    goto :goto_2
.end method
