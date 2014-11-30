.class final Ldolphin/net/resource/d;
.super Ljava/lang/Object;
.source "ResourceHandlerChain.java"

# interfaces
.implements Ldolphin/net/resource/ResourceHandler;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldolphin/net/resource/ResourceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/net/resource/d;->a:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/net/resource/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(Ldolphin/net/resource/ResourceHandler;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ldolphin/net/resource/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Ldolphin/net/resource/d;->c:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public getSupportedMimeTypes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v2, p0, Ldolphin/net/resource/d;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v0, p0, Ldolphin/net/resource/d;->a:Ljava/util/List;

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/resource/ResourceHandler;

    .line 63
    invoke-interface {v0}, Ldolphin/net/resource/ResourceHandler;->getSupportedMimeTypes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public handleRequestContext(Ldolphin/net/resource/f;)Ldolphin/net/resource/f;
    .locals 5

    .prologue
    .line 84
    iget-object v2, p0, Ldolphin/net/resource/d;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_0
    iget-object v0, p0, Ldolphin/net/resource/d;->a:Ljava/util/List;

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, p1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/resource/ResourceHandler;

    .line 87
    invoke-interface {v0, v1}, Ldolphin/net/resource/ResourceHandler;->shouldHandleRequestContext(Ldolphin/net/resource/f;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-interface {v0, v1}, Ldolphin/net/resource/ResourceHandler;->handleRequestContext(Ldolphin/net/resource/f;)Ldolphin/net/resource/f;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    .line 91
    :cond_0
    monitor-exit v2

    .line 92
    return-object v1

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public handleResource(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Ldolphin/net/resource/d;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Ldolphin/net/resource/d;->a:Ljava/util/List;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/resource/ResourceHandler;

    .line 50
    invoke-interface {v0, p1}, Ldolphin/net/resource/ResourceHandler;->shouldHandleResource(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v0, p1}, Ldolphin/net/resource/ResourceHandler;->handleResource(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;

    move-result-object v0

    monitor-exit v1

    .line 55
    :goto_0
    return-object v0

    .line 54
    :cond_1
    monitor-exit v1

    .line 55
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Ldolphin/net/resource/d;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Ldolphin/net/resource/d;->a:Ljava/util/List;

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/resource/ResourceHandler;

    .line 73
    invoke-interface {v0, p1}, Ldolphin/net/resource/ResourceHandler;->isSupported(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    .line 76
    :goto_0
    return v0

    .line 75
    :cond_0
    monitor-exit v1

    .line 76
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ldolphin/net/resource/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public shouldHandleRequestContext(Ldolphin/net/resource/f;)Z
    .locals 3

    .prologue
    .line 32
    .line 33
    iget-object v1, p0, Ldolphin/net/resource/d;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Ldolphin/net/resource/d;->a:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/resource/ResourceHandler;

    .line 36
    invoke-interface {v0, p1}, Ldolphin/net/resource/ResourceHandler;->shouldHandleRequestContext(Ldolphin/net/resource/f;)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    monitor-exit v1

    .line 42
    :goto_0
    return v0

    .line 41
    :cond_1
    monitor-exit v1

    .line 42
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldHandleResource(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 17
    .line 18
    iget-object v1, p0, Ldolphin/net/resource/d;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v0, p0, Ldolphin/net/resource/d;->a:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/net/resource/ResourceHandler;

    .line 21
    invoke-interface {v0, p1}, Ldolphin/net/resource/ResourceHandler;->shouldHandleResource(Ljava/lang/String;)Z

    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    monitor-exit v1

    .line 27
    :goto_0
    return v0

    .line 26
    :cond_1
    monitor-exit v1

    .line 27
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
