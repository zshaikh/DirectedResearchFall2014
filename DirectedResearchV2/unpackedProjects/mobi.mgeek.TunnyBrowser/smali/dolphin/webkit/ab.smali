.class Ldolphin/webkit/ab;
.super Ldolphin/webkit/gw;
.source "CacheLoader.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Ldolphin/webkit/CacheManager$CacheResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Ldolphin/webkit/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/ab;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ldolphin/webkit/LoadListener;Ldolphin/webkit/CacheManager$CacheResult;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ldolphin/webkit/gw;-><init>(Ldolphin/webkit/LoadListener;)V

    .line 41
    sget-boolean v0, Ldolphin/webkit/ab;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    iput-object p2, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    .line 44
    return-void
.end method


# virtual methods
.method protected a(Ldolphin/net/http/m;)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Ldolphin/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Ldolphin/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Ldolphin/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->a(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->c(Ljava/lang/String;)V

    .line 67
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->e(Ljava/lang/String;)V

    .line 71
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->d(Ljava/lang/String;)V

    .line 75
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 76
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->g(Ljava/lang/String;)V

    .line 79
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->allowOrigin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 80
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->allowOrigin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->h(Ljava/lang/String;)V

    .line 82
    :cond_5
    return-void
.end method

.method protected a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    iput-object v0, p0, Ldolphin/webkit/ab;->e:Ljava/io/InputStream;

    .line 49
    iget-object v0, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget-wide v0, v0, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    iput-wide v0, p0, Ldolphin/webkit/ab;->f:J

    .line 50
    iget-object v0, p0, Ldolphin/webkit/ab;->d:Ldolphin/webkit/LoadListener;

    iget-object v1, p0, Ldolphin/webkit/ab;->a:Ldolphin/webkit/CacheManager$CacheResult;

    iget v1, v1, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const-string v2, "OK"

    invoke-virtual {v0, v3, v3, v1, v2}, Ldolphin/webkit/LoadListener;->a(IIILjava/lang/String;)V

    .line 51
    return v3
.end method
