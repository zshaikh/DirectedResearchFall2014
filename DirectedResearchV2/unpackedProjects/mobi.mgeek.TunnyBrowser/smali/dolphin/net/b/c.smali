.class public Ldolphin/net/b/c;
.super Ljava/lang/Object;
.source "DNSPrefetchQueue.java"

# interfaces
.implements Ldolphin/net/b/b;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static b:Ldolphin/net/b/c;


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

.field private final f:Ldolphin/net/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "^(\\w|\\w[\\w-]*\\w)(\\.(\\w|\\w[\\w-]*\\w))*$"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldolphin/net/b/c;->a:Ljava/util/regex/Pattern;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Ldolphin/net/b/c;->b:Ldolphin/net/b/c;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Ldolphin/net/b/c;-><init>(Landroid/content/Context;I)V

    .line 144
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Ldolphin/net/b/c;->e:Landroid/content/Context;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/b/c;->c:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/b/c;->d:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ldolphin/net/b/d;

    invoke-direct {v0, p0, p2}, Ldolphin/net/b/d;-><init>(Ldolphin/net/b/c;I)V

    iput-object v0, p0, Ldolphin/net/b/c;->f:Ldolphin/net/b/d;

    .line 163
    iget-object v0, p0, Ldolphin/net/b/c;->f:Ldolphin/net/b/d;

    invoke-virtual {v0}, Ldolphin/net/b/d;->a()V

    .line 164
    return-void
.end method

.method static synthetic a(Ldolphin/net/b/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Ldolphin/net/b/c;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ldolphin/net/b/c;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ldolphin/net/b/c;->b:Ldolphin/net/b/c;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ldolphin/net/b/c;

    invoke-direct {v0, p0}, Ldolphin/net/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/net/b/c;->b:Ldolphin/net/b/c;

    .line 34
    :cond_0
    sget-object v0, Ldolphin/net/b/c;->b:Ldolphin/net/b/c;

    return-object v0
.end method

.method private static final a(Ljava/util/List;)Lorg/apache/http/HttpHost;
    .locals 2
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
    .line 310
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 312
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 313
    return-object v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ldolphin/net/b/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ldolphin/net/b/c;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Ldolphin/net/b/c;->b:Ldolphin/net/b/c;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/b/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/net/b/c;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ldolphin/net/b/c;->a(Ljava/util/List;)Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 240
    :goto_0
    monitor-exit p0

    return-object v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lorg/apache/http/HttpHost;)V
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/b/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lorg/apache/http/HttpHost;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ldolphin/net/b/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldolphin/net/b/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 292
    :cond_1
    if-eqz p2, :cond_2

    .line 293
    :try_start_1
    iget-object v0, p0, Ldolphin/net/b/c;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Ldolphin/net/b/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lorg/apache/http/HttpHost;)V
    .locals 2

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/b/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 255
    if-ltz v0, :cond_0

    .line 256
    iget-object v1, p0, Ldolphin/net/b/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    monitor-exit p0

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Ldolphin/net/b/a;->a()Ldolphin/net/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldolphin/net/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ldolphin/net/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ldolphin/net/b/c;->c(Lorg/apache/http/HttpHost;)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c(Lorg/apache/http/HttpHost;)Z
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    .line 187
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ldolphin/net/b/c;->a(Lorg/apache/http/HttpHost;Z)Z

    move-result v0

    .line 189
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Ldolphin/net/b/c;->f:Ldolphin/net/b/d;

    invoke-static {v1}, Ldolphin/net/b/d;->a(Ldolphin/net/b/d;)I

    .line 196
    :cond_0
    iget-object v1, p0, Ldolphin/net/b/c;->f:Ldolphin/net/b/d;

    invoke-virtual {v1}, Ldolphin/net/b/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
