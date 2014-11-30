.class Ldolphin/webkit/bh;
.super Ldolphin/webkit/gw;
.source "ContentLoader.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p2}, Ldolphin/webkit/gw;-><init>(Ldolphin/webkit/LoadListener;)V

    .line 43
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 44
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/bh;->a:Ljava/lang/String;

    .line 46
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/bh;->b:Ljava/lang/String;

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/bh;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 55
    sget v0, Ldolphin/webkit/R$string;->httpErrorFileNotFound:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(Ldolphin/net/http/m;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ldolphin/webkit/bh;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "text/html"

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->a(Ljava/lang/String;)V

    .line 96
    :cond_0
    const-string v0, "no-store, no-cache"

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->f(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected a()Z
    .locals 8

    .prologue
    const/16 v7, -0xe

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    iget-object v2, p0, Ldolphin/webkit/bh;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 66
    if-nez v2, :cond_0

    .line 67
    iget-object v1, p0, Ldolphin/webkit/bh;->d:Ldolphin/webkit/LoadListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x1040007

    invoke-static {v3}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldolphin/webkit/bh;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    .line 87
    :goto_0
    return v0

    .line 76
    :cond_0
    :try_start_0
    iget-object v3, p0, Ldolphin/webkit/bh;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Ldolphin/webkit/bh;->e:Ljava/io/InputStream;

    .line 77
    iget-object v2, p0, Ldolphin/webkit/bh;->d:Ldolphin/webkit/LoadListener;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0xc8

    const-string v6, "OK"

    invoke-virtual {v2, v3, v4, v5, v6}, Ldolphin/webkit/LoadListener;->a(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 87
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    iget-object v2, p0, Ldolphin/webkit/bh;->d:Ldolphin/webkit/LoadListener;

    invoke-direct {p0, v1}, Ldolphin/webkit/bh;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v1

    .line 84
    iget-object v2, p0, Ldolphin/webkit/bh;->d:Ldolphin/webkit/LoadListener;

    const/16 v3, -0xd

    invoke-direct {p0, v1}, Ldolphin/webkit/bh;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
