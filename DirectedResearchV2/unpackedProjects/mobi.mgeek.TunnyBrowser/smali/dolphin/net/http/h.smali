.class public Ldolphin/net/http/h;
.super Ljava/lang/Object;
.source "ConnectionPreconnectQueue.java"

# interfaces
.implements Ldolphin/net/http/g;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static b:Ldolphin/net/http/h;


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private final f:Ldolphin/net/http/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "^(\\w[\\w-]*\\w)(\\.\\w[\\w-]*\\w)*$"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldolphin/net/http/h;->a:Ljava/util/regex/Pattern;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Ldolphin/net/http/h;->b:Ldolphin/net/http/h;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Ldolphin/net/http/h;-><init>(Landroid/content/Context;I)V

    .line 146
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const-string v0, "Http"

    const-string v1, "[ConnectionPreconnectQueue::ConnectionPreconnectQueue(Context, connectionCount)]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object p1, p0, Ldolphin/net/http/h;->e:Landroid/content/Context;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/http/h;->c:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/http/h;->d:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ldolphin/net/http/i;

    invoke-direct {v0, p0, p2}, Ldolphin/net/http/i;-><init>(Ldolphin/net/http/h;I)V

    iput-object v0, p0, Ldolphin/net/http/h;->f:Ldolphin/net/http/i;

    .line 166
    iget-object v0, p0, Ldolphin/net/http/h;->f:Ldolphin/net/http/i;

    invoke-virtual {v0}, Ldolphin/net/http/i;->a()V

    .line 167
    return-void
.end method

.method static synthetic a(Ldolphin/net/http/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Ldolphin/net/http/h;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ldolphin/net/http/h;
    .locals 2

    .prologue
    .line 28
    const-string v0, "Http"

    const-string v1, "[ConnectionPreconnectQueue::init]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v0, Ldolphin/net/http/h;->b:Ldolphin/net/http/h;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ldolphin/net/http/h;

    invoke-direct {v0, p0}, Ldolphin/net/http/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/net/http/h;->b:Ldolphin/net/http/h;

    .line 32
    :cond_0
    sget-object v0, Ldolphin/net/http/h;->b:Ldolphin/net/http/h;

    return-object v0
.end method

.method private static final a(Ljava/util/List;)Lorg/apache/http/HttpHost;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/HttpHost;",
            ">;)",
            "Lorg/apache/http/HttpHost;"
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 297
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Lorg/apache/http/HttpHost;
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    const/4 v0, 0x0

    .line 216
    :try_start_0
    iget-object v1, p0, Ldolphin/net/http/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v0, p0, Ldolphin/net/http/h;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ldolphin/net/http/h;->a(Ljava/util/List;)Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    :cond_0
    monitor-exit p0

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lorg/apache/http/HttpHost;)V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lorg/apache/http/HttpHost;)V
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 235
    if-ltz v0, :cond_0

    .line 236
    iget-object v1, p0, Ldolphin/net/http/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
