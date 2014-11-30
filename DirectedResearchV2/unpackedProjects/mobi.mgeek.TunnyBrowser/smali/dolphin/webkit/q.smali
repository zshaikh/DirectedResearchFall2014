.class Ldolphin/webkit/q;
.super Ldolphin/webkit/WebViewClient;
.source "BackgroundLoader.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/j;


# direct methods
.method private constructor <init>(Ldolphin/webkit/j;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-direct {p0}, Ldolphin/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/j;Ldolphin/webkit/k;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ldolphin/webkit/q;-><init>(Ldolphin/webkit/j;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p1}, Ldolphin/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "BackgroundLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPageFinished:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v1, "about:blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    iget-object v1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-static {v1}, Ldolphin/webkit/j;->b(Ldolphin/webkit/j;)Ldolphin/webkit/s;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/s;->b:Ldolphin/webkit/s;

    if-ne v1, v2, :cond_2

    .line 116
    iget-object v1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    sget-object v2, Ldolphin/webkit/s;->c:Ldolphin/webkit/s;

    invoke-static {v1, v2}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;Ldolphin/webkit/s;)V

    .line 118
    :cond_2
    iget-object v1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-static {v1}, Ldolphin/webkit/j;->c(Ldolphin/webkit/j;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-static {v1}, Ldolphin/webkit/j;->d(Ldolphin/webkit/j;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 119
    sget-object v1, Ldolphin/webkit/m;->a:[I

    iget-object v2, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-static {v2}, Ldolphin/webkit/j;->e(Ldolphin/webkit/j;)Ldolphin/webkit/o;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 143
    :cond_3
    :goto_1
    iget-object v1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-static {v1, v0}, Ldolphin/webkit/j;->c(Ldolphin/webkit/j;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    sget-object v2, Ldolphin/webkit/o;->b:Ldolphin/webkit/o;

    iget-object v3, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-static {v3}, Ldolphin/webkit/j;->d(Ldolphin/webkit/j;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;Ldolphin/webkit/o;Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    :cond_4
    const-string v1, "BackgroundLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " load finished,success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ldolphin/webkit/j;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object v1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-static {v1, v0}, Ldolphin/webkit/j;->b(Ldolphin/webkit/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    iget-object v2, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-static {v2}, Ldolphin/webkit/j;->f(Ldolphin/webkit/j;)Ldolphin/webkit/WebViewClassic;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldolphin/webkit/WebViewClassic;->loadUrl(Ljava/lang/String;)V

    .line 141
    :cond_5
    iget-object v1, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    sget-object v2, Ldolphin/webkit/o;->c:Ldolphin/webkit/o;

    iget-object v3, p0, Ldolphin/webkit/q;->a:Ldolphin/webkit/j;

    invoke-static {v3}, Ldolphin/webkit/j;->d(Ldolphin/webkit/j;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ldolphin/webkit/j;->a(Ldolphin/webkit/j;Ldolphin/webkit/o;Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPageStarted(Ldolphin/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onReceivedError(Ldolphin/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p1}, Ldolphin/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x1

    invoke-static {v1}, Ldolphin/webkit/j;->a(Z)Z

    .line 97
    invoke-static {}, Ldolphin/webkit/cx;->a()Ldolphin/webkit/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/webkit/cx;->a(Ljava/lang/String;)V

    .line 98
    const-string v0, "BackgroundLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPageloadError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
