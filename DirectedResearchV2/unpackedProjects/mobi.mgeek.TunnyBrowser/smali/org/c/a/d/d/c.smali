.class Lorg/c/a/d/d/c;
.super Lorg/c/a/d/d/d;
.source "JarFileResource.java"


# static fields
.field private static final h:Lorg/c/a/d/c/d;


# instance fields
.field private i:Ljava/util/jar/JarFile;

.field private j:Ljava/io/File;

.field private k:[Ljava/lang/String;

.field private l:Ljava/util/jar/JarEntry;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/c/a/d/d/c;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/d/c;->h:Lorg/c/a/d/c/d;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/c/a/d/d/d;-><init>(Ljava/net/URL;Z)V

    .line 58
    return-void
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/c/a/d/d/c;->k:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/c;->l:Ljava/util/jar/JarEntry;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/c;->j:Ljava/io/File;

    .line 69
    iget-object v0, p0, Lorg/c/a/d/d/c;->i:Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 73
    :try_start_1
    iget-object v0, p0, Lorg/c/a/d/d/c;->i:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/c/a/d/d/c;->i:Ljava/util/jar/JarFile;

    .line 82
    invoke-super {p0}, Lorg/c/a/d/d/d;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    :try_start_3
    sget-object v1, Lorg/c/a/d/d/c;->h:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    :try_start_0
    invoke-super {p0}, Lorg/c/a/d/d/d;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lorg/c/a/d/d/c;->a:Ljava/net/JarURLConnection;

    if-nez v0, :cond_0

    .line 97
    iput-object v2, p0, Lorg/c/a/d/d/c;->l:Ljava/util/jar/JarEntry;

    .line 98
    iput-object v2, p0, Lorg/c/a/d/d/c;->j:Ljava/io/File;

    .line 99
    iput-object v2, p0, Lorg/c/a/d/d/c;->i:Ljava/util/jar/JarFile;

    .line 100
    iput-object v2, p0, Lorg/c/a/d/d/c;->k:[Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/c/a/d/d/c;->i:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 95
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/c/a/d/d/c;->a:Ljava/net/JarURLConnection;

    if-nez v1, :cond_1

    .line 97
    iput-object v2, p0, Lorg/c/a/d/d/c;->l:Ljava/util/jar/JarEntry;

    .line 98
    iput-object v2, p0, Lorg/c/a/d/d/c;->j:Ljava/io/File;

    .line 99
    iput-object v2, p0, Lorg/c/a/d/d/c;->i:Ljava/util/jar/JarFile;

    .line 100
    iput-object v2, p0, Lorg/c/a/d/d/c;->k:[Ljava/lang/String;

    :cond_1
    throw v0

    .line 103
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized d()V
    .locals 4

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/c/a/d/d/d;->d()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/c;->l:Ljava/util/jar/JarEntry;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/c;->j:Ljava/io/File;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/c;->i:Ljava/util/jar/JarFile;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/c;->k:[Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lorg/c/a/d/d/c;->d:Ljava/lang/String;

    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    iget-object v1, p0, Lorg/c/a/d/d/c;->d:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/d/d/c;->m:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lorg/c/a/d/d/c;->d:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d/c;->n:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lorg/c/a/d/d/c;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/c;->n:Ljava/lang/String;

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/c/a/d/d/c;->a:Ljava/net/JarURLConnection;

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d/c;->i:Ljava/util/jar/JarFile;

    .line 125
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/c/a/d/d/c;->i:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/c/a/d/d/c;->j:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
