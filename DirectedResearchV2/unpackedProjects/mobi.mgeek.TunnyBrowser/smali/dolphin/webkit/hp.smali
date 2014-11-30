.class Ldolphin/webkit/hp;
.super Ldolphin/webkit/gw;
.source "WebResourceResponse.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/WebResourceResponse;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebResourceResponse;Ldolphin/webkit/LoadListener;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Ldolphin/webkit/hp;->a:Ldolphin/webkit/WebResourceResponse;

    .line 37
    invoke-direct {p0, p2}, Ldolphin/webkit/gw;-><init>(Ldolphin/webkit/LoadListener;)V

    .line 38
    # getter for: Ldolphin/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;
    invoke-static {p1}, Ldolphin/webkit/WebResourceResponse;->access$000(Ldolphin/webkit/WebResourceResponse;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/hp;->e:Ljava/io/InputStream;

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Ldolphin/net/http/m;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ldolphin/webkit/hp;->a:Ldolphin/webkit/WebResourceResponse;

    # getter for: Ldolphin/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;
    invoke-static {v0}, Ldolphin/webkit/WebResourceResponse;->access$100(Ldolphin/webkit/WebResourceResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->a(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Ldolphin/webkit/hp;->a:Ldolphin/webkit/WebResourceResponse;

    # getter for: Ldolphin/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;
    invoke-static {v0}, Ldolphin/webkit/WebResourceResponse;->access$200(Ldolphin/webkit/WebResourceResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldolphin/net/http/m;->b(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 42
    iget-object v1, p0, Ldolphin/webkit/hp;->d:Ldolphin/webkit/LoadListener;

    iget-object v0, p0, Ldolphin/webkit/hp;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    const-string v2, ""

    invoke-virtual {v1, v3, v3, v0, v2}, Ldolphin/webkit/LoadListener;->a(IIILjava/lang/String;)V

    .line 43
    return v3

    .line 42
    :cond_0
    const/16 v0, 0x194

    goto :goto_0
.end method
