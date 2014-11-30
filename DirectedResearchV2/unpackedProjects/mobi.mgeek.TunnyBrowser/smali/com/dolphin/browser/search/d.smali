.class public Lcom/dolphin/browser/search/d;
.super Lcom/dolphin/browser/search/o;
.source "MixedSuggestionsAdapter.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/a;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/search/a;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/dolphin/browser/search/d;->a:Lcom/dolphin/browser/search/a;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/o;-><init>(Lcom/dolphin/browser/search/k;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/launcher/cl;Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 208
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 212
    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->e()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 218
    goto :goto_0

    .line 220
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 221
    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)I
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/dolphin/browser/search/y;->j:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/f;->e()Ljava/util/List;

    move-result-object v4

    .line 178
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 179
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 180
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 181
    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 184
    :cond_1
    instance-of v3, v0, Lcom/dolphin/browser/launcher/be;

    if-eqz v3, :cond_3

    .line 185
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    .line 186
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->c()Ljava/util/List;

    move-result-object v6

    .line 187
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 188
    if-lez v7, :cond_0

    move v3, v2

    .line 189
    :goto_2
    if-ge v3, v7, :cond_0

    .line 190
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 191
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/search/d;->a(Lcom/dolphin/browser/launcher/cl;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 192
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 196
    :cond_3
    instance-of v3, v0, Lcom/dolphin/browser/launcher/cl;

    if-eqz v3, :cond_0

    .line 197
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 198
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/search/d;->a(Lcom/dolphin/browser/launcher/cl;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_4
    new-instance v0, Lcom/dolphin/browser/search/c;

    iget-object v1, p0, Lcom/dolphin/browser/search/d;->a:Lcom/dolphin/browser/search/a;

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/search/c;-><init>(Lcom/dolphin/browser/search/a;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/d;->c:Landroid/database/Cursor;

    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/search/d;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    return-void
.end method

.method protected b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Landroid/database/Cursor;)I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method
