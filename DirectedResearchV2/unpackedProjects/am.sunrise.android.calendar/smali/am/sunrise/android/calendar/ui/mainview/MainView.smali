.class public Lam/sunrise/android/calendar/ui/mainview/MainView;
.super Landroid/view/ViewGroup;
.source "MainView.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/widgets/agenda/d;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

.field private b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

.field private c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

.field private d:Lam/sunrise/android/calendar/ui/mainview/d;

.field private e:I

.field private f:I

.field private g:Lam/sunrise/android/calendar/ui/mainview/e;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->e:I

    .line 333
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/c;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/c;-><init>(Lam/sunrise/android/calendar/ui/mainview/MainView;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->k:Landroid/widget/AbsListView$OnScrollListener;

    .line 64
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->e:I

    .line 333
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/c;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/c;-><init>(Lam/sunrise/android/calendar/ui/mainview/MainView;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->k:Landroid/widget/AbsListView$OnScrollListener;

    .line 69
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->e:I

    .line 333
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/c;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/c;-><init>(Lam/sunrise/android/calendar/ui/mainview/MainView;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->k:Landroid/widget/AbsListView$OnScrollListener;

    .line 74
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a()V

    .line 75
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/MainView;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->e:I

    return p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/MainView;Lam/sunrise/android/calendar/ui/mainview/d;)Lam/sunrise/android/calendar/ui/mainview/d;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    return-object p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const v0, 0x455ac000

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->f:I

    .line 201
    :cond_0
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/MainView;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->j:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 218
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    .line 220
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->g:Lam/sunrise/android/calendar/ui/mainview/e;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->g:Lam/sunrise/android/calendar/ui/mainview/e;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/mainview/e;->a()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 171
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->e:I

    if-ne v0, p1, :cond_1

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 174
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    iget v0, v0, Lam/sunrise/android/calendar/ui/mainview/d;->a:I

    if-eq v0, p1, :cond_0

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 184
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    .line 187
    :cond_2
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/d;

    invoke-direct {v0, p0, p1}, Lam/sunrise/android/calendar/ui/mainview/d;-><init>(Lam/sunrise/android/calendar/ui/mainview/MainView;I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    .line 191
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->d:Lam/sunrise/android/calendar/ui/mainview/d;

    if-nez p1, :cond_3

    const-wide/16 v0, 0x12c

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x96

    goto :goto_1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/mainview/MainView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->b()V

    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/mainview/MainView;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->e:I

    return v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getFirstVisiblePosition()I

    move-result v1

    .line 231
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getLastVisiblePosition()I

    move-result v2

    .line 232
    sub-int v3, v2, v1

    .line 234
    if-lez v3, :cond_1

    .line 237
    iget v4, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->h:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 238
    iget v3, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->i:I

    if-lt v3, v1, :cond_2

    iget v3, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->i:I

    if-gt v3, v2, :cond_2

    .line 239
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->i:I

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 241
    if-nez v0, :cond_0

    .line 242
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getStickyHeaderHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_0
    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getStickyHeaderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 270
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->a(II)V

    .line 272
    :cond_1
    return-void

    .line 245
    :cond_2
    iget v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->i:I

    if-ge v2, v1, :cond_3

    .line 246
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->i:I

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getFirstVisiblePosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a(II)I

    move-result v1

    neg-int v1, v1

    .line 247
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    .line 249
    goto :goto_0

    .line 250
    :cond_3
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->i:I

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getFirstVisiblePosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a(II)I

    move-result v1

    .line 251
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    .line 253
    goto :goto_0

    :cond_4
    move v1, v0

    .line 257
    :goto_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getListChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 258
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :cond_5
    div-int v0, v1, v3

    mul-int/lit16 v0, v0, 0x3e8

    .line 261
    iget v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->h:I

    if-nez v1, :cond_0

    .line 262
    mul-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/mainview/MainView;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->j:Z

    return v0
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/mainview/MainView;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->c()V

    return-void
.end method

.method static synthetic g(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/mainview/e;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->g:Lam/sunrise/android/calendar/ui/mainview/e;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getVelocity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 161
    iget v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->f:I

    if-lt v0, v1, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/MainView;->b(I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/MainView;->b(I)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->h:I

    .line 206
    iput p2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->i:I

    .line 207
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->c()V

    .line 208
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 292
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 281
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 120
    const v0, 0x7f0b0143

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    .line 121
    const v0, 0x7f0b0144

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    .line 122
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/NowButton;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setOnNextTodayEventPositionListener(Lam/sunrise/android/calendar/ui/widgets/agenda/d;)V

    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->k:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 127
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    new-instance v1, Lam/sunrise/android/calendar/ui/mainview/a;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/mainview/a;-><init>(Lam/sunrise/android/calendar/ui/mainview/MainView;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 148
    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 150
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getViewMode()Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->layout(IIII)V

    .line 92
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->layout(IIII)V

    .line 96
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 97
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 98
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v0, v2, v0

    .line 99
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->layout(IIII)V

    .line 102
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 107
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 109
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, 0x40000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, p0

    move v2, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 114
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->c:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 116
    return-void
.end method

.method public setListener(Lam/sunrise/android/calendar/ui/mainview/e;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/MainView;->g:Lam/sunrise/android/calendar/ui/mainview/e;

    .line 79
    return-void
.end method
