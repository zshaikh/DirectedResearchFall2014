.class public abstract Lcom/dolphin/browser/search/o;
.super Lcom/dolphin/browser/search/q;
.source "SuggestionAdapterBase.java"


# instance fields
.field final synthetic b:Lcom/dolphin/browser/search/k;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/search/k;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dolphin/browser/search/o;->b:Lcom/dolphin/browser/search/k;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/q;-><init>(Lcom/dolphin/browser/search/k;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/database/Cursor;)I
.end method

.method protected a(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getBrowserAuthority()Ljava/lang/String;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-object v2

    .line 175
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 179
    const-string v1, "search_suggest_query"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    const-string v3, "url LIKE ?"

    .line 183
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 187
    if-lez p2, :cond_1

    .line 188
    const-string v1, "limit"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 191
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 193
    const-string v5, "visits DESC, created DESC"

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/search/o;->b:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method public a()Lcom/dolphin/browser/search/w;
    .locals 7

    .prologue
    .line 116
    iget-object v1, p0, Lcom/dolphin/browser/search/o;->c:Landroid/database/Cursor;

    .line 117
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/o;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/o;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/o;->a(Landroid/database/Cursor;)I

    move-result v4

    .line 121
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/o;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 122
    new-instance v0, Lcom/dolphin/browser/search/w;

    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/search/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/search/o;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v2, v4, v5}, Lcom/dolphin/browser/search/w;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/o;->e(Landroid/database/Cursor;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/search/w;->c:I

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    invoke-static {p2}, Lcom/dolphin/browser/util/URIUtil;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_1
    return-object p1
.end method

.method protected abstract b(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/dolphin/browser/util/URIUtil;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract c(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method protected abstract d(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method protected abstract e(Landroid/database/Cursor;)I
.end method
