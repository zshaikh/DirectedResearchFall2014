.class public Lcom/dolphin/browser/extensions/a/f;
.super Ljava/lang/Object;
.source "WebServiceClient.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/extensions/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/dolphin/browser/extensions/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/extensions/a/f;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/dolphin/browser/extensions/a/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/extensions/a/f;->b:Lcom/dolphin/browser/extensions/a/f;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/dolphin/browser/extensions/a/f;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/a/f;-><init>()V

    sput-object v0, Lcom/dolphin/browser/extensions/a/f;->b:Lcom/dolphin/browser/extensions/a/f;

    .line 37
    :cond_0
    sget-object v0, Lcom/dolphin/browser/extensions/a/f;->b:Lcom/dolphin/browser/extensions/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/a/f;Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/a/f;->a(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 46
    new-instance v0, Lcom/dolphin/browser/Network/h;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a(Lorg/apache/http/HttpEntity;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const-string v1, "BizAddon"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 52
    const-string v1, "Request URL: %s."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 54
    iget-object v2, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 55
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    .line 57
    const/16 v1, 0xc8

    if-lt v2, v1, :cond_0

    const/16 v1, 0x12b

    if-le v2, v1, :cond_1

    .line 58
    :cond_0
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

    .line 62
    :cond_1
    sget-object v1, Lcom/dolphin/browser/extensions/a/f;->a:Ljava/lang/String;

    const-string v2, "Url %s request success. "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/dolphin/browser/extensions/a/b;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/dolphin/browser/extensions/a/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/extensions/a/g;-><init>(Lcom/dolphin/browser/extensions/a/f;J)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/a/f;->a(Lcom/dolphin/browser/extensions/a/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a/b;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/extensions/a/h;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dolphin/browser/extensions/a/h",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    invoke-interface {p1}, Lcom/dolphin/browser/extensions/a/h;->b()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Lcom/dolphin/browser/extensions/a/i;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/extensions/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Lcom/dolphin/browser/extensions/a/i;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/extensions/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :catch_2
    move-exception v0

    .line 74
    new-instance v1, Lcom/dolphin/browser/extensions/a/i;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/extensions/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 75
    :catch_3
    move-exception v0

    .line 76
    new-instance v1, Lcom/dolphin/browser/extensions/a/i;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/extensions/a/i;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
