.class public Lcom/dolphin/browser/update/a/a;
.super Ljava/lang/Object;
.source "UpdateServiceClient.java"


# static fields
.field private static a:[Lorg/apache/http/Header;

.field private static b:Lcom/dolphin/browser/update/a/a;


# instance fields
.field private c:Lcom/dolphin/browser/update/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/Header;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/update/a/a;->a:[Lorg/apache/http/Header;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v13, Lcom/dolphin/browser/update/a/d;

    invoke-direct {v13}, Lcom/dolphin/browser/update/a/d;-><init>()V

    .line 44
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 45
    new-instance v0, Lcom/dolphin/browser/update/a/f;

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->g()Ljava/lang/String;

    move-result-object v7

    iget v8, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->i()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->j()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13}, Lcom/dolphin/browser/update/a/d;->k()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v0 .. v13}, Lcom/dolphin/browser/update/a/f;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/update/a/a;->c:Lcom/dolphin/browser/update/a/f;

    .line 51
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/update/a/a;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/dolphin/browser/update/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/update/a/a;->b:Lcom/dolphin/browser/update/a/a;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/dolphin/browser/update/a/a;

    invoke-direct {v0}, Lcom/dolphin/browser/update/a/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/update/a/a;->b:Lcom/dolphin/browser/update/a/a;

    .line 57
    :cond_0
    sget-object v0, Lcom/dolphin/browser/update/a/a;->b:Lcom/dolphin/browser/update/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/update/a/a;)Lcom/dolphin/browser/update/a/f;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/update/a/a;->c:Lcom/dolphin/browser/update/a/f;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/update/a/a;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/dolphin/browser/update/a/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cr;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move v2, v3

    .line 86
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 87
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/update/model/UpdateInfo;

    .line 88
    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    if-eqz v2, :cond_1

    .line 90
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/update/model/UpdateInfo;

    .line 91
    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 98
    :cond_1
    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/update/a/a;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/update/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 109
    :cond_0
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/dolphin/browser/update/a/a;->a:[Lorg/apache/http/Header;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const-string v2, "Update"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 112
    const-string v1, "Request URL: %s."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 115
    iget-object v2, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 116
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    .line 118
    const/16 v1, 0xc8

    if-eq v2, v1, :cond_1

    .line 119
    new-instance v1, Lorg/apache/http/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request failed with status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    const-string v1, "UpdateServiceClient"

    const-string v2, "Url %s request success. "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/update/a/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dolphin/browser/update/a/c",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    invoke-interface {p1}, Lcom/dolphin/browser/update/a/c;->b()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Lcom/dolphin/browser/update/a/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/update/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    new-instance v1, Lcom/dolphin/browser/update/a/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/update/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :catch_2
    move-exception v0

    .line 142
    new-instance v1, Lcom/dolphin/browser/update/a/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/update/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :catch_3
    move-exception v0

    .line 144
    new-instance v1, Lcom/dolphin/browser/update/a/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/update/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :catch_4
    move-exception v0

    .line 146
    new-instance v1, Lcom/dolphin/browser/update/a/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/update/a/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/dolphin/browser/update/a/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/update/a/b;-><init>(Lcom/dolphin/browser/update/a/a;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/update/a/a;->a(Lcom/dolphin/browser/update/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
