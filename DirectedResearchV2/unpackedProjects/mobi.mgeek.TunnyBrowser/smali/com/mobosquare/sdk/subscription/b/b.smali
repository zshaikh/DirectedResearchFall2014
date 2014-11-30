.class public abstract Lcom/mobosquare/sdk/subscription/b/b;
.super Lcom/mobosquare/sdk/subscription/b/a;
.source "MoboTapWebServiceClient.java"


# static fields
.field protected static a:Ljava/lang/String;

.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mobosquare/sdk/subscription/b/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mobosquare/sdk/subscription/b/b;->c:Ljava/util/ArrayList;

    .line 123
    invoke-static {}, Lcom/mobosquare/sdk/subscription/b/b;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobosquare/sdk/subscription/b/b;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/mobosquare/sdk/subscription/b/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mobosquare/sdk/subscription/b/a;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobosquare/sdk/subscription/b/b;->f:Ljava/util/HashMap;

    .line 210
    iput-object p1, p0, Lcom/mobosquare/sdk/subscription/b/b;->g:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/mobosquare/sdk/subscription/b/b;->h:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lcom/mobosquare/sdk/subscription/b/b;->d:Ljava/lang/String;

    .line 213
    iput-object p4, p0, Lcom/mobosquare/sdk/subscription/b/b;->e:Ljava/lang/String;

    .line 214
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-static {p0, p1, p2, p3}, Lcom/mobosquare/sdk/subscription/b/b;->b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final b(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/c/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    const-string v0, "mobosquare.server"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v0, "http://service.mobosquare.com"

    .line 138
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Lcom/mobosquare/sdk/subscription/b/f;
    .locals 7

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/b/b;->c()Ljava/lang/String;

    move-result-object v4

    .line 325
    if-eqz p2, :cond_0

    const-string v0, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "http"

    const-string v1, "https"

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    :cond_0
    new-instance v0, Lcom/mobosquare/sdk/subscription/b/c;

    iget-object v2, p0, Lcom/mobosquare/sdk/subscription/b/b;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobosquare/sdk/subscription/b/b;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/mobosquare/sdk/subscription/b/b;->d:Ljava/lang/String;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/mobosquare/sdk/subscription/b/c;-><init>(Lcom/mobosquare/sdk/subscription/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Z)Lcom/mobosquare/sdk/subscription/b/f;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b/b;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/mobosquare/sdk/subscription/b/b;->a(Ljava/lang/String;Z)Lcom/mobosquare/sdk/subscription/b/f;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    .line 282
    iget-object v1, p0, Lcom/mobosquare/sdk/subscription/b/b;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    monitor-exit v1

    .line 285
    return-object v0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 346
    iget-object v1, p0, Lcom/mobosquare/sdk/subscription/b/b;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    monitor-exit v1

    .line 349
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final varargs a(Lorg/apache/http/HttpRequest;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0, p2}, Lcom/mobosquare/sdk/subscription/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    const-string v1, "Authorization"

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method protected b()Lcom/mobosquare/sdk/subscription/b/f;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b/b;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mobosquare/sdk/subscription/b/b;->a(Ljava/lang/String;Z)Lcom/mobosquare/sdk/subscription/b/f;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/mobosquare/sdk/subscription/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 240
    return-void
.end method
