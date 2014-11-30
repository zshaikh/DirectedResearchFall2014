.class public Lcom/dolphin/browser/core/i;
.super Lcom/dolphin/browser/core/n;
.source "HomePageTab.java"


# instance fields
.field protected a:Lcom/dolphin/browser/core/ITab;

.field protected b:Lcom/dolphin/browser/core/ITab;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/dolphin/browser/core/n;-><init>(Lcom/dolphin/browser/core/TabManager;ILandroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;)V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dolphin/browser/core/ITab;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/core/n;-><init>(Lcom/dolphin/browser/core/TabManager;I[Lcom/dolphin/browser/core/ITab;)V

    .line 40
    iput-object p2, p0, Lcom/dolphin/browser/core/i;->a:Lcom/dolphin/browser/core/ITab;

    .line 41
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/core/i;->e()V

    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/core/i;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-static {p1}, Lcom/dolphin/browser/util/URIUtil;->isDolphinGameUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/core/i;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->n()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 88
    :goto_0
    iput-object v0, p0, Lcom/dolphin/browser/core/i;->b:Lcom/dolphin/browser/core/ITab;

    .line 89
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/i;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 91
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/i;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->m()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public canStateUndo()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/core/i;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/core/i;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->canStateUndo()Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/core/i;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/core/i;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->canUndo()Z

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/i;->a(Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/core/n;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/i;->a(Ljava/lang/String;)V

    .line 74
    invoke-super/range {p0 .. p5}, Lcom/dolphin/browser/core/n;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/i;->a(Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/n;->loadUrl(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/i;->a(Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/n;->postUrl(Ljava/lang/String;[B)V

    .line 81
    return-void
.end method
