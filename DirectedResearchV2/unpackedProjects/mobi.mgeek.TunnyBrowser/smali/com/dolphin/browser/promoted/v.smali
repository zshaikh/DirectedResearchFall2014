.class public Lcom/dolphin/browser/promoted/v;
.super Ljava/lang/Object;
.source "WebServiceClient.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/promoted/v;


# instance fields
.field private c:Lcom/dolphin/browser/promoted/aa;

.field private d:Lcom/dolphin/browser/promoted/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/dolphin/browser/promoted/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/promoted/v;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/dolphin/browser/promoted/y;)V
    .locals 7

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/dolphin/browser/promoted/aa;

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/y;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/y;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/y;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/y;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/promoted/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/promoted/v;->c:Lcom/dolphin/browser/promoted/aa;

    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/promoted/v;->d:Lcom/dolphin/browser/promoted/y;

    .line 50
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/promoted/v;
    .locals 3

    .prologue
    .line 39
    const-class v1, Lcom/dolphin/browser/promoted/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/promoted/v;->b:Lcom/dolphin/browser/promoted/v;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Promoted app web service client not initialized."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 43
    :cond_0
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/promoted/v;->b:Lcom/dolphin/browser/promoted/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/promoted/v;)Lcom/dolphin/browser/promoted/y;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/promoted/v;->d:Lcom/dolphin/browser/promoted/y;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/promoted/v;Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/v;->a(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    const-string v0, "Request URL: %s."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/Network/h;->a(Z)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const-string v2, "BizApps"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v1

    .line 60
    iget-object v2, v1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 61
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 63
    const/16 v0, 0xc8

    if-lt v2, v0, :cond_0

    const/16 v0, 0x12b

    if-le v2, v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Lorg/apache/http/HttpException;

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

    iget-object v1, v1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    sget-object v0, Lcom/dolphin/browser/promoted/v;->a:Ljava/lang/String;

    const-string v2, "Url %s request success. "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    iget-object v0, v1, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method static declared-synchronized a(Lcom/dolphin/browser/promoted/y;)V
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/dolphin/browser/promoted/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/promoted/v;->b:Lcom/dolphin/browser/promoted/v;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/dolphin/browser/promoted/v;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/promoted/v;-><init>(Lcom/dolphin/browser/promoted/y;)V

    sput-object v0, Lcom/dolphin/browser/promoted/v;->b:Lcom/dolphin/browser/promoted/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit v1

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/dolphin/browser/promoted/v;)Lcom/dolphin/browser/promoted/aa;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/promoted/v;->c:Lcom/dolphin/browser/promoted/aa;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/dolphin/browser/promoted/h;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/dolphin/browser/promoted/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/promoted/w;-><init>(Lcom/dolphin/browser/promoted/v;J)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/v;->a(Lcom/dolphin/browser/promoted/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/h;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/promoted/x;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dolphin/browser/promoted/x",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    invoke-interface {p1}, Lcom/dolphin/browser/promoted/x;->b()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Lcom/dolphin/browser/promoted/z;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/promoted/z;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    new-instance v1, Lcom/dolphin/browser/promoted/z;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/promoted/z;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :catch_2
    move-exception v0

    .line 80
    new-instance v1, Lcom/dolphin/browser/promoted/z;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/promoted/z;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :catch_3
    move-exception v0

    .line 82
    new-instance v1, Lcom/dolphin/browser/promoted/z;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/promoted/z;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
