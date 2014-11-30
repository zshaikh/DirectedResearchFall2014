.class final Ldolphin/net/resource/b;
.super Ljava/lang/Object;
.source "ImageHandler.java"


# static fields
.field private static final a:Ljava/util/Random;


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ldolphin/net/resource/b;->a:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/net/resource/b;->b:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method static final a()Ldolphin/net/resource/b;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ldolphin/net/resource/a;->b()Ldolphin/net/resource/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ldolphin/net/resource/b;

    invoke-direct {v0}, Ldolphin/net/resource/b;-><init>()V

    invoke-static {v0}, Ldolphin/net/resource/a;->a(Ldolphin/net/resource/b;)Ldolphin/net/resource/b;

    .line 38
    invoke-static {}, Ldolphin/net/resource/a;->b()Ldolphin/net/resource/b;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ldolphin/net/resource/b;->a(Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-static {}, Ldolphin/net/resource/a;->b()Ldolphin/net/resource/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ldolphin/net/resource/b;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Ldolphin/net/resource/b;->c:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ldolphin/net/resource/a;->b()Ldolphin/net/resource/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/net/resource/b;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-static {}, Ldolphin/net/resource/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad image conf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 109
    :cond_0
    return-void

    .line 94
    :cond_1
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 98
    const-string v1, "usage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Ldolphin/net/resource/b;->b:Ljava/util/HashMap;

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 104
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v2, p0, Ldolphin/net/resource/b;->b:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method declared-synchronized b()V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/resource/b;->c:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    invoke-static {}, Ldolphin/net/resource/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ImageHandler::ImageConf::updateConfAsync]Checking image conf update..."

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ldolphin/net/resource/c;

    invoke-direct {v0, p0}, Ldolphin/net/resource/c;-><init>(Ldolphin/net/resource/b;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    iput-object v0, p0, Ldolphin/net/resource/b;->c:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Ldolphin/net/resource/b;->b(Ljava/lang/String;)I

    move-result v0

    .line 125
    sget-object v1, Ldolphin/net/resource/b;->a:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
