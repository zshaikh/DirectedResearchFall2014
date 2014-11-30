.class public Lmobi/mgeek/TunnyBrowser/cw;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DateSortedExpandableListAdapter.java"


# instance fields
.field protected a:I

.field private b:[I

.field private c:I

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/database/Cursor;

.field private f:Lmobi/mgeek/TunnyBrowser/cy;

.field private g:I

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 47
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cx;

    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmobi/mgeek/TunnyBrowser/cx;-><init>(Lmobi/mgeek/TunnyBrowser/cw;Landroid/os/Handler;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->j:Landroid/database/ContentObserver;

    .line 63
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cw;->i:Landroid/content/Context;

    .line 64
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cy;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/cy;-><init>(Lmobi/mgeek/TunnyBrowser/cw;Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->f:Lmobi/mgeek/TunnyBrowser/cy;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->d:Ljava/util/Vector;

    .line 66
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    .line 67
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->h:I

    .line 68
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->j:Landroid/database/ContentObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    iput p3, p0, Lmobi/mgeek/TunnyBrowser/cw;->g:I

    .line 70
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->a:I

    .line 71
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/cw;->d()V

    .line 72
    return-void
.end method

.method private c(I)I
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v0, -0x1

    .line 216
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "group position out of range"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 219
    :cond_1
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->c:I

    if-eq v2, v1, :cond_2

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->c:I

    if-nez v1, :cond_3

    .line 235
    :cond_2
    return p1

    :cond_3
    move v1, p1

    move p1, v0

    .line 229
    :cond_4
    :goto_0
    if-le v1, v0, :cond_2

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/cw;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_2

    .line 230
    add-int/lit8 p1, p1, 0x1

    .line 231
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/cw;->b:[I

    aget v2, v2, p1

    if-eqz v2, :cond_4

    .line 232
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x0

    .line 80
    new-array v2, v3, [I

    move v0, v1

    .line 82
    :goto_0
    if-ge v0, v3, :cond_0

    .line 83
    aput v1, v2, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iput v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->c:I

    .line 86
    const/4 v0, -0x1

    .line 87
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 88
    :goto_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->g:I

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/cw;->b(I)J

    move-result-wide v3

    .line 90
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->a:I

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/cw;->a(I)I

    move-result v1

    .line 91
    iget-object v5, p0, Lmobi/mgeek/TunnyBrowser/cw;->f:Lmobi/mgeek/TunnyBrowser/cy;

    invoke-virtual {v5, v1, v3, v4}, Lmobi/mgeek/TunnyBrowser/cy;->a(IJ)I

    move-result v1

    .line 92
    if-le v1, v0, :cond_3

    .line 93
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->c:I

    .line 94
    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    .line 97
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, v2, v1

    .line 108
    :cond_1
    iput-object v2, p0, Lmobi/mgeek/TunnyBrowser/cw;->b:[I

    .line 109
    return-void

    :cond_2
    move v0, v1

    .line 104
    :cond_3
    aget v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    .line 105
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method


# virtual methods
.method protected a(I)I
    .locals 2

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 189
    const/4 v0, -0x1

    .line 190
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->h:I

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/cw;->b(I)J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-nez v1, :cond_3

    .line 193
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->f:Lmobi/mgeek/TunnyBrowser/cy;

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->g:I

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/cw;->b(I)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lmobi/mgeek/TunnyBrowser/cy;->a(Lmobi/mgeek/TunnyBrowser/cy;J)I

    move-result v1

    .line 196
    const/4 v0, 0x6

    iget v3, p0, Lmobi/mgeek/TunnyBrowser/cw;->c:I

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 205
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 199
    :goto_1
    if-ge v2, v1, :cond_0

    .line 200
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/cw;->b:[I

    aget v3, v3, v2

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 199
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_3
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method protected a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->i:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/cw;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 416
    :cond_0
    return-void
.end method

.method public a(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 275
    :goto_0
    return v0

    .line 265
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    instance-of v0, v0, Landroid/database/AbstractWindowedCursor;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 267
    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/cw;->c(I)I

    move-result v0

    .line 272
    :goto_1
    if-ge v1, v0, :cond_2

    .line 273
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/cw;->b:[I

    aget v2, v2, v1

    add-int/2addr p2, v2

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method protected b(I)J
    .locals 2

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 163
    :goto_0
    return-wide v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected b()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    return-object v0
.end method

.method public b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 430
    const/4 v0, 0x0

    .line 446
    :goto_0
    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    .line 433
    if-eqz v0, :cond_1

    .line 434
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->j:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 436
    :cond_1
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    .line 437
    if-eqz p1, :cond_2

    .line 438
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->j:Landroid/database/ContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 440
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cw;->c()V

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cw;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public b(J)Z
    .locals 2

    .prologue
    .line 244
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    .line 248
    :cond_0
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 250
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    .line 252
    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/cw;->a(II)Z

    move-result v0

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 286
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/cw;->d()V

    .line 289
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 290
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/cw;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->h:I

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/cw;->b(I)J

    move-result-wide v0

    .line 363
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChildType(II)I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->b:[I

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/cw;->c(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 0

    .prologue
    .line 391
    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .locals 0

    .prologue
    .line 396
    return-wide p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->c:I

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 355
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 298
    if-eqz p3, :cond_0

    instance-of v0, p3, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 299
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 303
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 304
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 305
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080249

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cw;->f:Lmobi/mgeek/TunnyBrowser/cy;

    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/cw;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/cy;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/cw;->getChildrenCount(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->d:Ljava/util/Vector;

    .line 522
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 523
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 525
    :cond_0
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->d:Ljava/util/Vector;

    .line 515
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 516
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_0

    .line 518
    :cond_0
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cw;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method
