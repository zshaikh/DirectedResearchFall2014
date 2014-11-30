.class Ldolphin/webkit/bp;
.super Ldolphin/webkit/gw;
.source "DataLoader.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p2}, Ldolphin/webkit/gw;-><init>(Ldolphin/webkit/LoadListener;)V

    .line 46
    const-string v0, "data:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 49
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 50
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 51
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 52
    invoke-virtual {p2, v2}, Ldolphin/webkit/LoadListener;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Ldolphin/webkit/LoadListener;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/bp;->a:Ljava/lang/String;

    .line 54
    const-string v1, "base64"

    invoke-virtual {p2}, Ldolphin/webkit/LoadListener;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ldolphin/webkit/bp;->e:Ljava/io/InputStream;

    .line 67
    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Ldolphin/webkit/bp;->f:J

    .line 69
    :cond_1
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v0, "DataLoader"

    const-string v1, "Base64 decode failed."

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ldolphin/net/http/m;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ldolphin/webkit/bp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->a(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Ldolphin/webkit/bp;->e:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Ldolphin/webkit/bp;->d:Ldolphin/webkit/LoadListener;

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-virtual {v1, v0, v0, v2, v3}, Ldolphin/webkit/LoadListener;->a(IIILjava/lang/String;)V

    .line 79
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/bp;->d:Ldolphin/webkit/LoadListener;

    const/4 v1, -0x1

    sget v2, Ldolphin/webkit/R$string;->httpError:I

    invoke-static {v2}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method
