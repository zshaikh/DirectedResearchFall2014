.class final Lcom/dolphin/browser/core/au;
.super Lcom/dolphin/browser/addons/bd;
.source "TabManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1910
    invoke-direct {p0}, Lcom/dolphin/browser/addons/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/addons/ag;
    .locals 2

    .prologue
    .line 1944
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 1945
    if-eqz v0, :cond_0

    .line 1946
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1947
    if-eqz v1, :cond_0

    .line 1948
    new-instance v0, Lcom/dolphin/browser/addons/bb;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/bb;-><init>(Lcom/dolphin/browser/core/ITab;)V

    .line 1951
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/addons/as;)Lcom/dolphin/browser/addons/ag;
    .locals 2

    .prologue
    .line 2024
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 2025
    if-eqz v0, :cond_0

    .line 2026
    invoke-interface {p1}, Lcom/dolphin/browser/addons/as;->q()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/TabManager;I)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    .line 2027
    if-eqz v1, :cond_0

    .line 2028
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->getTabFromWebView(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 2029
    if-eqz v1, :cond_0

    .line 2030
    new-instance v0, Lcom/dolphin/browser/addons/bb;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/bb;-><init>(Lcom/dolphin/browser/core/ITab;)V

    .line 2034
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Lcom/dolphin/browser/addons/ag;
    .locals 2

    .prologue
    .line 1981
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.MANAGE_TABS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 1982
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1983
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only network url is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1985
    :cond_0
    new-instance v0, Lcom/dolphin/browser/core/ax;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/core/ax;-><init>(Lcom/dolphin/browser/core/au;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/ag;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 1929
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.MANAGE_TABS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 1930
    new-instance v0, Lcom/dolphin/browser/core/aw;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/aw;-><init>(Lcom/dolphin/browser/core/au;I)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 1940
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 1914
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.MANAGE_TABS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 1915
    new-instance v0, Lcom/dolphin/browser/core/av;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/core/av;-><init>(Lcom/dolphin/browser/core/au;I)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 1925
    return-void
.end method

.method public b()[I
    .locals 4

    .prologue
    .line 1956
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v2

    .line 1957
    if-eqz v2, :cond_1

    .line 1958
    invoke-virtual {v2}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v0

    new-array v1, v0, [I

    .line 1959
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1960
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/addons/bb;->a(Lcom/dolphin/browser/core/ITab;)I

    move-result v3

    aput v3, v1, v0

    .line 1959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1964
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c(I)Lcom/dolphin/browser/addons/ag;
    .locals 2

    .prologue
    .line 1969
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 1970
    if-eqz v0, :cond_0

    .line 1971
    invoke-static {v0, p1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/TabManager;I)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1972
    if-eqz v1, :cond_0

    .line 1973
    new-instance v0, Lcom/dolphin/browser/addons/bb;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/bb;-><init>(Lcom/dolphin/browser/core/ITab;)V

    .line 1976
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)Lcom/dolphin/browser/addons/as;
    .locals 2

    .prologue
    .line 2012
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 2013
    if-eqz v0, :cond_0

    .line 2014
    invoke-static {v0, p1}, Lcom/dolphin/browser/core/TabManager;->b(Lcom/dolphin/browser/core/TabManager;I)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    .line 2015
    if-eqz v1, :cond_0

    .line 2016
    new-instance v0, Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/WebViewImpl;-><init>(Lcom/dolphin/browser/core/IWebView;)V

    .line 2019
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)Lcom/dolphin/browser/addons/ag;
    .locals 2

    .prologue
    .line 2040
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 2041
    if-eqz v0, :cond_0

    .line 2042
    invoke-static {v0, p1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/TabManager;I)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 2043
    if-eqz v1, :cond_0

    .line 2044
    new-instance v0, Lcom/dolphin/browser/addons/bb;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/bb;-><init>(Lcom/dolphin/browser/core/ITab;)V

    .line 2047
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
