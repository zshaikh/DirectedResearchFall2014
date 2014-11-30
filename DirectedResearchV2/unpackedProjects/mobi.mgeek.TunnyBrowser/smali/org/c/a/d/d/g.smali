.class public Lorg/c/a/d/d/g;
.super Lorg/c/a/d/d/f;
.source "URLResource.java"


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field protected c:Ljava/net/URL;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/net/URLConnection;

.field protected f:Ljava/io/InputStream;

.field transient g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/c/a/d/d/g;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/d/g;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/c/a/d/d/f;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/g;->f:Ljava/io/InputStream;

    .line 45
    sget-boolean v0, Lorg/c/a/d/d/f;->b:Z

    iput-boolean v0, p0, Lorg/c/a/d/d/g;->g:Z

    .line 50
    iput-object p1, p0, Lorg/c/a/d/d/g;->c:Ljava/net/URL;

    .line 51
    iget-object v0, p0, Lorg/c/a/d/d/g;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d/g;->d:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/c/a/d/d/g;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 59
    iput-boolean p3, p0, Lorg/c/a/d/d/g;->g:Z

    .line 60
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/c/a/d/d/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid resource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/c/a/d/d/g;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lorg/c/a/d/d/g;->f:Ljava/io/InputStream;

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/d/d/g;->f:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 219
    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 223
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/d/d/g;->f:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 87
    :try_start_1
    iget-object v0, p0, Lorg/c/a/d/d/g;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/c/a/d/d/g;->f:Ljava/io/InputStream;

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :cond_1
    monitor-exit p0

    return-void

    .line 87
    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lorg/c/a/d/d/g;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c()Z
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 68
    :try_start_1
    iget-object v0, p0, Lorg/c/a/d/d/g;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;

    .line 69
    iget-object v0, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;

    iget-boolean v1, p0, Lorg/c/a/d/d/g;->g:Z

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/c/a/d/d/g;->e:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    :try_start_3
    sget-object v1, Lorg/c/a/d/d/g;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 306
    instance-of v0, p1, Lorg/c/a/d/d/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/d/d/g;->d:Ljava/lang/String;

    check-cast p1, Lorg/c/a/d/d/g;

    iget-object v1, p1, Lorg/c/a/d/d/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/c/a/d/d/g;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/c/a/d/d/g;->d:Ljava/lang/String;

    return-object v0
.end method
