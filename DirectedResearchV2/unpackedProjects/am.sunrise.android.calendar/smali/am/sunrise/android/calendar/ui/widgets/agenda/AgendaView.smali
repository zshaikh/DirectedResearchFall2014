.class public Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;
.super Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
.source "AgendaView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/widgets/agenda/b;

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

.field private i:Landroid/widget/AbsListView$OnScrollListener;

.field private j:Z

.field private k:Landroid/content/BroadcastReceiver;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;)V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b:J

    .line 67
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/e;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;Lam/sunrise/android/calendar/ui/widgets/agenda/a;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->k:Landroid/content/BroadcastReceiver;

    .line 73
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->d()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b:J

    .line 67
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/e;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;Lam/sunrise/android/calendar/ui/widgets/agenda/a;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->k:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->d()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b:J

    .line 67
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/e;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;Lam/sunrise/android/calendar/ui/widgets/agenda/a;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->k:Landroid/content/BroadcastReceiver;

    .line 83
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->d()V

    .line 84
    return-void
.end method

.method private a(III)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 224
    if-nez p3, :cond_0

    .line 259
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 230
    iget-wide v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b:J

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    .line 231
    iget-wide v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b:J

    sub-long v5, v3, v5

    .line 233
    const-wide/16 v7, 0xa

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 236
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->d:I

    if-lt v0, p1, :cond_2

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->d:I

    if-gt v0, p2, :cond_2

    .line 237
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->d:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->e:I

    sub-int/2addr v0, v2

    .line 250
    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    div-long v5, v7, v5

    long-to-int v0, v5

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->c:I

    .line 254
    :cond_1
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->d:I

    .line 255
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->e:I

    .line 256
    iput p2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->f:I

    .line 257
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->g:I

    .line 258
    iput-wide v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b:J

    goto :goto_0

    .line 238
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->f:I

    if-lt v0, p1, :cond_3

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->f:I

    if-gt v0, p2, :cond_3

    .line 239
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->f:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->g:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    move v2, v1

    .line 243
    :goto_2
    if-ge v0, p3, :cond_4

    .line 244
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 247
    :cond_4
    div-int v0, v2, p3

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->d:I

    sub-int/2addr v2, p1

    mul-int/2addr v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-super {p0, p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 263
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setDescendantFocusability(I)V

    .line 264
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    .line 266
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setChoiceMode(I)V

    .line 269
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 270
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 271
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 273
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/b;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/b;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/b;

    .line 274
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/b;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/b;->setHeight(I)V

    .line 275
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/b;->setBackgroundColor(I)V

    .line 276
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/b;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a(Landroid/view/View;)V

    .line 278
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    .line 279
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 281
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->l:I

    .line 283
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->d()V

    goto :goto_0
.end method


# virtual methods
.method public a(II)I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(II)I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->d(I)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b()V

    .line 156
    return-void
.end method

.method public getFirstVisibleDay()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getFirstVisiblePosition()I

    move-result v0

    .line 147
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/a;

    .line 148
    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public getNonObscuredFirstPosition()I
    .locals 5

    .prologue
    .line 91
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 93
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 94
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v4

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->l:I

    if-le v3, v4, :cond_0

    .line 97
    add-int/2addr v0, v1

    .line 102
    :goto_1
    return v0

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getStickyHeaderHeight()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->l:I

    return v0
.end method

.method public getVelocity()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->c:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 168
    invoke-super {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->onAttachedToWindow()V

    .line 169
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->k:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->k:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->k:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->onDetachedFromWindow()V

    .line 179
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->j:Z

    if-nez v0, :cond_0

    .line 133
    invoke-super/range {p0 .. p5}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->onLayout(ZIIII)V

    .line 135
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->c()V

    .line 212
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p2, v0, p3}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a(III)V

    .line 214
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->i:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->i:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 217
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 197
    if-nez p2, :cond_0

    .line 198
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b:J

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->c:I

    .line 202
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->i:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->i:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 205
    :cond_1
    return-void
.end method

.method public setBlockLayout(Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->j:Z

    .line 123
    return-void
.end method

.method public setCursor(Lam/sunrise/android/calendar/ui/mainview/a/j;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/mainview/a/j;)V

    .line 139
    return-void
.end method

.method public setFooterHeight(I)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/b;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/b;->setHeight(I)V

    .line 221
    return-void
.end method

.method public setOnEventClickListener(Lam/sunrise/android/calendar/ui/widgets/agenda/c;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/c;)V

    .line 160
    return-void
.end method

.method public setOnNextTodayEventPositionListener(Lam/sunrise/android/calendar/ui/widgets/agenda/d;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/d;)V

    .line 164
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->i:Landroid/widget/AbsListView$OnScrollListener;

    .line 187
    return-void
.end method

.method public setWeatherForecast([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->h:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V

    .line 119
    return-void
.end method
