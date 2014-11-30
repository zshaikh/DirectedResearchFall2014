.class Lcom/dolphin/browser/share/box/u;
.super Lcom/dolphin/browser/util/f;
.source "WebToPdf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/box/s;

.field private b:Ljava/lang/String;

.field private c:Lcom/dolphin/browser/share/box/t;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/share/box/s;Ljava/lang/String;Lcom/dolphin/browser/share/box/t;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dolphin/browser/share/box/u;->a:Lcom/dolphin/browser/share/box/s;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/dolphin/browser/share/box/u;->b:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/dolphin/browser/share/box/u;->c:Lcom/dolphin/browser/share/box/t;

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/dolphin/browser/share/box/t;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-object p1

    .line 137
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/share/box/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 138
    :goto_1
    iget-object v2, p0, Lcom/dolphin/browser/share/box/u;->a:Lcom/dolphin/browser/share/box/s;

    invoke-static {v2}, Lcom/dolphin/browser/share/box/s;->a(Lcom/dolphin/browser/share/box/s;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->ensureDir(Ljava/io/File;)Z

    .line 142
    :try_start_0
    const-string v2, "Box"

    invoke-static {v0, v2}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 143
    :try_start_1
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    .line 145
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->a:Lorg/apache/http/HttpResponse;

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/share/box/u;->a(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/dolphin/browser/share/box/u;->a:Lcom/dolphin/browser/share/box/s;

    invoke-static {v4}, Lcom/dolphin/browser/share/box/s;->a(Lcom/dolphin/browser/share/box/s;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 150
    iget-object v0, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 151
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 152
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://pdfmyurl.com?url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 158
    :cond_2
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    :goto_2
    move-object p1, v1

    .line 161
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 156
    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 155
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    const-string v1, "application/pdf"

    .line 86
    const-string v2, "Content-Disposition"

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    const-string v2, "Content-Type"

    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dolphin/browser/share/box/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/dolphin/browser/util/cn;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_2
    :goto_0
    return-object v0

    .line 99
    :cond_3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/dolphin/browser/util/cn;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 121
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/box/u;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/share/box/u;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/share/box/u;->c:Lcom/dolphin/browser/share/box/t;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/share/box/u;->a(Ljava/lang/String;Lcom/dolphin/browser/share/box/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/box/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/share/box/u;->c:Lcom/dolphin/browser/share/box/t;

    invoke-interface {v0}, Lcom/dolphin/browser/share/box/t;->a()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/box/u;->c:Lcom/dolphin/browser/share/box/t;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/share/box/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
