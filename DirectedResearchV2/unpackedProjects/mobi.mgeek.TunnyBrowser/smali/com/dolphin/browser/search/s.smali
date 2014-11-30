.class public Lcom/dolphin/browser/search/s;
.super Lcom/dolphin/browser/search/q;
.source "SuggestionAdapterBase.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/k;

.field private final b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/search/k;)V
    .locals 3

    .prologue
    .line 251
    iput-object p1, p0, Lcom/dolphin/browser/search/s;->a:Lcom/dolphin/browser/search/k;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/q;-><init>(Lcom/dolphin/browser/search/k;)V

    .line 253
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/dolphin/browser/search/s;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/search/w;
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/search/s;->c:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/dolphin/browser/search/s;->c:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    new-instance v2, Lcom/dolphin/browser/search/w;

    sget-object v3, Lcom/dolphin/browser/search/y;->d:Lcom/dolphin/browser/search/y;

    invoke-virtual {v3}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v3

    invoke-direct {v2, v0, v1, v3, v1}, Lcom/dolphin/browser/search/w;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    const v0, 0x7f7fffff

    iput v0, v2, Lcom/dolphin/browser/search/w;->e:F

    .line 265
    return-object v2
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/search/s;->c:Landroid/database/Cursor;

    .line 272
    invoke-static {}, Lcom/dolphin/browser/search/d/i;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 278
    invoke-static {}, Lcom/dolphin/browser/search/d/i;->a()Lcom/dolphin/browser/search/d/i;

    move-result-object v0

    .line 279
    const-string v1, "Namespace Filter Cursor"

    invoke-static {v1}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/d/i;->b(Ljava/lang/String;)Lcom/dolphin/browser/search/d/a;

    move-result-object v0

    .line 282
    invoke-virtual {v1}, Lcom/dolphin/browser/util/cw;->a()J

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/dolphin/browser/search/d/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0}, Lcom/dolphin/browser/search/d/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v2, Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/dolphin/browser/search/s;->b:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 288
    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 290
    iput-object v2, p0, Lcom/dolphin/browser/search/s;->c:Landroid/database/Cursor;

    goto :goto_0
.end method
