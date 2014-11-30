.class public Lcom/dolphin/browser/r/d;
.super Ljava/lang/Object;
.source "SonarWebClient.java"


# static fields
.field private static a:Lcom/dolphin/browser/r/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/dolphin/browser/r/d;

    invoke-direct {v0}, Lcom/dolphin/browser/r/d;-><init>()V

    sput-object v0, Lcom/dolphin/browser/r/d;->a:Lcom/dolphin/browser/r/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/apache/http/HttpEntity;ZZII)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 61
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/dolphin/browser/r/d;->b(Ljava/lang/String;Lorg/apache/http/HttpEntity;ZZII)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    const-string v1, "SonarWebClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    .line 68
    const-string v1, "SonarWebClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "SonarWebClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/r/d;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/r/d;->a:Lcom/dolphin/browser/r/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v1

    .line 103
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getDolphinPushUrl()Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lorg/apache/http/HttpEntity;ZZII)Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    .line 91
    const-string v0, "SonarWebClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post to url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/dolphin/browser/Network/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v1, "Sonar"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->b(Lcom/dolphin/browser/Network/n;)V

    .line 98
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 6

    .prologue
    .line 50
    :try_start_0
    const-string v0, "data/1/push_info"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/r/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2710

    const/16 v5, 0x2710

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/r/d;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;ZZII)Lcom/dolphin/browser/DolphinService/WebService/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Lcom/dolphin/browser/r/a;->a()Lcom/dolphin/browser/r/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/r/a;->d()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 41
    const-string v1, "SonarWebClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login body:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/r/d;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto :goto_0
.end method
