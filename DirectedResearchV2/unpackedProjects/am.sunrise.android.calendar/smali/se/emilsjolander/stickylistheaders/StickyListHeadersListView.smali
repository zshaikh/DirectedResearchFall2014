.class public Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
.super Landroid/widget/FrameLayout;
.source "StickyListHeadersListView.java"


# instance fields
.field private a:Lse/emilsjolander/stickylistheaders/t;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Landroid/widget/AbsListView$OnScrollListener;

.field private g:Lse/emilsjolander/stickylistheaders/a;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lse/emilsjolander/stickylistheaders/n;

.field private p:Lse/emilsjolander/stickylistheaders/p;

.field private q:Lse/emilsjolander/stickylistheaders/o;

.field private r:Lse/emilsjolander/stickylistheaders/l;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xb

    const/16 v7, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    .line 92
    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    .line 93
    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->j:Z

    .line 94
    iput v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    .line 95
    iput v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    .line 96
    iput v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    .line 97
    iput v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    .line 120
    new-instance v2, Lse/emilsjolander/stickylistheaders/t;

    invoke-direct {v2, p1}, Lse/emilsjolander/stickylistheaders/t;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    .line 123
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->getDividerHeight()I

    move-result v2

    iput v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:I

    .line 125
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2, v9}, Lse/emilsjolander/stickylistheaders/t;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2, v1}, Lse/emilsjolander/stickylistheaders/t;->setDividerHeight(I)V

    .line 128
    if-eqz p2, :cond_5

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lse/emilsjolander/stickylistheaders/g;->StickyListHeadersListView:[I

    invoke-virtual {v2, p2, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 133
    const/4 v2, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 134
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    .line 135
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    .line 136
    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    .line 137
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    .line 139
    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    iget v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    iget v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    iget v6, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    invoke-virtual {p0, v2, v4, v5, v6}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setPadding(IIII)V

    .line 144
    const/16 v2, 0x8

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    .line 145
    const/4 v2, 0x1

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 146
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    iget-boolean v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    invoke-virtual {v2, v4}, Lse/emilsjolander/stickylistheaders/t;->setClipToPadding(Z)V

    .line 149
    const/4 v2, 0x6

    const/16 v4, 0x200

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 150
    iget-object v5, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_6

    move v2, v0

    :goto_0
    invoke-virtual {v5, v2}, Lse/emilsjolander/stickylistheaders/t;->setVerticalScrollBarEnabled(Z)V

    .line 151
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v2, v0}, Lse/emilsjolander/stickylistheaders/t;->setHorizontalScrollBarEnabled(Z)V

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    .line 155
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setOverScrollMode(I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x7

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->getVerticalFadingEdgeLength()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setFadingEdgeLength(I)V

    .line 161
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 162
    const/16 v1, 0x1000

    if-ne v0, v1, :cond_8

    .line 163
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setVerticalFadingEdgeEnabled(Z)V

    .line 164
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setHorizontalFadingEdgeEnabled(Z)V

    .line 172
    :goto_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/16 v1, 0xd

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->getCacheColorHint()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setCacheColorHint(I)V

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_1

    .line 175
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/16 v1, 0x10

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->getChoiceMode()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setChoiceMode(I)V

    .line 178
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setDrawSelectorOnTop(Z)V

    .line 179
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/16 v1, 0x11

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->isFastScrollEnabled()Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setFastScrollEnabled(Z)V

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_2

    .line 182
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/16 v1, 0x13

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->isFastScrollAlwaysVisible()Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setFastScrollAlwaysVisible(Z)V

    .line 187
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setScrollBarStyle(I)V

    .line 189
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/16 v1, 0x9

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_3
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/16 v1, 0xb

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->isScrollingCacheEnabled()Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setScrollingCacheEnabled(Z)V

    .line 196
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Landroid/graphics/drawable/Drawable;

    .line 200
    :cond_4
    const/16 v0, 0xf

    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:I

    .line 203
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setTranscriptMode(I)V

    .line 207
    const/16 v0, 0x15

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    .line 208
    const/16 v0, 0x16

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    :cond_5
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    new-instance v1, Lse/emilsjolander/stickylistheaders/r;

    invoke-direct {v1, p0, v9}, Lse/emilsjolander/stickylistheaders/r;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/j;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->a(Lse/emilsjolander/stickylistheaders/u;)V

    .line 218
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    new-instance v1, Lse/emilsjolander/stickylistheaders/q;

    invoke-direct {v1, p0, v9}, Lse/emilsjolander/stickylistheaders/q;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/j;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 220
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 221
    return-void

    :cond_6
    move v2, v1

    .line 150
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 151
    goto/16 :goto_1

    .line 165
    :cond_8
    const/16 v1, 0x2000

    if-ne v0, v1, :cond_9

    .line 166
    :try_start_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setVerticalFadingEdgeEnabled(Z)V

    .line 167
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setHorizontalFadingEdgeEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 212
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 169
    :cond_9
    :try_start_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setVerticalFadingEdgeEnabled(Z)V

    .line 170
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setHorizontalFadingEdgeEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/n;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->o:Lse/emilsjolander/stickylistheaders/n;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 283
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    .line 284
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    .line 285
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    .line 286
    iput-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    .line 289
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->a(I)V

    .line 290
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b()V

    .line 292
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 295
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-nez v2, :cond_1

    move v4, v0

    .line 296
    :goto_0
    if-eqz v4, :cond_0

    iget-boolean v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    if-nez v2, :cond_2

    .line 319
    :cond_0
    :goto_1
    return-void

    .line 295
    :cond_1
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/a;->getCount()I

    move-result v2

    move v4, v2

    goto :goto_0

    .line 300
    :cond_2
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->getHeaderViewsCount()I

    move-result v2

    .line 301
    sub-int v5, p1, v2

    .line 306
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_6

    move v3, v1

    .line 307
    :goto_2
    if-eqz v3, :cond_8

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2, v0}, Lse/emilsjolander/stickylistheaders/t;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-boolean v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    :goto_3
    if-le v6, v2, :cond_8

    move v2, v1

    .line 310
    :goto_4
    add-int/lit8 v4, v4, -0x1

    if-gt v5, v4, :cond_3

    if-gez v5, :cond_4

    :cond_3
    move v0, v1

    .line 312
    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    if-eqz v2, :cond_9

    .line 314
    :cond_5
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    goto :goto_1

    :cond_6
    move v3, v0

    .line 306
    goto :goto_2

    :cond_7
    move v2, v0

    .line 307
    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_4

    .line 318
    :cond_9
    invoke-direct {p0, v5}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c(I)V

    goto :goto_1
.end method

.method static synthetic a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(I)V

    return-void
.end method

.method static synthetic a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    move v2, v0

    .line 409
    :goto_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getChildCount()I

    move-result v4

    move v3, v1

    .line 410
    :goto_2
    if-ge v3, v4, :cond_6

    .line 413
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, v3}, Lse/emilsjolander/stickylistheaders/t;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    instance-of v5, v0, Lse/emilsjolander/stickylistheaders/s;

    if-nez v5, :cond_4

    .line 410
    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 404
    goto :goto_0

    .line 407
    :cond_2
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    :goto_4
    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    .line 419
    :cond_4
    check-cast v0, Lse/emilsjolander/stickylistheaders/s;

    .line 420
    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/s;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 425
    iget-object v5, v0, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    .line 426
    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/s;->getTop()I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 427
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 428
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 431
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 436
    :cond_6
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 231
    if-nez v0, :cond_1

    .line 232
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 236
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    return-void

    .line 233
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_0

    .line 234
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method static synthetic b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method private c(I)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 324
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 325
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    .line 326
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/a;->a(I)J

    move-result-wide v0

    .line 327
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    .line 328
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    .line 329
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lse/emilsjolander/stickylistheaders/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eq v1, v0, :cond_3

    .line 332
    if-nez v0, :cond_2

    .line 333
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_2
    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d(Landroid/view/View;)V

    .line 337
    :cond_3
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Landroid/view/View;)V

    .line 338
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->q:Lse/emilsjolander/stickylistheaders/o;

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->q:Lse/emilsjolander/stickylistheaders/o;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lse/emilsjolander/stickylistheaders/o;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJ)V

    .line 346
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    .line 355
    :cond_5
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    :goto_0
    add-int v4, v1, v0

    move v2, v6

    .line 357
    :goto_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 358
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/t;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 359
    instance-of v0, v1, Lse/emilsjolander/stickylistheaders/s;

    if-eqz v0, :cond_a

    move-object v0, v1

    check-cast v0, Lse/emilsjolander/stickylistheaders/s;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/s;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 361
    :goto_2
    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v3, v1}, Lse/emilsjolander/stickylistheaders/t;->a(Landroid/view/View;)Z

    move-result v5

    .line 362
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    iget-boolean v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    if-eqz v3, :cond_b

    iget v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    :goto_3
    if-lt v7, v3, :cond_c

    if-nez v0, :cond_6

    if-eqz v5, :cond_c

    .line 364
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 369
    :cond_7
    invoke-direct {p0, v6}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setHeaderOffet(I)V

    .line 371
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->j:Z

    if-nez v0, :cond_8

    .line 372
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->a(I)V

    .line 376
    :cond_8
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b()V

    .line 377
    return-void

    :cond_9
    move v0, v6

    .line 355
    goto :goto_0

    :cond_a
    move v0, v6

    .line 359
    goto :goto_2

    :cond_b
    move v3, v6

    .line 362
    goto :goto_3

    .line 357
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    sub-int/2addr v0, v1

    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    sub-int/2addr v0, v1

    .line 242
    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 244
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 246
    invoke-virtual {p0, p1, v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->measureChild(Landroid/view/View;II)V

    .line 249
    :cond_0
    return-void
.end method

.method static synthetic d(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c:Ljava/lang/Long;

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->removeView(Landroid/view/View;)V

    .line 383
    :cond_0
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    .line 384
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->addView(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    new-instance v1, Lse/emilsjolander/stickylistheaders/j;

    invoke-direct {v1, p0}, Lse/emilsjolander/stickylistheaders/j;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    return-void
.end method

.method private d(I)Z
    .locals 4

    .prologue
    .line 531
    if-eqz p1, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/a;->a(I)J

    move-result-wide v0

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lse/emilsjolander/stickylistheaders/a;->a(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 535
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d(I)Z

    move-result v1

    .line 536
    if-nez v1, :cond_1

    .line 537
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1, v1, v2}, Lse/emilsjolander/stickylistheaders/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 538
    if-nez v0, :cond_0

    .line 539
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_0
    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Landroid/view/View;)V

    .line 542
    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c(Landroid/view/View;)V

    .line 543
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 545
    :cond_1
    return v0
.end method

.method static synthetic e(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    return-void
.end method

.method static synthetic f(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private f(I)Z
    .locals 3

    .prologue
    .line 622
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p1, :cond_0

    .line 623
    const-string v0, "StickyListHeaders"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api lvl must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to call this method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v0, 0x0

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Lse/emilsjolander/stickylistheaders/t;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    return-object v0
.end method

.method static synthetic h(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    return v0
.end method

.method static synthetic i(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    return v0
.end method

.method private setHeaderOffet(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 443
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 445
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 452
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->p:Lse/emilsjolander/stickylistheaders/p;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->p:Lse/emilsjolander/stickylistheaders/p;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    neg-int v2, v2

    invoke-interface {v0, p0, v1, v2}, Lse/emilsjolander/stickylistheaders/p;->a(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View;I)V

    .line 457
    :cond_1
    return-void

    .line 447
    :cond_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 449
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 450
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->addFooterView(Landroid/view/View;)V

    .line 731
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 790
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1, p2}, Lse/emilsjolander/stickylistheaders/t;->smoothScrollBy(II)V

    .line 793
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 851
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, p2

    .line 852
    iget-boolean v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    if-eqz v2, :cond_1

    :goto_1
    sub-int/2addr v0, v1

    .line 853
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v1, p1, v0}, Lse/emilsjolander/stickylistheaders/t;->setSelectionFromTop(II)V

    .line 854
    return-void

    .line 851
    :cond_0
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->e(I)I

    move-result v0

    goto :goto_0

    .line 852
    :cond_1
    iget v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 276
    :cond_1
    return-void
.end method

.method public getAdapter()Lse/emilsjolander/stickylistheaders/i;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v0, v0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    goto :goto_0
.end method

.method public getAreHeadersSticky()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c()Z

    move-result v0

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 884
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getCheckedItemCount()I

    move-result v0

    .line 887
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 892
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getCheckedItemIds()[J

    move-result-object v0

    .line 895
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 905
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getCount()I

    move-result v0

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getEmptyView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getFooterViewsCount()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getListChildCount()I
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getOverScrollMode()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 772
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getOverScrollMode()I

    move-result v0

    .line 775
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    return v0
.end method

.method public getScrollBarStyle()I
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method public getWrappedList()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    return-object v0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->isHorizontalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->isVerticalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v2}, Lse/emilsjolander/stickylistheaders/t;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lse/emilsjolander/stickylistheaders/t;->layout(IIII)V

    .line 255
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 258
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-boolean v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    :goto_0
    add-int/2addr v0, v2

    .line 262
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    iget-object v3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 265
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 258
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 226
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c(Landroid/view/View;)V

    .line 227
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1036
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1037
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1038
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1027
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1028
    sget-object v1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq v0, v1, :cond_0

    .line 1029
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Handling non empty state of parent class is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Lse/emilsjolander/stickylistheaders/i;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    if-nez p1, :cond_0

    .line 633
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/t;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 634
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    .line 659
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->r:Lse/emilsjolander/stickylistheaders/l;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 641
    :cond_1
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_2

    .line 642
    new-instance v0, Lse/emilsjolander/stickylistheaders/h;

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lse/emilsjolander/stickylistheaders/h;-><init>(Landroid/content/Context;Lse/emilsjolander/stickylistheaders/i;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    .line 646
    :goto_1
    new-instance v0, Lse/emilsjolander/stickylistheaders/l;

    invoke-direct {v0, p0, v2}, Lse/emilsjolander/stickylistheaders/l;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/j;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->r:Lse/emilsjolander/stickylistheaders/l;

    .line 647
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->r:Lse/emilsjolander/stickylistheaders/l;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 649
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->o:Lse/emilsjolander/stickylistheaders/n;

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    new-instance v1, Lse/emilsjolander/stickylistheaders/m;

    invoke-direct {v1, p0, v2}, Lse/emilsjolander/stickylistheaders/m;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/j;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/a;->a(Lse/emilsjolander/stickylistheaders/d;)V

    .line 655
    :goto_2
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:I

    invoke-virtual {v0, v1, v2}, Lse/emilsjolander/stickylistheaders/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 657
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 658
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    goto :goto_0

    .line 644
    :cond_2
    new-instance v0, Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lse/emilsjolander/stickylistheaders/a;-><init>(Landroid/content/Context;Lse/emilsjolander/stickylistheaders/i;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    goto :goto_1

    .line 652
    :cond_3
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/a;->a(Lse/emilsjolander/stickylistheaders/d;)V

    goto :goto_2
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .prologue
    .line 551
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->h:Z

    .line 552
    if-nez p1, :cond_0

    .line 553
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a()V

    .line 558
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->invalidate()V

    .line 559
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a(I)V

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setChoiceMode(I)V

    .line 875
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setClipToPadding(Z)V

    .line 939
    :cond_0
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->i:Z

    .line 940
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 666
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Landroid/graphics/drawable/Drawable;

    .line 667
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:I

    invoke-virtual {v0, v1, v2}, Lse/emilsjolander/stickylistheaders/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 670
    :cond_0
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 3

    .prologue
    .line 673
    iput p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:I

    .line 674
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->s:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->t:I

    invoke-virtual {v0, v1, v2}, Lse/emilsjolander/stickylistheaders/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 677
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 2

    .prologue
    .line 575
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->j:Z

    .line 577
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->a(I)V

    .line 578
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setEmptyView(Landroid/view/View;)V

    .line 743
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 989
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setFastScrollAlwaysVisible(Z)V

    .line 992
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setFastScrollEnabled(Z)V

    .line 985
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setHorizontalScrollBarEnabled(Z)V

    .line 767
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1020
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1023
    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 923
    return-void
.end method

.method public setOnHeaderClickListener(Lse/emilsjolander/stickylistheaders/n;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->o:Lse/emilsjolander/stickylistheaders/n;

    .line 586
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->o:Lse/emilsjolander/stickylistheaders/n;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    new-instance v1, Lse/emilsjolander/stickylistheaders/m;

    invoke-direct {v1, p0, v2}, Lse/emilsjolander/stickylistheaders/m;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Lse/emilsjolander/stickylistheaders/j;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/a;->a(Lse/emilsjolander/stickylistheaders/d;)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->g:Lse/emilsjolander/stickylistheaders/a;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/a;->a(Lse/emilsjolander/stickylistheaders/d;)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 707
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 711
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    .line 689
    return-void
.end method

.method public setOnStickyHeaderChangedListener(Lse/emilsjolander/stickylistheaders/o;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->q:Lse/emilsjolander/stickylistheaders/o;

    .line 601
    return-void
.end method

.method public setOnStickyHeaderOffsetChangedListener(Lse/emilsjolander/stickylistheaders/p;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->p:Lse/emilsjolander/stickylistheaders/p;

    .line 597
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .prologue
    .line 693
    if-eqz p1, :cond_0

    .line 694
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    new-instance v1, Lse/emilsjolander/stickylistheaders/k;

    invoke-direct {v1, p0, p1}, Lse/emilsjolander/stickylistheaders/k;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/t;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 781
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setOverScrollMode(I)V

    .line 786
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 944
    iput p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->k:I

    .line 945
    iput p2, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->l:I

    .line 946
    iput p3, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->m:I

    .line 947
    iput p4, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->n:I

    .line 949
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1, p2, p3, p4}, Lse/emilsjolander/stickylistheaders/t;->setPadding(IIII)V

    .line 952
    :cond_0
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 953
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 954
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setScrollBarStyle(I)V

    .line 1008
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c(II)V

    .line 844
    return-void
.end method

.method public setSelector(I)V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setSelector(I)V

    .line 862
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 858
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setTranscriptMode(I)V

    .line 1048
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0, p1}, Lse/emilsjolander/stickylistheaders/t;->setVerticalScrollBarEnabled(Z)V

    .line 762
    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->a:Lse/emilsjolander/stickylistheaders/t;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/t;->showContextMenu()Z

    move-result v0

    return v0
.end method
