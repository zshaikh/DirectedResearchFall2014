.class public abstract Lorg/c/a/d/d/f;
.super Ljava/lang/Object;
.source "Resource.java"


# static fields
.field private static final a:Lorg/c/a/d/c/d;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/c/a/d/d/f;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/d/f;->a:Lorg/c/a/d/c/d;

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lorg/c/a/d/d/f;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/c/a/d/d/f;
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lorg/c/a/d/d/f;->b:Z

    invoke-static {p0, v0}, Lorg/c/a/d/d/f;->a(Ljava/lang/String;Z)Lorg/c/a/d/d/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lorg/c/a/d/d/f;
    .locals 5

    .prologue
    .line 154
    .line 158
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    invoke-static {v0}, Lorg/c/a/d/d/f;->a(Ljava/net/URL;)Lorg/c/a/d/d/f;

    move-result-object v0

    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 162
    const-string v0, "ftp:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jar:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :try_start_1
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 172
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 173
    invoke-static {v2}, Lorg/c/a/d/d/f;->a(Ljava/io/File;)Ljava/net/URL;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 176
    invoke-virtual {v4, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 177
    new-instance v0, Lorg/c/a/d/d/b;

    invoke-direct {v0, v3, v4, v2}, Lorg/c/a/d/d/b;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    .line 181
    sget-object v2, Lorg/c/a/d/d/f;->a:Lorg/c/a/d/c/d;

    const-string v3, "EXCEPTION "

    invoke-interface {v2, v3, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    throw v1

    .line 187
    :cond_1
    sget-object v0, Lorg/c/a/d/d/f;->a:Lorg/c/a/d/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    throw v1
.end method

.method public static a(Ljava/net/URL;)Lorg/c/a/d/d/f;
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lorg/c/a/d/d/f;->b:Z

    invoke-static {p0, v0}, Lorg/c/a/d/d/f;->a(Ljava/net/URL;Z)Lorg/c/a/d/d/f;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/net/URL;Z)Lorg/c/a/d/d/f;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    if-nez p0, :cond_0

    .line 129
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :try_start_0
    new-instance v0, Lorg/c/a/d/d/b;

    invoke-direct {v0, p0}, Lorg/c/a/d/d/b;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 116
    sget-object v0, Lorg/c/a/d/d/f;->a:Lorg/c/a/d/c/d;

    const-string v2, "EXCEPTION "

    invoke-interface {v0, v2, v1}, Lorg/c/a/d/c/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v0, Lorg/c/a/d/d/a;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/c/a/d/d/a;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v2, "jar:file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    new-instance v0, Lorg/c/a/d/d/c;

    invoke-direct {v0, p0, p1}, Lorg/c/a/d/d/c;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 124
    :cond_2
    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    new-instance v0, Lorg/c/a/d/d/d;

    invoke-direct {v0, p0, p1}, Lorg/c/a/d/d/d;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 129
    :cond_3
    new-instance v1, Lorg/c/a/d/d/g;

    invoke-direct {v1, p0, v0, p1}, Lorg/c/a/d/d/g;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/io/InputStream;
.end method

.method public abstract b()V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/c/a/d/d/f;->b()V

    .line 304
    return-void
.end method
