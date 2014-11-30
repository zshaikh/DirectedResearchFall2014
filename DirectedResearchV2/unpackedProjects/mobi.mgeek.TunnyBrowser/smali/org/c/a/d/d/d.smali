.class public Lorg/c/a/d/d/d;
.super Lorg/c/a/d/d/g;
.source "JarResource.java"


# static fields
.field private static final h:Lorg/c/a/d/c/d;


# instance fields
.field protected a:Ljava/net/JarURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/c/a/d/d/d;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/d/d;->h:Lorg/c/a/d/c/d;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/c/a/d/d/g;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/c/a/d/d/d;->c()Z

    .line 119
    iget-object v0, p0, Lorg/c/a/d/d/d;->d:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lorg/c/a/d/d/e;

    invoke-super {p0}, Lorg/c/a/d/d/g;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/c/a/d/d/e;-><init>(Lorg/c/a/d/d/d;Ljava/io/InputStream;)V

    .line 128
    :goto_0
    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/c/a/d/d/d;->d:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/c/a/d/d/d;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/c/a/d/d/d;->a:Ljava/net/JarURLConnection;

    .line 61
    invoke-super {p0}, Lorg/c/a/d/d/g;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c()Z
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/c/a/d/d/g;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    iget-object v0, p0, Lorg/c/a/d/d/d;->a:Ljava/net/JarURLConnection;

    iget-object v1, p0, Lorg/c/a/d/d/d;->e:Ljava/net/URLConnection;

    if-eq v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/c/a/d/d/d;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/c/a/d/d/d;->a:Ljava/net/JarURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    :try_start_3
    sget-object v1, Lorg/c/a/d/d/d;->h:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/d;->a:Ljava/net/JarURLConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/c/a/d/d/d;->e:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/JarURLConnection;

    iput-object v0, p0, Lorg/c/a/d/d/d;->a:Ljava/net/JarURLConnection;

    .line 90
    return-void
.end method
