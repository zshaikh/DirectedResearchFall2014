.class final Lcom/vungle/sdk/o$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field final synthetic g:Lcom/vungle/sdk/o;


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/o;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    iput-object p1, p0, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v1, p0, Lcom/vungle/sdk/o$a;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/o$a;->b:Z

    .line 105
    iput-object v2, p0, Lcom/vungle/sdk/o$a;->d:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/vungle/sdk/o$a;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/o;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/vungle/sdk/o$a;-><init>(Lcom/vungle/sdk/o;)V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 129
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    array-length v2, v1

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    iget-object v1, p0, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-static {v1}, Lcom/vungle/sdk/o;->a(Lcom/vungle/sdk/o;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-static {v2}, Lcom/vungle/sdk/o;->a(Lcom/vungle/sdk/o;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    .line 142
    :cond_0
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/sdk/o$a;->c:Ljava/lang/String;

    .line 146
    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 147
    const/4 v2, 0x2

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/vungle/sdk/o$a;->d:Ljava/lang/String;

    .line 151
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 152
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 153
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 154
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 155
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Download started on: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 160
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 170
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 171
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem encountered during file download: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iput-boolean v5, p0, Lcom/vungle/sdk/o$a;->f:Z

    .line 183
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 185
    :goto_2
    return-object v0

    .line 134
    :catch_1
    move-exception v1

    .line 135
    :try_start_3
    const-string v2, "DownloadFile"

    const-string v3, "Failed to decode filename."

    invoke-static {v2, v3, v1}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 175
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 176
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Downloaded ended on: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 185
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vungle/sdk/o$a$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/sdk/o$a$1;-><init>(Lcom/vungle/sdk/o$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "VungleDownloadThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/vungle/sdk/o$a;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vungle/sdk/o$a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
