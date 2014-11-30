.class public Lcom/appoxee/widgets/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;,
        Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;,
        Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;,
        Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;,
        Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;,
        Lcom/appoxee/widgets/PullToRefreshListView$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$appoxee$widgets$PullToRefreshListView$State:[I = null

.field private static final BOUNCE_ANIMATION_DELAY:I = 0x64

.field private static final BOUNCE_ANIMATION_DURATION:I = 0x2bc

.field private static final BOUNCE_OVERSHOOT_TENSION:F = 1.4f

.field private static final PULL_RESISTANCE:F = 1.7f

.field private static final ROTATE_ARROW_ANIMATION_DURATION:I = 0xfa

.field private static measuredHeaderHeight:I


# instance fields
.field private final IDLE_DISTANCE:I

.field private bounceBackHeader:Z

.field private flipAnimation:Landroid/view/animation/RotateAnimation;

.field private hasResetHeader:Z

.field private header:Landroid/widget/RelativeLayout;

.field private headerContainer:Landroid/widget/LinearLayout;

.field private headerPadding:I

.field private image:Landroid/widget/ImageView;

.field private lastUpdated:J

.field private lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

.field private lastUpdatedText:Ljava/lang/String;

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private lockScrollWhileRefreshing:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mScrollStartY:F

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private onRefreshListener:Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;

.field private previousY:F

.field private pullToRefreshText:Ljava/lang/String;

.field private refreshingText:Ljava/lang/String;

.field private releaseToRefreshText:Ljava/lang/String;

.field private reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private scrollbarEnabled:Z

.field private showLastUpdatedText:Z

.field private spinner:Landroid/widget/ProgressBar;

.field private state:Lcom/appoxee/widgets/PullToRefreshListView$State;

.field private text:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$appoxee$widgets$PullToRefreshListView$State()[I
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/appoxee/widgets/PullToRefreshListView;->$SWITCH_TABLE$com$appoxee$widgets$PullToRefreshListView$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/appoxee/widgets/PullToRefreshListView$State;->values()[Lcom/appoxee/widgets/PullToRefreshListView$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/appoxee/widgets/PullToRefreshListView;->$SWITCH_TABLE$com$appoxee$widgets$PullToRefreshListView$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdated:J

    .line 106
    const/4 v0, 0x5

    iput v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->IDLE_DISTANCE:I

    .line 112
    invoke-direct {p0, p1}, Lcom/appoxee/widgets/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdated:J

    .line 106
    const/4 v0, 0x5

    iput v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->IDLE_DISTANCE:I

    .line 117
    invoke-direct {p0, p1}, Lcom/appoxee/widgets/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdated:J

    .line 106
    const/4 v0, 0x5

    iput v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->IDLE_DISTANCE:I

    .line 122
    invoke-direct {p0, p1}, Lcom/appoxee/widgets/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method static synthetic access$0(Lcom/appoxee/widgets/PullToRefreshListView;)Lcom/appoxee/widgets/PullToRefreshListView$State;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appoxee/widgets/PullToRefreshListView;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->scrollbarEnabled:Z

    return v0
.end method

.method static synthetic access$10(I)V
    .locals 0

    .prologue
    .line 76
    sput p0, Lcom/appoxee/widgets/PullToRefreshListView;->measuredHeaderHeight:I

    return-void
.end method

.method static synthetic access$11(Lcom/appoxee/widgets/PullToRefreshListView;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->hasResetHeader:Z

    return-void
.end method

.method static synthetic access$12(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/appoxee/widgets/PullToRefreshListView;->measuredHeaderHeight:I

    return v0
.end method

.method static synthetic access$3(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/appoxee/widgets/PullToRefreshListView;I)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/appoxee/widgets/PullToRefreshListView;->setHeaderPadding(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/appoxee/widgets/PullToRefreshListView;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->bounceBackHeader:Z

    return v0
.end method

.method static synthetic access$6(Lcom/appoxee/widgets/PullToRefreshListView;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->bounceBackHeader:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appoxee/widgets/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->resetHeader()V

    return-void
.end method

.method static synthetic access$8(Lcom/appoxee/widgets/PullToRefreshListView;Lcom/appoxee/widgets/PullToRefreshListView$State;)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/appoxee/widgets/PullToRefreshListView;->setState(Lcom/appoxee/widgets/PullToRefreshListView$State;)V

    return-void
.end method

.method static synthetic access$9(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private bounceBackHeader()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 367
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v4, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    move v9, v3

    .line 370
    .local v9, "yTranslate":I
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 371
    int-to-float v8, v9

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    .line 370
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 373
    .local v0, "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 374
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 375
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 376
    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 377
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fb33333

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 378
    new-instance v1, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;

    invoke-direct {v1, p0, v9}, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;-><init>(Lcom/appoxee/widgets/PullToRefreshListView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 380
    invoke-virtual {p0, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 381
    return-void

    .line 368
    .end local v0    # "bounceAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "yTranslate":I
    :cond_0
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    iget-object v4, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    move v9, v3

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 14
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000

    const/4 v13, 0x0

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 251
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 253
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    const-string v5, "ptr_header"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    .line 254
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    const-string v5, "ptr_id_header"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    .line 255
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const-string v5, "ptr_id_text"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->text:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const-string v5, "ptr_id_last_updated"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const-string v5, "ptr_id_image"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->image:Landroid/widget/ImageView;

    .line 258
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    const-string v5, "ptr_id_spinner"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    .line 259
    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "ptr_pull_to_refresh"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    const-string v5, "ptr_release_to_refresh"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 260
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    .line 262
    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "ptr_refreshing"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "ptr_last_updated"

    invoke-static {v5}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedText:Ljava/lang/String;

    .line 265
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 266
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 265
    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    .line 267
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 268
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 269
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 271
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 272
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 271
    iput-object v5, p0, Lcom/appoxee/widgets/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 273
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 274
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 275
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 277
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 278
    sget-object v0, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->setState(Lcom/appoxee/widgets/PullToRefreshListView$State;)V

    .line 279
    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->scrollbarEnabled:Z

    .line 281
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    .line 282
    .local v12, "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;

    invoke-direct {v0, p0, v13}, Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcom/appoxee/widgets/PullToRefreshListView;Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 284
    new-instance v0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;

    invoke-direct {v0, p0, v13}, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;-><init>(Lcom/appoxee/widgets/PullToRefreshListView;Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 285
    new-instance v0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;

    invoke-direct {v0, p0, v13}, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;-><init>(Lcom/appoxee/widgets/PullToRefreshListView;Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 286
    return-void
.end method

.method private resetHeader()V
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->setHeaderPadding(I)V

    .line 386
    sget-object v0, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->setState(Lcom/appoxee/widgets/PullToRefreshListView$State;)V

    .line 395
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->bounceBackHeader:Z

    goto :goto_0

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_0
.end method

.method private setHeaderPadding(I)V
    .locals 3
    .param p1, "padding"    # I

    .prologue
    const/4 v2, 0x0

    .line 289
    iput p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerPadding:I

    .line 291
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 292
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    int-to-float v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 293
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    return-void
.end method

.method private setState(Lcom/appoxee/widgets/PullToRefreshListView$State;)V
    .locals 8
    .param p1, "state"    # Lcom/appoxee/widgets/PullToRefreshListView$State;

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x0

    .line 405
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    .line 406
    invoke-static {}, Lcom/appoxee/widgets/PullToRefreshListView;->$SWITCH_TABLE$com$appoxee$widgets$PullToRefreshListView$State()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/appoxee/widgets/PullToRefreshListView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-boolean v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->showLastUpdatedText:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdated:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 415
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdated:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 414
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 427
    :pswitch_2
    invoke-direct {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->setUiRefreshing()V

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdated:J

    .line 430
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->onRefreshListener:Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;

    if-nez v0, :cond_1

    .line 431
    sget-object v0, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-direct {p0, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->setState(Lcom/appoxee/widgets/PullToRefreshListView$State;)V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->onRefreshListener:Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setUiRefreshing()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 400
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->image:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    return-void
.end method


# virtual methods
.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    .line 205
    invoke-direct {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->resetHeader()V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdated:J

    .line 207
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 442
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 444
    iget-boolean v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->hasResetHeader:Z

    if-nez v0, :cond_1

    .line 445
    sget v0, Lcom/appoxee/widgets/PullToRefreshListView;->measuredHeaderHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-eq v0, v1, :cond_0

    .line 446
    sget v0, Lcom/appoxee/widgets/PullToRefreshListView;->measuredHeaderHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->setHeaderPadding(I)V

    .line 449
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->hasResetHeader:Z

    .line 451
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, -0x40800000

    .line 298
    iget-boolean v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    if-eqz v3, :cond_1

    .line 299
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v4, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 300
    :cond_0
    const/4 v3, 0x1

    .line 363
    :goto_0
    return v3

    .line 303
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 363
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 305
    :pswitch_0
    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_3

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->previousY:F

    .line 312
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->mScrollStartY:F

    goto :goto_1

    .line 308
    :cond_3
    iput v5, p0, Lcom/appoxee/widgets/PullToRefreshListView;->previousY:F

    goto :goto_2

    .line 317
    :pswitch_1
    iget v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->previousY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v4, Lcom/appoxee/widgets/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_2

    .line 318
    :cond_4
    invoke-static {}, Lcom/appoxee/widgets/PullToRefreshListView;->$SWITCH_TABLE$com$appoxee$widgets$PullToRefreshListView$State()[I

    move-result-object v3

    iget-object v4, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-virtual {v4}, Lcom/appoxee/widgets/PullToRefreshListView$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 326
    :pswitch_2
    invoke-direct {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->resetHeader()V

    goto :goto_1

    .line 320
    :pswitch_3
    sget-object v3, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-direct {p0, v3}, Lcom/appoxee/widgets/PullToRefreshListView;->setState(Lcom/appoxee/widgets/PullToRefreshListView$State;)V

    .line 321
    invoke-direct {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->bounceBackHeader()V

    goto :goto_1

    .line 333
    :pswitch_4
    iget v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->previousY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_2

    .line 334
    iget v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->mScrollStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40a00000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 336
    .local v2, "y":F
    iget v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->previousY:F

    sub-float v0, v2, v3

    .line 337
    .local v0, "diff":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_5

    .line 338
    const v3, 0x3fd9999a

    div-float/2addr v0, v3

    .line 339
    :cond_5
    iput v2, p0, Lcom/appoxee/widgets/PullToRefreshListView;->previousY:F

    .line 341
    iget v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerPadding:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 343
    .local v1, "newHeaderPadding":I
    iget v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerPadding:I

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v4, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-eq v3, v4, :cond_2

    .line 344
    invoke-direct {p0, v1}, Lcom/appoxee/widgets/PullToRefreshListView;->setHeaderPadding(I)V

    .line 346
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v4, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerPadding:I

    if-lez v3, :cond_6

    .line 347
    sget-object v3, Lcom/appoxee/widgets/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-direct {p0, v3}, Lcom/appoxee/widgets/PullToRefreshListView;->setState(Lcom/appoxee/widgets/PullToRefreshListView$State;)V

    .line 349
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 350
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/appoxee/widgets/PullToRefreshListView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 351
    :cond_6
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v4, Lcom/appoxee/widgets/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->headerPadding:I

    if-gez v3, :cond_2

    .line 352
    sget-object v3, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    invoke-direct {p0, v3}, Lcom/appoxee/widgets/PullToRefreshListView;->setState(Lcom/appoxee/widgets/PullToRefreshListView$State;)V

    .line 354
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->image:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 355
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView;->image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/appoxee/widgets/PullToRefreshListView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 318
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setLastUpdatedDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0
    .param p1, "lastUpdatedDateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedDateFormat:Ljava/text/SimpleDateFormat;

    .line 185
    return-void
.end method

.method public setLockScrollWhileRefreshing(Z)V
    .locals 0
    .param p1, "lockScrollWhileRefreshing"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lockScrollWhileRefreshing:Z

    .line 161
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 127
    .local p1, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 128
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 132
    .local p1, "onItemLongClickListener":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 133
    return-void
.end method

.method public setOnRefreshListener(Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;)V
    .locals 0
    .param p1, "onRefreshListener"    # Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->onRefreshListener:Lcom/appoxee/widgets/PullToRefreshListView$OnRefreshListener;

    .line 144
    return-void
.end method

.method public setRefreshing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    sget-object v0, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    iput-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    .line 194
    invoke-virtual {p0, v1, v1}, Lcom/appoxee/widgets/PullToRefreshListView;->scrollTo(II)V

    .line 195
    invoke-direct {p0}, Lcom/appoxee/widgets/PullToRefreshListView;->setUiRefreshing()V

    .line 196
    invoke-direct {p0, v1}, Lcom/appoxee/widgets/PullToRefreshListView;->setHeaderPadding(I)V

    .line 197
    return-void
.end method

.method public setShowLastUpdatedText(Z)V
    .locals 2
    .param p1, "showLastUpdatedText"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->showLastUpdatedText:Z

    .line 172
    if-nez p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->lastUpdatedTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public setTextPullToRefresh(Ljava/lang/String;)V
    .locals 2
    .param p1, "pullToRefreshText"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->pullToRefreshText:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_0
    return-void
.end method

.method public setTextRefreshing(Ljava/lang/String;)V
    .locals 2
    .param p1, "refreshingText"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->refreshingText:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setTextReleaseToRefresh(Ljava/lang/String;)V
    .locals 2
    .param p1, "releaseToRefreshText"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView;->releaseToRefreshText:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    return-void
.end method
