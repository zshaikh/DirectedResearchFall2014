.class public Lcom/dolphin/browser/search/u;
.super Lcom/dolphin/browser/search/q;
.source "SuggestionAdapterBase.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/k;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/search/k;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/dolphin/browser/search/u;->a:Lcom/dolphin/browser/search/k;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/q;-><init>(Lcom/dolphin/browser/search/k;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/search/w;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 339
    iget-object v3, p0, Lcom/dolphin/browser/search/u;->c:Landroid/database/Cursor;

    .line 340
    if-eqz v3, :cond_1

    .line 341
    const-string v1, "suggest_text_1"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 342
    const-string v2, "suggest_text_2"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 343
    const-string v2, "suggest_text_2_url"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 349
    if-ltz v1, :cond_4

    .line 350
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 353
    :goto_0
    if-ltz v4, :cond_3

    .line 354
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 357
    :goto_1
    if-ltz v5, :cond_0

    .line 358
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 366
    :goto_2
    new-instance v2, Lcom/dolphin/browser/search/w;

    sget-object v3, Lcom/dolphin/browser/search/y;->c:Lcom/dolphin/browser/search/y;

    invoke-virtual {v3}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v3

    invoke-direct {v2, v1, v0, v3, v0}, Lcom/dolphin/browser/search/w;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    .line 370
    :cond_1
    return-object v0

    :cond_2
    move-object v1, v2

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/search/u;->c:Landroid/database/Cursor;

    .line 377
    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 379
    iput-object v1, p0, Lcom/dolphin/browser/search/u;->c:Landroid/database/Cursor;

    .line 382
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v2

    .line 383
    iget-object v3, p0, Lcom/dolphin/browser/search/u;->a:Lcom/dolphin/browser/search/k;

    iput-object v2, v3, Lcom/dolphin/browser/search/k;->l:Lcom/dolphin/browser/core/BrowserSettings;

    .line 385
    if-eqz v2, :cond_1

    .line 386
    invoke-virtual {v2}, Lcom/dolphin/browser/core/BrowserSettings;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 387
    invoke-virtual {v2}, Lcom/dolphin/browser/core/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/dolphin/browser/search/g;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/search/u;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/dolphin/browser/search/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_1

    .line 391
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 398
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/dolphin/browser/search/u;->c:Landroid/database/Cursor;

    .line 400
    return-void

    :cond_2
    move-object v0, v1

    .line 395
    goto :goto_0
.end method
