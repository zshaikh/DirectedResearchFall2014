.class Lcom/dolphin/browser/t/m;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Lcom/dolphin/browser/core/ITabListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabCountChanged(Lcom/dolphin/browser/core/TabManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 330
    const-string v0, "onTabCountChanged"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/titlebar/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/q;->d()V

    .line 332
    invoke-virtual {p1}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    iget-boolean v1, v1, Lcom/dolphin/browser/t/l;->b:Z

    if-nez v1, :cond_0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e064c

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 335
    iget-object v1, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    iput-boolean v3, v1, Lcom/dolphin/browser/t/l;->b:Z

    .line 337
    :cond_0
    if-lt v0, v4, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->e(Lcom/dolphin/browser/t/l;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->f(Lcom/dolphin/browser/t/l;)I

    move-result v0

    if-ge v0, v4, :cond_1

    invoke-static {}, Lcom/dolphin/browser/h/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e035e

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Z)Z

    .line 343
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->g(Lcom/dolphin/browser/t/l;)I

    .line 344
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->f(Lcom/dolphin/browser/t/l;)I

    move-result v0

    invoke-static {v0}, Lcom/dolphin/browser/h/e;->a(I)V

    .line 347
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/o;

    .line 349
    iget-object v1, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->h(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/o;->a(I)V

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->i(Lcom/dolphin/browser/t/l;)V

    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 352
    return-void
.end method

.method public onTabIconChanged(Lcom/dolphin/browser/core/ITab;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 321
    const-string v0, "onTabIconChanged"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 322
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/t/l;->a(Landroid/graphics/Bitmap;)V

    .line 325
    :cond_0
    return-void
.end method

.method public onTabProgressChanged(Lcom/dolphin/browser/core/ITab;I)V
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabProgressChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 313
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/ITab;I)V

    .line 316
    :cond_0
    return-void
.end method

.method public onTabSelectionChanged(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 282
    const-string v0, "onTabSelectionChanged"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 283
    if-eqz p2, :cond_0

    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0, p2}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V

    .line 286
    :cond_0
    if-eqz p1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0, p1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/titlebar/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/q;->c(Lcom/dolphin/browser/core/ITab;)V

    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/t/l;)V

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->m()V

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->i()V

    .line 293
    if-eqz p2, :cond_2

    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->af()V

    .line 297
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->isOpeningContentUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/t/l;->h(Ljava/lang/String;)V

    .line 303
    :cond_3
    if-eqz p1, :cond_4

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0, p1}, Lcom/dolphin/browser/t/l;->e(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 307
    return-void
.end method

.method public onTabTitleChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabTitleChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0, p1}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V

    .line 273
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->i()V

    .line 277
    :cond_0
    return-void
.end method

.method public onTabUrlChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabUrlChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 261
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/t/l;->a(Ljava/lang/String;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0, p1}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/t/m;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;)V

    .line 266
    return-void
.end method
