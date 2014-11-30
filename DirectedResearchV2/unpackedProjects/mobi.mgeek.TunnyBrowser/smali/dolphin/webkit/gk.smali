.class Ldolphin/webkit/gk;
.super Ldolphin/webkit/WebViewClient;
.source "Prereader.java"


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Ldolphin/webkit/Prereader;


# direct methods
.method private constructor <init>(Ldolphin/webkit/Prereader;)V
    .locals 1

    .prologue
    .line 98
    iput-object p1, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    invoke-direct {p0}, Ldolphin/webkit/WebViewClient;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/gk;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/Prereader;Ldolphin/webkit/gd;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ldolphin/webkit/gk;-><init>(Ldolphin/webkit/Prereader;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Ldolphin/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p1}, Ldolphin/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v1, "about:blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    invoke-static {v1}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/Prereader;)Ldolphin/webkit/gl;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/gl;->b:Ldolphin/webkit/gl;

    if-ne v1, v2, :cond_2

    .line 111
    iget-object v1, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    sget-object v2, Ldolphin/webkit/gl;->c:Ldolphin/webkit/gl;

    invoke-static {v1, v2}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/Prereader;Ldolphin/webkit/gl;)V

    .line 113
    :cond_2
    iget-object v1, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    invoke-static {v1}, Ldolphin/webkit/Prereader;->b(Ldolphin/webkit/Prereader;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    invoke-static {v1}, Ldolphin/webkit/Prereader;->c(Ldolphin/webkit/Prereader;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 114
    sget-object v1, Ldolphin/webkit/gf;->a:[I

    iget-object v2, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    invoke-static {v2}, Ldolphin/webkit/Prereader;->d(Ldolphin/webkit/Prereader;)Ldolphin/webkit/gm;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/gm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 138
    :cond_3
    :goto_1
    iput-object v0, p0, Ldolphin/webkit/gk;->a:Ljava/lang/String;

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v1, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    sget-object v2, Ldolphin/webkit/gm;->b:Ldolphin/webkit/gm;

    iget-object v3, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    invoke-static {v3}, Ldolphin/webkit/Prereader;->c(Ldolphin/webkit/Prereader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/Prereader;Ldolphin/webkit/gm;Ljava/lang/Object;)V

    goto :goto_1

    .line 126
    :pswitch_1
    iget-object v1, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    invoke-static {v1}, Ldolphin/webkit/Prereader;->c(Ldolphin/webkit/Prereader;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/gk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    sget-object v2, Ldolphin/webkit/gm;->e:Ldolphin/webkit/gm;

    iget-object v3, p0, Ldolphin/webkit/gk;->b:Ldolphin/webkit/Prereader;

    invoke-static {v3}, Ldolphin/webkit/Prereader;->c(Ldolphin/webkit/Prereader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ldolphin/webkit/Prereader;->a(Ldolphin/webkit/Prereader;Ldolphin/webkit/gm;Ljava/lang/Object;)V

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {p1}, Ldolphin/webkit/WebView;->goBack()V

    goto :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
