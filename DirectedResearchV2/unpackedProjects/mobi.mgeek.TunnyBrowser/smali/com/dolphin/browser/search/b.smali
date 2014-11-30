.class public Lcom/dolphin/browser/search/b;
.super Lcom/dolphin/browser/search/o;
.source "MixedSuggestionsAdapter.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/a;

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/search/a;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/search/b;->a:Lcom/dolphin/browser/search/a;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/o;-><init>(Lcom/dolphin/browser/search/k;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/search/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/search/b;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    const v0, 0x7f0201a7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/b;->e:Ljava/lang/String;

    .line 58
    :cond_0
    const-string v0, "suggest_icon_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/dolphin/browser/search/b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/dolphin/browser/search/y;->a:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/dolphin/browser/search/y;->b:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/dolphin/browser/search/b;->c:Landroid/database/Cursor;

    .line 103
    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/search/b;->c:Landroid/database/Cursor;

    .line 108
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isEnableSearchSuggestion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    if-nez p1, :cond_3

    const-string v0, ""

    .line 115
    :goto_1
    const/16 v2, 0x19

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/search/b;->a(Ljava/lang/String;I)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    iput-object v0, p0, Lcom/dolphin/browser/search/b;->c:Landroid/database/Cursor;

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/search/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Search suggestions query threw an exception."

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    if-eqz v1, :cond_1

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    iput-object v1, p0, Lcom/dolphin/browser/search/b;->c:Landroid/database/Cursor;

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 121
    iput-object v1, p0, Lcom/dolphin/browser/search/b;->c:Landroid/database/Cursor;

    :cond_4
    throw v0
.end method

.method protected b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "suggest_text_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const-string v0, "suggest_text_2_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v0, "suggest_text_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method protected d(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method protected e(Landroid/database/Cursor;)I
    .locals 2

    .prologue
    .line 93
    const-string v0, "visits"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 94
    const-string v0, "visits"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
