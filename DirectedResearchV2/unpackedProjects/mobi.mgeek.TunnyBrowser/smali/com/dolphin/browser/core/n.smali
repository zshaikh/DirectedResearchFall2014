.class public Lcom/dolphin/browser/core/n;
.super Lcom/dolphin/browser/core/an;
.source "MixedTab.java"


# instance fields
.field private a:[Lcom/dolphin/browser/core/ITab;

.field private b:Landroid/view/View;

.field protected c:Lcom/dolphin/browser/core/ITab;

.field protected d:I


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/an;-><init>(Lcom/dolphin/browser/core/TabManager;I)V

    .line 234
    const-string v0, "sub_tab_count"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [Lcom/dolphin/browser/core/ITab;

    iput-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/core/n;->d:I

    .line 239
    const-string v0, "current_tab"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 240
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/n;->b(I)V

    .line 241
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/core/n;->setSavedState(Landroid/os/Bundle;)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/core/n;->e:Z

    .line 243
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->j()V

    .line 244
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;I[Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/core/an;-><init>(Lcom/dolphin/browser/core/TabManager;I)V

    .line 132
    iput-object p3, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 133
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tabs can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    aget-object v0, p3, v1

    iput-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/core/n;->d:I

    .line 138
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/n;->b(I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/dolphin/browser/core/n;-><init>(Lcom/dolphin/browser/core/TabManager;ILandroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/core/TabManager;[Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/dolphin/browser/core/n;-><init>(Lcom/dolphin/browser/core/TabManager;I[Lcom/dolphin/browser/core/ITab;)V

    .line 121
    return-void
.end method

.method private a(IZ)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move p1, v1

    .line 255
    :cond_1
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v0, v0

    if-ge p1, v0, :cond_7

    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    if-ne v0, p1, :cond_2

    if-eqz p2, :cond_7

    .line 256
    :cond_2
    iput p1, p0, Lcom/dolphin/browser/core/n;->d:I

    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    check-cast v0, Lcom/dolphin/browser/core/an;

    .line 258
    if-eqz v0, :cond_4

    .line 259
    invoke-virtual {v0}, Lcom/dolphin/browser/core/an;->c()V

    .line 260
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->isInForeground()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/core/an;->setTitleBar(Landroid/view/View;)V

    .line 262
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/core/an;->setBottomBar(Landroid/view/View;)V

    .line 264
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/core/ag;->a()Lcom/dolphin/browser/core/ag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/an;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    aget-object v0, v0, p1

    check-cast v0, Lcom/dolphin/browser/core/an;

    .line 267
    iput-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    .line 268
    if-eqz v0, :cond_6

    .line 269
    invoke-virtual {v0}, Lcom/dolphin/browser/core/an;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 270
    const-string v2, "MixedTab"

    const-string v3, "Restoring destoryed tab %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 271
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/an;->c(Z)V

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->isInForeground()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 276
    iget-object v2, p0, Lcom/dolphin/browser/core/n;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/an;->setTitleBar(Landroid/view/View;)V

    .line 277
    iget-object v2, p0, Lcom/dolphin/browser/core/n;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/an;->setBottomBar(Landroid/view/View;)V

    .line 279
    :cond_5
    iget-object v2, p0, Lcom/dolphin/browser/core/n;->q:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/an;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 281
    :cond_6
    invoke-direct {p0, v1}, Lcom/dolphin/browser/core/n;->f(I)V

    .line 282
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->g()V

    .line 284
    :cond_7
    return-void

    .line 273
    :cond_8
    iget-boolean v2, p0, Lcom/dolphin/browser/core/n;->n:Z

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/an;->c(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 451
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/n;->e(I)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 457
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    iget v1, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 458
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearContentAndHistory()V

    .line 459
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/n;->b(I)V

    .line 460
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    const-string v0, "No tab can loadUrl"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Lcom/dolphin/browser/core/ITab;)Z
    .locals 3

    .prologue
    const/16 v2, 0x3000

    .line 584
    invoke-interface {p1, v2}, Lcom/dolphin/browser/core/ITab;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/p;

    .line 585
    if-nez v0, :cond_0

    .line 586
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->canGoForward()Z

    move-result v0

    .line 594
    :goto_0
    return v0

    .line 588
    :cond_0
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v1

    .line 589
    invoke-interface {v1}, Lcom/dolphin/browser/core/IWebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 590
    invoke-static {v0}, Lcom/dolphin/browser/core/p;->a(Lcom/dolphin/browser/core/p;)I

    move-result v0

    if-le v1, v0, :cond_1

    .line 591
    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lcom/dolphin/browser/core/ITab;->setData(ILjava/lang/Object;)V

    .line 592
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/n;->e(I)V

    .line 594
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 203
    iget-object v3, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 204
    if-eqz v3, :cond_0

    array-length v0, v3

    if-lt p1, v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v2, p1

    .line 208
    :goto_1
    array-length v0, v3

    if-ge v2, v0, :cond_3

    .line 209
    aget-object v1, v3, v2

    .line 210
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 211
    check-cast v0, Lcom/dolphin/browser/core/an;

    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->isDeleting()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/core/an;->d(Z)V

    .line 212
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->destroy()V

    .line 208
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 215
    :cond_3
    if-lez p1, :cond_4

    .line 217
    new-array v0, p1, [Lcom/dolphin/browser/core/ITab;

    iput-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    invoke-static {v3, v5, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 220
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    goto :goto_0
.end method

.method private f(I)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 287
    if-gtz p1, :cond_0

    .line 288
    const/4 p1, 0x5

    .line 290
    :cond_0
    iget-object v5, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    .line 291
    iget-object v6, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 292
    if-nez v6, :cond_2

    .line 314
    :cond_1
    return-void

    .line 295
    :cond_2
    array-length v0, v6

    new-array v7, v0, [Lcom/dolphin/browser/core/WebViewTab;

    .line 297
    array-length v8, v6

    move v3, v4

    move v1, v4

    :goto_0
    if-ge v3, v8, :cond_4

    aget-object v0, v6, v3

    .line 298
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_6

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_6

    instance-of v2, v0, Lcom/dolphin/browser/core/WebViewTab;

    if-eqz v2, :cond_6

    instance-of v2, v0, Lcom/dolphin/browser/core/bg;

    if-eqz v2, :cond_3

    move v0, v1

    .line 297
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 304
    :cond_3
    add-int/lit8 v2, v1, 0x1

    check-cast v0, Lcom/dolphin/browser/core/WebViewTab;

    aput-object v0, v7, v1

    move v0, v2

    goto :goto_1

    .line 306
    :cond_4
    new-instance v0, Lcom/dolphin/browser/core/o;

    invoke-direct {v0}, Lcom/dolphin/browser/core/o;-><init>()V

    invoke-static {v7, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 307
    :cond_5
    :goto_2
    if-le v1, p1, :cond_1

    .line 308
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v7, v1

    .line 309
    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebViewTab;->saveState()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 310
    const-string v2, "MixedTab"

    const-string v3, "Recycleing tab %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v2, v3, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebViewTab;->destroy()V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    return v0
.end method

.method public a(I)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected a(Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    check-cast v0, Lcom/dolphin/browser/core/an;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/an;->a(Landroid/net/http/SslError;)V

    .line 1833
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->a(Landroid/net/http/SslError;)V

    .line 1834
    return-void
.end method

.method protected a(Lcom/dolphin/browser/core/ITab;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->d()I

    move-result v0

    .line 164
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/dolphin/browser/core/ITab;

    .line 165
    iget-object v2, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    aput-object p1, v1, v0

    .line 167
    iput-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 168
    return-void
.end method

.method public bridge synthetic a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/an;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .prologue
    .line 1463
    if-nez p1, :cond_0

    .line 1464
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->e()V

    .line 1465
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->performResume()V

    .line 1466
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->onWindowFocusChanged(Z)V

    .line 1470
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1497
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    if-nez v0, :cond_1

    .line 1509
    :cond_0
    return v4

    .line 1500
    :cond_1
    const-string v0, "sub_tab_count"

    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1501
    const-string v0, "current_tab"

    iget v1, p0, Lcom/dolphin/browser/core/n;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1502
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    aget-object v1, v1, v0

    .line 1504
    if-eqz v1, :cond_2

    .line 1505
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->saveState()Z

    .line 1506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sub_tab"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getSavedState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1502
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic addChildTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->addChildTab(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    :cond_0
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->addPackageName(Ljava/lang/String;)V

    .line 1050
    :cond_0
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->addPackageNames(Ljava/util/Set;)V

    .line 1043
    :cond_0
    return-void
.end method

.method public b(Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->getView(Z)Landroid/view/View;

    move-result-object v0

    .line 1549
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->onResume()V

    .line 1436
    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/core/n;->a(IZ)V

    .line 249
    return-void
.end method

.method protected b(Lcom/dolphin/browser/core/ITab;)V
    .locals 3

    .prologue
    const/16 v2, 0x3000

    .line 175
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/n;->e(I)V

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    .line 177
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Lcom/dolphin/browser/core/p;

    invoke-direct {v1, v0, p1}, Lcom/dolphin/browser/core/p;-><init>(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V

    invoke-interface {v0, v2, v1}, Lcom/dolphin/browser/core/ITab;->setData(ILjava/lang/Object;)V

    .line 182
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/n;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 183
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/n;->b(I)V

    .line 184
    return-void

    .line 180
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/dolphin/browser/core/ITab;->setData(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected b(Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1514
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    if-nez v2, :cond_1

    .line 1534
    :cond_0
    :goto_0
    return v0

    .line 1517
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 1518
    const-string v3, "current_tab"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1519
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 1520
    aget-object v4, v2, v0

    .line 1521
    if-nez v4, :cond_2

    .line 1522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sub_tab"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1523
    iget-object v5, p0, Lcom/dolphin/browser/core/n;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v5, v4}, Lcom/dolphin/browser/core/TabManager;->i(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v4

    .line 1530
    aput-object v4, v2, v0

    .line 1519
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1533
    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/dolphin/browser/core/n;->a(IZ)V

    move v0, v1

    .line 1534
    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1454
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->c()V

    .line 1455
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->pause()V

    .line 1456
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->onWindowFocusChanged(Z)V

    .line 1459
    :cond_0
    return-void
.end method

.method protected c(I)V
    .locals 1

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    check-cast v0, Lcom/dolphin/browser/core/an;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/an;->c(I)V

    .line 1840
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->c(I)V

    .line 1841
    return-void
.end method

.method public canGoBack()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 563
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->canGoBack()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/dolphin/browser/core/n;->d:I

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 566
    :cond_1
    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 623
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_7

    move v1, v2

    move v3, v2

    move v4, v2

    .line 626
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 627
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    aget-object v7, v0, v1

    .line 628
    if-eqz v7, :cond_1

    .line 629
    invoke-interface {v7}, Lcom/dolphin/browser/core/ITab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v8

    .line 630
    const/16 v0, 0x3000

    invoke-interface {v7, v0}, Lcom/dolphin/browser/core/ITab;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/p;

    .line 632
    if-nez v0, :cond_3

    .line 633
    if-nez v8, :cond_2

    move v0, v5

    :goto_1
    move v6, v0

    .line 638
    :goto_2
    if-nez v8, :cond_4

    move v0, v2

    .line 639
    :goto_3
    iget-object v8, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-ne v7, v8, :cond_0

    .line 640
    add-int v3, v0, v4

    .line 642
    :cond_0
    add-int/2addr v4, v6

    .line 626
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 633
    :cond_2
    invoke-interface {v8}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v0

    goto :goto_1

    .line 635
    :cond_3
    invoke-virtual {v0}, Lcom/dolphin/browser/core/p;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v6, v0

    goto :goto_2

    .line 638
    :cond_4
    invoke-interface {v8}, Lcom/dolphin/browser/core/IWebBackForwardList;->getCurrentIndex()I

    move-result v0

    goto :goto_3

    .line 645
    :cond_5
    add-int v0, v3, p1

    .line 646
    if-ltz v0, :cond_6

    if-ge v0, v4, :cond_6

    .line 648
    :goto_4
    return v5

    :cond_6
    move v5, v2

    .line 646
    goto :goto_4

    :cond_7
    move v5, v2

    .line 648
    goto :goto_4
.end method

.method public canGoForward()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 601
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/core/n;->d(Lcom/dolphin/browser/core/ITab;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/dolphin/browser/core/n;->d:I

    iget-object v2, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 604
    :cond_1
    return v0
.end method

.method public canStateUndo()Z
    .locals 1

    .prologue
    .line 1490
    const/4 v0, 0x1

    return v0
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 1485
    const/4 v0, 0x1

    return v0
.end method

.method public cancelSelectText()V
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->cancelSelectText()V

    .line 1303
    :cond_0
    return-void
.end method

.method public captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/ITab;->captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1674
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 732
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v1, :cond_1

    .line 733
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 753
    :cond_0
    :goto_0
    return-object v0

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->getSavedState()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->getSavedState()Landroid/os/Bundle;

    move-result-object v1

    .line 736
    const-string v2, "current_tab"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sub_tab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 738
    if-eqz v1, :cond_0

    .line 739
    const-string v2, "currentPicture"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    if-eqz v1, :cond_0

    .line 741
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Landroid/graphics/Picture;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v1

    .line 746
    const-string v2, "WebViewTab"

    const-string v3, "Read picture failed"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->clearCache(Z)V

    .line 916
    :cond_0
    return-void
.end method

.method public clearContentAndHistory()V
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_1

    .line 1562
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1563
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    aget-object v1, v1, v0

    .line 1564
    if-eqz v1, :cond_0

    .line 1565
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->clearContentAndHistory()V

    .line 1562
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1569
    :cond_1
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearFormData()V

    .line 923
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearHistory()V

    .line 930
    :cond_0
    return-void
.end method

.method public bridge synthetic clearInLoad()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->clearInLoad()V

    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearMatches()V

    .line 976
    :cond_0
    return-void
.end method

.method public bridge synthetic clearPageData()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->clearPageData()V

    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearSslPreferences()V

    .line 937
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearView()V

    .line 728
    :cond_0
    return-void
.end method

.method public bridge synthetic closeOnExit()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->closeOnExit()Z

    move-result v0

    return v0
.end method

.method public containsView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsWebView(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1409
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 1420
    :cond_0
    :goto_0
    return v1

    .line 1412
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1413
    :goto_1
    iget-object v3, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1414
    iget-object v3, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    aget-object v3, v3, v0

    .line 1415
    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Lcom/dolphin/browser/core/ITab;->containsWebView(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1416
    goto :goto_0

    .line 1413
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public contentToViewX(I)I
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->contentToViewX(I)I

    move-result v0

    .line 1364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contentToViewY(I)I
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->contentToViewY(I)I

    move-result v0

    .line 1373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 944
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v0, v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 373
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->destroy()V

    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 378
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    aget-object v1, v0, v2

    .line 380
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 381
    check-cast v0, Lcom/dolphin/browser/core/an;

    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->isDeleting()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/core/an;->d(Z)V

    .line 382
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->destroy()V

    .line 378
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 385
    :cond_2
    iput-object v4, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 386
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/core/n;->d:I

    .line 387
    iput-object v4, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1089
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCopySelection()Z
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->doCopySelection()Z

    move-result v0

    .line 1382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doSelectTextDone()V
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->doSelectTextDone()V

    .line 1557
    :cond_0
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->documentAsText(Landroid/os/Message;)V

    .line 1621
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 1473
    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->getSavedState()Landroid/os/Bundle;

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/core/n;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1476
    const-string v1, "sub_tab_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [Lcom/dolphin/browser/core/ITab;

    iput-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 1477
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    .line 1478
    const/4 v1, -0x1

    iput v1, p0, Lcom/dolphin/browser/core/n;->d:I

    .line 1479
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/n;->restoreState(Landroid/os/Bundle;)Z

    .line 1481
    :cond_0
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->findAll(Ljava/lang/String;)I

    move-result v0

    .line 960
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->findAll(Ljava/lang/String;Lcom/dolphin/browser/core/IWebView$FindResultListener;)V

    .line 1628
    :cond_0
    return-void
.end method

.method public findNext(Z)V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->findNext(Z)V

    .line 953
    :cond_0
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->flingScroll(II)V

    .line 1123
    :cond_0
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->freeMemory()V

    .line 908
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/n;->f(I)V

    .line 909
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getChildTabs()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getChildTabs()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getContentHeight()I

    move-result v0

    .line 853
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getContentWidth()I

    move-result v0

    .line 862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getData(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->getData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFakeProgress()I
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFakeProgress()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 835
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getFirstChildTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFirstChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public getFlatHistoryCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1734
    iget-object v2, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 1736
    if-eqz v2, :cond_1

    .line 1737
    array-length v3, v2

    move v1, v0

    .line 1738
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1739
    aget-object v4, v2, v1

    if-eqz v4, :cond_0

    .line 1740
    aget-object v4, v2, v1

    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->getFlatHistoryCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 1738
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1744
    :cond_1
    return v0
.end method

.method public getFlatHistoryIndex()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1781
    iget-object v2, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 1782
    if-eqz v2, :cond_3

    .line 1783
    iget v3, p0, Lcom/dolphin/browser/core/n;->d:I

    move v1, v0

    .line 1785
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1786
    aget-object v4, v2, v1

    if-nez v4, :cond_0

    .line 1785
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1790
    :cond_0
    aget-object v4, v2, v1

    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->getFlatHistoryCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1793
    :cond_1
    aget-object v1, v2, v3

    if-eqz v1, :cond_2

    .line 1794
    aget-object v1, v2, v3

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getFlatHistoryIndex()I

    move-result v1

    add-int/2addr v0, v1

    .line 1799
    :cond_2
    :goto_2
    return v0

    :cond_3
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getFlatHistoryIndex()I

    move-result v0

    goto :goto_2
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getHeight()I

    move-result v0

    .line 1337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getHitTestResult2()Lcom/dolphin/browser/core/IWebView$HitTestResult;

    move-result-object v0

    .line 785
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getLastChildTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLastChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public getLastGameModeUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1717
    iget-object v2, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 1718
    if-eqz v2, :cond_2

    .line 1719
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 1720
    if-nez v0, :cond_1

    .line 1719
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1723
    :cond_1
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getLastGameModeUrl()Ljava/lang/String;

    move-result-object v0

    .line 1724
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1729
    :goto_1
    return-object v0

    :cond_2
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLastGameModeUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic getLastVideoModeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLastVideoModeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public getLockIconType()I
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getLockIconType()I

    move-result v0

    .line 1612
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getLockIconType()I

    move-result v0

    goto :goto_0
.end method

.method public getMinWebAppModePageIndex()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1749
    iget-object v2, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 1750
    if-eqz v2, :cond_2

    .line 1751
    array-length v3, v2

    move v1, v0

    .line 1753
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1754
    aget-object v4, v2, v1

    .line 1755
    if-nez v4, :cond_0

    .line 1753
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1758
    :cond_0
    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->getMinWebAppModePageIndex()I

    move-result v5

    .line 1759
    if-ltz v5, :cond_1

    .line 1760
    add-int/2addr v0, v5

    .line 1767
    :goto_2
    return v0

    .line 1763
    :cond_1
    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->getFlatHistoryCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 1767
    :cond_2
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getMinWebAppModePageIndex()I

    move-result v0

    goto :goto_2
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 817
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getPageData(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->getPageData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getParentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getProgress()I

    move-result v0

    .line 844
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getRightSiblingTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getRightSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public getSSLError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getSSLError()Landroid/net/http/SslError;

    move-result-object v0

    .line 1825
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getSSLError()Landroid/net/http/SslError;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getSavedState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getSavedState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getScale()F

    move-result v0

    .line 762
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getScrollX()I

    move-result v0

    .line 1310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getScrollY()I

    move-result v0

    .line 1319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecureStatus()I
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getSecureStatus()I

    move-result v0

    .line 1807
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getSecureStatus()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getSecurityIconType()I
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getSecurityIconType()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 826
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitleBar()Landroid/view/View;

    move-result-object v0

    .line 1278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitleHeight()I

    move-result v0

    .line 1287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getType()I

    move-result v0

    .line 1585
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 808
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getViewHeight()I

    move-result v0

    .line 1253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getViewWidth()I

    move-result v0

    .line 1244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getVisibleTitleHeight()I

    move-result v0

    .line 1196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;

    move-result-object v0

    return-object v0
.end method

.method public getWebSettings()Lcom/dolphin/browser/core/IWebSettings;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    .line 1034
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWebView()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getWebView()Ljava/lang/Object;

    move-result-object v0

    .line 1576
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->getWebView()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getWebViewCallback()Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    .line 1004
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getWidth()I

    move-result v0

    .line 1328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->goBack()V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    if-lez v0, :cond_0

    .line 578
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/n;->b(I)V

    goto :goto_0
.end method

.method public goBackOrForward(I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 655
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_1

    .line 656
    if-lez p1, :cond_6

    .line 658
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    aget-object v4, v1, v0

    .line 660
    if-eqz v4, :cond_5

    .line 661
    invoke-interface {v4}, Lcom/dolphin/browser/core/ITab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v5

    .line 662
    if-nez v5, :cond_2

    move v3, v2

    .line 663
    :goto_1
    if-nez v5, :cond_3

    move v1, v2

    .line 664
    :goto_2
    if-lez v3, :cond_0

    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_0

    .line 666
    add-int/lit8 v3, v3, -0x1

    sub-int v1, v3, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 667
    sub-int/2addr p1, v1

    .line 668
    invoke-interface {v4, v1}, Lcom/dolphin/browser/core/ITab;->goBackOrForward(I)V

    .line 670
    :cond_0
    if-nez p1, :cond_4

    .line 703
    :cond_1
    return-void

    .line 662
    :cond_2
    invoke-interface {v5}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v1

    move v3, v1

    goto :goto_1

    .line 663
    :cond_3
    invoke-interface {v5}, Lcom/dolphin/browser/core/IWebBackForwardList;->getCurrentIndex()I

    move-result v1

    goto :goto_2

    .line 673
    :cond_4
    iget v1, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/n;->b(I)V

    .line 674
    add-int/lit8 p1, p1, -0x1

    .line 658
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_6
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    move v4, v0

    move v0, p1

    :goto_3
    if-ltz v4, :cond_1

    .line 681
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    aget-object v5, v1, v4

    .line 682
    if-eqz v5, :cond_8

    .line 683
    invoke-interface {v5}, Lcom/dolphin/browser/core/ITab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v6

    .line 684
    if-nez v6, :cond_9

    move v3, v2

    .line 685
    :goto_4
    if-nez v6, :cond_a

    move v1, v2

    .line 686
    :goto_5
    if-lez v3, :cond_7

    if-lez v1, :cond_7

    .line 688
    neg-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 689
    sub-int/2addr v0, v1

    .line 690
    invoke-interface {v5, v1}, Lcom/dolphin/browser/core/ITab;->goBackOrForward(I)V

    .line 692
    :cond_7
    if-eqz v0, :cond_1

    .line 695
    iget v1, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/n;->b(I)V

    .line 696
    add-int/lit8 v0, v0, 0x1

    .line 680
    :cond_8
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_3

    .line 684
    :cond_9
    invoke-interface {v6}, Lcom/dolphin/browser/core/IWebBackForwardList;->getSize()I

    move-result v1

    move v3, v1

    goto :goto_4

    .line 685
    :cond_a
    invoke-interface {v6}, Lcom/dolphin/browser/core/IWebBackForwardList;->getCurrentIndex()I

    move-result v1

    goto :goto_5
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/n;->d(Lcom/dolphin/browser/core/ITab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->goForward()V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 616
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/n;->b(I)V

    goto :goto_0
.end method

.method public hasFeature(I)Z
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    .line 1164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSSLError()Z
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->hasSSLError()Z

    move-result v0

    .line 1816
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->hasSSLError()Z

    move-result v0

    goto :goto_0
.end method

.method public hideTitleBar()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->hideTitleBar()V

    .line 1205
    :cond_0
    return-void
.end method

.method public hideZoomButtonsController()V
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->hideZoomButtonsController()V

    .line 1237
    :cond_0
    return-void
.end method

.method public bridge synthetic inLoad()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->inLoad()Z

    move-result v0

    return v0
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->invokeZoomPicker()V

    .line 778
    :cond_0
    return-void
.end method

.method public isAtLeftEdge()Z
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isAtLeftEdge()Z

    move-result v0

    .line 1219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtRightEdge()Z
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isAtRightEdge()Z

    move-result v0

    .line 1228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isBackOrForward()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isBackOrForward()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDeleting()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isDeleting()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGameMode()Z
    .locals 4

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_1

    .line 1696
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 1697
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 1698
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->isGameMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1699
    const/4 v0, 0x1

    .line 1703
    :goto_1
    return v0

    .line 1697
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1703
    :cond_1
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isGameMode()Z

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic isInForeground()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isInForeground()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoadingReceivedError()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isLoadingReceivedError()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpeningContentUrl()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isOpeningContentUrl()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpeningInNewTab()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isOpeningInNewTab()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isPaused()Z

    move-result v0

    .line 899
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isPrivateBrowsingEnabled()Z

    move-result v0

    .line 1657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isRecycled()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isRecycled()Z

    move-result v0

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isSelectingText()Z

    move-result v0

    .line 1173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isTitleReceived()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isTitleReceived()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVideoMode()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isVideoMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isWebappMode()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->isWebappMode()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/ITab;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/n;->e(I)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 513
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    iget v1, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 514
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearContentAndHistory()V

    .line 515
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/n;->b(I)V

    .line 516
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/core/n;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_2
    const-string v0, "No tab can loadData"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 528
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/ITab;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/n;->e(I)V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 535
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    iget v1, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 536
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearContentAndHistory()V

    .line 537
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/n;->b(I)V

    .line 538
    invoke-virtual/range {p0 .. p5}, Lcom/dolphin/browser/core/n;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    const-string v0, "No tab can loadDataWithBaseURL"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_1

    .line 473
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isEnableTrafficTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-static {}, Lcom/dolphin/browser/v/b;->a()Lcom/dolphin/browser/v/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/v/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/n;->a(Ljava/lang/String;)V

    .line 479
    :cond_1
    return-void
.end method

.method public bridge synthetic needShowSearchEngineTab()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->needShowSearchEngineTab()Z

    move-result v0

    return v0
.end method

.method public notifyFindDialogDismissed2()V
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->notifyFindDialogDismissed2()V

    .line 983
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1071
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1080
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->onPause()V

    .line 885
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->onResume()V

    .line 892
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1098
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->onWindowFocusChanged(Z)V

    .line 1542
    :cond_0
    return-void
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->pageDown(Z)Z

    move-result v0

    .line 719
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->pageUp(Z)Z

    move-result v0

    .line 710
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->onPause()V

    .line 1443
    :cond_0
    return-void
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->pauseTimers()V

    .line 871
    :cond_0
    return-void
.end method

.method public bridge synthetic performResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->performResume()V

    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->postUrl(Ljava/lang/String;[B)V

    .line 486
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/n;->e(I)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 492
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    iget v1, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 493
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearContentAndHistory()V

    .line 494
    iget v0, p0, Lcom/dolphin/browser/core/n;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/n;->b(I)V

    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/core/n;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 498
    :cond_2
    const-string v0, "No tab can postUrl"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->reload()V

    .line 559
    :cond_0
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1027
    :cond_0
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->removePackageName(Ljava/lang/String;)V

    .line 1057
    :cond_0
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->requestFocus()Z

    move-result v0

    .line 1148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 794
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->requestImageRef(Landroid/os/Message;)V

    .line 801
    :cond_0
    return-void
.end method

.method public resetLockIcon(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->resetLockIcon(Ljava/lang/String;)V

    .line 1596
    :goto_0
    return-void

    .line 1594
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->resetLockIcon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic restoreState(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->restoreState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->resumeTimers()V

    .line 878
    :cond_0
    return-void
.end method

.method public revertLockIcon()V
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->revertLockIcon()V

    .line 1605
    :goto_0
    return-void

    .line 1603
    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->revertLockIcon()V

    goto :goto_0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/ITab;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->saveWebArchive(Ljava/lang/String;)V

    .line 1643
    :cond_0
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2, p3}, Lcom/dolphin/browser/core/ITab;->saveWebArchive(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V

    .line 1650
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->scrollTo(II)V

    .line 1636
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setBackgroundColor(I)V

    .line 1157
    :cond_0
    return-void
.end method

.method public setBottomBar(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setBottomBar(Landroid/view/View;)V

    .line 1270
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/core/n;->p:Landroid/view/View;

    .line 1271
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 345
    :cond_0
    return-void
.end method

.method public bridge synthetic setCloseOnExit(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setCloseOnExit(Z)V

    return-void
.end method

.method public setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setContextPanelListener(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public bridge synthetic setData(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/an;->setData(ILjava/lang/Object;)V

    return-void
.end method

.method public setFindDialogHeight(I)V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setFindDialogHeight(I)V

    .line 990
    :cond_0
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setFindIsUp(Z)V

    .line 969
    :cond_0
    return-void
.end method

.method public setGameMode(Z)V
    .locals 4

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_1

    .line 1681
    iget-object v1, p0, Lcom/dolphin/browser/core/n;->a:[Lcom/dolphin/browser/core/ITab;

    .line 1682
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 1683
    if-nez v3, :cond_0

    .line 1682
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1687
    :cond_0
    invoke-interface {v3, p1}, Lcom/dolphin/browser/core/ITab;->setGameMode(Z)V

    goto :goto_1

    .line 1690
    :cond_1
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setGameMode(Z)V

    .line 1691
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/core/ITab;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setInitialScale(I)V

    .line 771
    :cond_0
    return-void
.end method

.method public bridge synthetic setIsBackOrForward(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setIsBackOrForward(Z)V

    return-void
.end method

.method public bridge synthetic setIsOpeningContentUrl(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setIsOpeningContentUrl(Z)V

    return-void
.end method

.method public bridge synthetic setIsOpeningInNewTab(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setIsOpeningInNewTab(Z)V

    return-void
.end method

.method public bridge synthetic setIsTitleReceived(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setIsTitleReceived(Z)V

    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setJsFlags(Ljava/lang/String;)V

    .line 395
    :cond_0
    return-void
.end method

.method public setLastGameModeUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setLastGameModeUrl(Ljava/lang/String;)V

    .line 1713
    :goto_0
    return-void

    .line 1712
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setLastGameModeUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic setLastVideoModeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setLastVideoModeUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    :cond_0
    return-void
.end method

.method public bridge synthetic setLoadingReceivedErrorState(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setLoadingReceivedErrorState(Z)V

    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setMapTrackballToArrowKeys(Z)V

    .line 1107
    :cond_0
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setNetworkAvailable(Z)V

    .line 402
    :cond_0
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ITab;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1405
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setOnScrollListener(Lcom/dolphin/browser/core/IWebView$OnScrollListener;)V

    .line 1666
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setOverScrollMode(I)V

    .line 1450
    :cond_0
    return-void
.end method

.method public bridge synthetic setPageData(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/core/an;->setPageData(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setParentTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setParentTab(Lcom/dolphin/browser/core/ITab;)V

    return-void
.end method

.method public setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setPictureListener(Lcom/dolphin/browser/core/IWebView$PictureListener;)V

    .line 1013
    :cond_0
    return-void
.end method

.method public bridge synthetic setSavedState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setSavedState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setScrollBarStyle(I)V

    .line 322
    :cond_0
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setScrollbarFadingEnabled(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method public bridge synthetic setSecurityIconType(I)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setSecurityIconType(I)V

    return-void
.end method

.method public setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setSelectTextListener(Lcom/dolphin/browser/core/IWebView$SelectTextListener;)V

    .line 1398
    :cond_0
    return-void
.end method

.method public bridge synthetic setShowSearchEngineTabState(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setShowSearchEngineTabState(Z)V

    return-void
.end method

.method public bridge synthetic setStoppedLoadingByUser(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setStoppedLoadingByUser(Z)V

    return-void
.end method

.method public setTitleBar(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setTitleBar(Landroid/view/View;)V

    .line 1262
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/core/n;->b:Landroid/view/View;

    .line 1263
    return-void
.end method

.method public bridge synthetic setVideoMode(Z)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setVideoMode(Z)V

    return-void
.end method

.method public bridge synthetic setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V

    return-void
.end method

.method public setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setWebViewCallback(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 997
    :cond_0
    return-void
.end method

.method public setWebappMode(Z)V
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->setWebappMode(Z)V

    .line 1776
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/core/an;->setWebappMode(Z)V

    .line 1777
    return-void
.end method

.method public showTitleBar()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->showTitleBar()V

    .line 1212
    :cond_0
    return-void
.end method

.method public startSelectText()V
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->startSelectText()V

    .line 1296
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->stopLoading()V

    .line 552
    :cond_0
    return-void
.end method

.method public bridge synthetic stoppedLoadingByUser()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/core/an;->stoppedLoadingByUser()Z

    move-result v0

    return v0
.end method

.method public viewToContentX(I)I
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->viewToContentX(I)I

    move-result v0

    .line 1346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public viewToContentY(I)I
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->viewToContentY(I)I

    move-result v0

    .line 1355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->zoomIn()Z

    move-result v0

    .line 1130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/dolphin/browser/core/n;->c:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->zoomOut()Z

    move-result v0

    .line 1139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
