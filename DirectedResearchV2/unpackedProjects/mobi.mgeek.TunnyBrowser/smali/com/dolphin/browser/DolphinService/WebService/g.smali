.class public Lcom/dolphin/browser/DolphinService/WebService/g;
.super Ljava/lang/Object;
.source "WebServiceClient.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/DolphinService/WebService/g;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/dolphin/browser/DolphinService/WebService/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/dolphin/browser/DolphinService/WebService/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/dolphin/browser/DolphinService/WebService/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->m:Lcom/dolphin/browser/DolphinService/WebService/h;

    .line 55
    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->c:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->d:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->e:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/WebService/g;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->h:Ljava/lang/String;

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->i:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->j:I

    .line 63
    iput-object p4, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->f:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->g:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->k:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->l:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 3

    .prologue
    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "uid"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "region"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_type"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_id"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sso_login/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Lcom/dolphin/browser/DolphinService/WebService/f;"
        }
    .end annotation

    .prologue
    .line 514
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v1}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 515
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 517
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 518
    if-eqz v1, :cond_0

    .line 519
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    .line 520
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 531
    :goto_0
    return-object v0

    .line 526
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/DolphinService/WebService/g;
    .locals 3

    .prologue
    .line 83
    const-class v1, Lcom/dolphin/browser/DolphinService/WebService/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/DolphinService/WebService/g;->b:Lcom/dolphin/browser/DolphinService/WebService/g;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Call init first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 87
    :cond_0
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/DolphinService/WebService/g;->b:Lcom/dolphin/browser/DolphinService/WebService/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/dolphin/browser/DolphinService/WebService/h;)Lcom/dolphin/browser/DolphinService/WebService/g;
    .locals 8

    .prologue
    .line 70
    const-class v7, Lcom/dolphin/browser/DolphinService/WebService/g;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/DolphinService/WebService/g;->b:Lcom/dolphin/browser/DolphinService/WebService/g;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/g;

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/WebService/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/WebService/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/WebService/h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/WebService/h;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/WebService/h;->a()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/DolphinService/WebService/g;-><init>(Lcom/dolphin/browser/DolphinService/WebService/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/DolphinService/WebService/g;->b:Lcom/dolphin/browser/DolphinService/WebService/g;

    .line 79
    :cond_0
    sget-object v0, Lcom/dolphin/browser/DolphinService/WebService/g;->b:Lcom/dolphin/browser/DolphinService/WebService/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static a(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 544
    sget-object v0, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    const-string v1, "post to url %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 545
    new-instance v0, Lcom/dolphin/browser/Network/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v1, "DolphinService/WebService"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 552
    invoke-virtual {v0, v4}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 553
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->b(Lcom/dolphin/browser/Network/n;)V

    .line 554
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method private final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->m:Lcom/dolphin/browser/DolphinService/WebService/h;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/WebService/h;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->m:Lcom/dolphin/browser/DolphinService/WebService/h;

    invoke-virtual {v2}, Lcom/dolphin/browser/DolphinService/WebService/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 497
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 500
    :cond_0
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->e:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->g:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "login_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v1, "info"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JJLjava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "after_sid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "limit"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v1, "sync/getchunk"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JJLjava/lang/String;J)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "after_sid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "limit"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "no_deleted"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v1, "sync/getchunk"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "after_sid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "limit"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    invoke-direct {v1, v2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cid"

    invoke-direct {v1, v2, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v1, "sync/getchunk"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 325
    const-string v0, "updateinfo"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    new-instance v2, Lmobi/mgeek/util/a/g;

    const-string v3, "token"

    invoke-direct {v2, v3, p1}, Lmobi/mgeek/util/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    new-instance v2, Lmobi/mgeek/util/a/g;

    const-string v3, "nick_name"

    invoke-direct {v2, v3, p2}, Lmobi/mgeek/util/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    if-eqz p3, :cond_1

    .line 334
    new-instance v2, Lmobi/mgeek/util/a/a;

    const-string v3, "upload_file"

    invoke-direct {v2, v3, p3}, Lmobi/mgeek/util/a/a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 335
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_1
    new-instance v2, Lmobi/mgeek/util/a/c;

    const/4 v3, 0x0

    new-array v3, v3, [Lmobi/mgeek/util/a/d;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/mgeek/util/a/d;

    invoke-direct {v2, v0}, Lmobi/mgeek/util/a/c;-><init>([Lmobi/mgeek/util/a/d;)V

    .line 339
    :try_start_0
    invoke-static {v1, v2}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 342
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 343
    if-eqz v1, :cond_2

    .line 344
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/e;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    .line 345
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 348
    :cond_2
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a(Ljava/lang/Object;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_name"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_id"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v1, "auth"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_name"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "region"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client_id"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    const-string v1, "create"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 7

    .prologue
    .line 677
    const-string v1, "facebook"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/util/List;)V

    .line 580
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v1, "sync/create"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/util/List;)V

    .line 570
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v1, "sync/create"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->d:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 3

    .prologue
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "old_passwd"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "new_passwd"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v1, "updatepwd"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 7

    .prologue
    .line 683
    const-string v1, "google"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/util/List;)V

    .line 635
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v1, "sync/update"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/util/List;)V

    .line 597
    sget-object v1, Lcom/dolphin/browser/DolphinService/WebService/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v1, "sync/update"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 7

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->m:Lcom/dolphin/browser/DolphinService/WebService/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/h;->m()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->m:Lcom/dolphin/browser/DolphinService/WebService/h;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/WebService/h;->l()Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->m:Lcom/dolphin/browser/DolphinService/WebService/h;

    invoke-virtual {v2}, Lcom/dolphin/browser/DolphinService/WebService/h;->k()I

    move-result v2

    .line 94
    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v4, "%s;%s;%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->k:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "user_name"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v1, "resetpwd"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->d:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 3

    .prologue
    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    const-string v1, "info"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 3

    .prologue
    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v1, "sync/state"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 3

    .prologue
    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v1, "sync/getcounts"

    invoke-direct {p0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;
    .locals 4

    .prologue
    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/WebService/g;->d:Ljava/lang/String;

    const-string v2, "remove"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/dolphin/browser/DolphinService/WebService/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/util/List;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    return-object v0
.end method
