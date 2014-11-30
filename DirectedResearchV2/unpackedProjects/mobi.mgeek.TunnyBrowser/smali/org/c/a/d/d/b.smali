.class public Lorg/c/a/d/d/b;
.super Lorg/c/a/d/d/g;
.source "FileResource.java"


# static fields
.field private static final a:Lorg/c/a/d/c/d;

.field private static h:Z


# instance fields
.field private i:Ljava/io/File;

.field private transient j:Ljava/net/URL;

.field private transient k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/c/a/d/d/b;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/d/b;->a:Lorg/c/a/d/c/d;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lorg/c/a/d/d/b;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lorg/c/a/d/d/g;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 57
    iput-object v0, p0, Lorg/c/a/d/d/b;->j:Ljava/net/URL;

    .line 58
    iput-boolean v4, p0, Lorg/c/a/d/d/b;->k:Z

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_0
    iget-object v0, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    .line 128
    :cond_0
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    throw v0

    .line 93
    :catch_1
    move-exception v0

    .line 95
    sget-object v1, Lorg/c/a/d/d/b;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    .line 100
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/c/a/d/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    .line 109
    sget-object v1, Lorg/c/a/d/d/b;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {p0}, Lorg/c/a/d/d/b;->c()Z

    .line 113
    iget-object v0, p0, Lorg/c/a/d/d/b;->e:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/File;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    goto/16 :goto_0

    .line 105
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/c/a/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 124
    :cond_3
    iget-object v0, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lorg/c/a/d/d/g;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/d/d/b;->j:Ljava/net/URL;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/d/d/b;->k:Z

    .line 134
    iput-object p3, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    .line 135
    iget-object v0, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d/b;->d:Ljava/lang/String;

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 364
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/c/a/d/d/b;

    if-eqz v2, :cond_0

    .line 370
    check-cast p1, Lorg/c/a/d/d/b;

    .line 371
    iget-object v2, p1, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    iget-object v3, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    iget-object v3, p1, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/c/a/d/d/g;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/d/d/b;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    goto :goto_0
.end method
