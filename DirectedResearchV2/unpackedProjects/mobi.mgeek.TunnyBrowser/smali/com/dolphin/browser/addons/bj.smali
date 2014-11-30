.class public Lcom/dolphin/browser/addons/bj;
.super Lcom/dolphin/browser/addons/aq;
.source "WebSettingsImpl.java"


# instance fields
.field private a:Lcom/dolphin/browser/core/IWebSettings;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/IWebSettings;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dolphin/browser/addons/aq;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    .line 30
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->SMALLEST:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->value()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 141
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->SMALLEST:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/IWebSettings;->setTextSize(Lcom/dolphin/browser/core/IWebSettings$TextSize;)V

    .line 152
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->SMALLER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->value()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 143
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->SMALLER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    goto :goto_0

    .line 144
    :cond_1
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->value()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 145
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    goto :goto_0

    .line 146
    :cond_2
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->LARGER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->value()I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 147
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->LARGER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    goto :goto_0

    .line 149
    :cond_3
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->LARGEST:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setLoadWithOverviewMode(Z)V

    .line 120
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setSaveFormData(Z)V

    .line 130
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setSavePassword(Z)V

    .line 135
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getSavePassword()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getTextSize()Lcom/dolphin/browser/core/IWebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->value()I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setUseWideViewPort(Z)V

    .line 157
    return-void
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setLoadsImagesAutomatically(Z)V

    .line 125
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setBlockNetworkImage(Z)V

    .line 95
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setBlockNetworkLoads(Z)V

    .line 100
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getBlockNetworkImage()Z

    move-result v0

    return v0
.end method

.method public h(Z)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptEnabled(Z)V

    .line 115
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getBlockNetworkLoads()Z

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/IWebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 110
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/addons/bj;->a:Lcom/dolphin/browser/core/IWebSettings;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
