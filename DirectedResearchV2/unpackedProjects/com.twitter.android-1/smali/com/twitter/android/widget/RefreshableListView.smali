.class public final Lcom/twitter/android/widget/RefreshableListView;
.super Landroid/widget/ListView;


# instance fields
.field final a:Landroid/widget/Scroller;

.field b:Landroid/widget/RelativeLayout;

.field private c:Lcom/twitter/android/widget/g;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:Lcom/twitter/android/widget/k;

.field private m:Lcom/twitter/android/widget/p;

.field private final n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/util/ArrayList;

.field private y:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/twitter/android/c;->refreshableListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->y:Ljava/util/ArrayList;

    sget-object v0, Lcom/twitter/android/ga;->RefreshableListView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v0, 0x5

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->a:Landroid/widget/Scroller;

    new-instance v0, Lcom/twitter/android/widget/g;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/twitter/android/widget/g;-><init>(Lcom/twitter/android/widget/RefreshableListView;Lcom/twitter/android/widget/h;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->c:Lcom/twitter/android/widget/g;

    const/4 v0, 0x7

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->d:Landroid/view/animation/Animation;

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->e:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    sget v3, Lcom/twitter/android/bg;->refresh_divider:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v1, Lcom/twitter/android/bg;->refresh_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->f:Landroid/widget/ProgressBar;

    sget v1, Lcom/twitter/android/bg;->refresh_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    sget v1, Lcom/twitter/android/bg;->refresh_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v1, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->k:I

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->t:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->u:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->v:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 6

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget v4, v1, Landroid/widget/AbsListView$LayoutParams;->width:I

    iget v1, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v5, -0x2

    invoke-direct {v3, v4, v1, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->c:Lcom/twitter/android/widget/g;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/g;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto :goto_0
.end method

.method final a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/widget/p;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRefreshListener must be called before addHeaderView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public final addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    const/16 v9, 0x20

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->f:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/widget/RefreshableListView;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v3

    invoke-interface {v1}, Lcom/twitter/android/widget/p;->g()Lcom/twitter/android/widget/r;

    move-result-object v4

    iget v5, v4, Lcom/twitter/android/widget/r;->c:I

    iget v6, v4, Lcom/twitter/android/widget/r;->a:I

    invoke-interface {v1}, Lcom/twitter/android/widget/p;->c()V

    iget-wide v7, v4, Lcom/twitter/android/widget/r;->b:J

    invoke-interface {v1, v7, v8}, Lcom/twitter/android/widget/p;->b(J)I

    move-result v1

    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    if-ne v1, v6, :cond_4

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->e(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    :cond_3
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    :cond_5
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method final b(I)V
    .locals 1

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->w:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->w:I

    return-void
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->detachViewFromParent(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/k;

    invoke-virtual {v0}, Lcom/twitter/android/widget/k;->a()V

    :cond_1
    return-void
.end method

.method final c(I)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->w:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->w:I

    return-void
.end method

.method protected final computeVerticalScrollOffset()I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v4, v4, 0x64

    div-int v2, v4, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v0

    goto :goto_0
.end method

.method protected final computeVerticalScrollRange()I
    .locals 4

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    mul-int/lit8 v0, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v2, :cond_0

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottomPaddingOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->a(I)V

    :cond_0
    return-void
.end method

.method final d(I)Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->w:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final detachViewsFromParent(II)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->detachViewsFromParent(II)V

    goto :goto_0
.end method

.method public final e()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->s:I

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-gt v3, v0, :cond_1

    if-ne v3, v0, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_3

    :cond_1
    const/16 v1, 0xf

    if-le v3, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->setSelection(I)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->smoothScrollToPosition(I)V

    move v0, v2

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->setSelection(I)V

    move v0, v2

    goto :goto_0
.end method

.method public final getFooterViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getHeaderViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_0
.end method

.method protected final layoutChildren()V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->x:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/twitter/android/widget/RefreshableListView;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->y:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/twitter/android/widget/RefreshableListView;->a(Ljava/util/ArrayList;)V

    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v3, v2

    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->o:I

    sub-int v4, v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iput v3, p0, Lcom/twitter/android/widget/RefreshableListView;->o:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v3, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_3
    iput v3, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    if-le v4, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iput p1, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/16 v10, 0x40

    const/4 v9, 0x2

    const/16 v8, 0x10

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v6, v1

    iget v1, p0, Lcom/twitter/android/widget/RefreshableListView;->o:I

    sub-int v1, v6, v1

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    :pswitch_0
    iput v6, p0, Lcom/twitter/android/widget/RefreshableListView;->o:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    invoke-interface {v0, v5}, Lcom/twitter/android/widget/p;->a_(Z)V

    invoke-direct {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->e(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    invoke-interface {v0, v3}, Lcom/twitter/android/widget/p;->a_(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->e(I)V

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v6, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    sub-int v0, v6, v0

    :goto_2
    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_4
    iget v4, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    if-lt v6, v4, :cond_9

    move v4, v5

    :goto_5
    iput v6, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v6

    if-lt v2, v6, :cond_12

    iget v6, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    if-le v1, v6, :cond_12

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    :cond_4
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawnWithCacheEnabled(Z)V

    if-eqz v7, :cond_b

    int-to-float v0, v0

    const/high16 v1, 0x3f000000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->a(I)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->invalidate()V

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_a

    if-eqz v4, :cond_5

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    invoke-interface {v0}, Lcom/twitter/android/widget/p;->b_()V

    :cond_5
    :goto_6
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    move v4, v3

    goto :goto_5

    :cond_a
    if-nez v4, :cond_5

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    invoke-interface {v0}, Lcom/twitter/android/widget/p;->b()V

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v4, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v4, v3, v0}, Lcom/twitter/android/widget/RefreshableListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    if-eqz v1, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    move v1, v5

    :goto_8
    if-eqz v1, :cond_10

    iget v6, p0, Lcom/twitter/android/widget/RefreshableListView;->r:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_f

    const/high16 v3, 0x40000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_9
    invoke-virtual {v4, v6, v0}, Landroid/view/View;->measure(II)V

    :goto_a
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v6

    if-eqz v1, :cond_11

    add-int/2addr v0, v6

    add-int v1, v2, v3

    invoke-virtual {v4, v6, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :goto_b
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/k;

    invoke-virtual {v0}, Lcom/twitter/android/widget/k;->a()V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {p0, v4, v3, v0, v5}, Lcom/twitter/android/widget/RefreshableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto :goto_7

    :cond_e
    move v1, v3

    goto :goto_8

    :cond_f
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_9

    :cond_10
    invoke-virtual {p0, v4}, Lcom/twitter/android/widget/RefreshableListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_a

    :cond_11
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_b

    :cond_12
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/k;

    invoke-virtual {v0}, Lcom/twitter/android/widget/k;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/twitter/android/widget/k;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->x:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->y:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/twitter/android/widget/k;-><init>(Lcom/twitter/android/widget/RefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/k;

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:Lcom/twitter/android/widget/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/widget/RefreshableListView;->k:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/twitter/android/widget/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    sget v1, Lcom/twitter/android/bg;->footer_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/view/View;

    sget v1, Lcom/twitter/android/bg;->footer_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/widget/TextView;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/k;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_2
    iput-object v3, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/k;

    goto :goto_0
.end method
