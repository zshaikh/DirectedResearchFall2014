.class public Lcom/dolphin/browser/f/e/a;
.super Lcom/dolphin/browser/core/i;
.source "HomePageTabEN.java"


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/i;-><init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V

    .line 18
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/f/e/a;->d(I)V

    .line 19
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/a;->l()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/i;-><init>(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;)V

    .line 24
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/f/e/a;->d(I)V

    .line 25
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/a;->l()V

    .line 26
    return-void
.end method

.method private a(ZLcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/f/e/b;
    .locals 2

    .prologue
    .line 123
    if-nez p2, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-interface {p2, p1}, Lcom/dolphin/browser/core/ITab;->getView(Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    sget-object v1, Lcom/dolphin/browser/f/e/b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/e/b;

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolphin/browser/f/e/a;->c:Lcom/dolphin/browser/core/ITab;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/f/e/a;->a(ZLcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/f/e/b;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->s()Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/i;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoBackOrForward(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    if-lez p1, :cond_0

    .line 92
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/i;->canGoBackOrForward(I)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/f/e/a;->a(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 96
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/f/e/a;->a(ZLcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/f/e/b;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    add-int/lit8 p1, p1, 0x1

    .line 102
    :cond_1
    if-nez p1, :cond_2

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/i;->canGoBackOrForward(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/a;->getType()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0395

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/i;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolphin/browser/f/e/a;->c:Lcom/dolphin/browser/core/ITab;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/f/e/a;->a(ZLcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/f/e/b;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/dolphin/browser/f/e/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/i;->goBack()V

    goto :goto_0
.end method

.method public goBackOrForward(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    if-lez p1, :cond_1

    .line 47
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/i;->goBackOrForward(I)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/i;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/i;->goBackOrForward(I)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/f/e/a;->a(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 58
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/f/e/a;->a(ZLcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/f/e/b;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/dolphin/browser/f/e/b;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_1
    add-int/lit8 v3, p1, 0x1

    invoke-super {p0, v3}, Lcom/dolphin/browser/core/i;->canGoBackOrForward(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    add-int/lit8 v3, p1, 0x1

    invoke-super {p0, v3}, Lcom/dolphin/browser/core/i;->goBackOrForward(I)V

    .line 64
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/a;->a()I

    move-result v3

    if-lez v3, :cond_3

    .line 65
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/f/e/a;->b(I)V

    goto :goto_0

    .line 66
    :cond_3
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/dolphin/browser/f/e/b;->r()Z

    goto :goto_0

    .line 71
    :cond_4
    add-int/lit8 v3, p1, 0x2

    invoke-super {p0, v3}, Lcom/dolphin/browser/core/i;->goBackOrForward(I)V

    .line 72
    invoke-virtual {p0}, Lcom/dolphin/browser/f/e/a;->a()I

    move-result v3

    if-lez v3, :cond_5

    .line 73
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/f/e/a;->b(I)V

    .line 75
    :cond_5
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v2}, Lcom/dolphin/browser/f/e/b;->r()Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public l()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/f/e/a;->setBackgroundColor(I)V

    .line 31
    return-void
.end method
