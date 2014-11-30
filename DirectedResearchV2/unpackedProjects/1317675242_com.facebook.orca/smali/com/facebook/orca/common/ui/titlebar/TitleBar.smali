.class public Lcom/facebook/orca/common/ui/titlebar/TitleBar;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "TitleBar.java"


# instance fields
.field private a:Lcom/facebook/orca/config/OrcaConfig;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private d:Lcom/facebook/orca/app/OrcaAppType;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

.field private l:Landroid/widget/LinearLayout;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Z

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 281
    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;-><init>(Landroid/content/Context;)V

    .line 282
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 284
    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    new-instance v2, Lcom/facebook/orca/common/ui/titlebar/TitleBar$3;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$3;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;I)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    if-nez v0, :cond_0

    .line 293
    const v2, 0x7f08001f

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setId(I)V

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    move v1, v4

    .line 298
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 299
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 300
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    .line 301
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    :goto_2
    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setVisibility(I)V

    .line 303
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setSelected(Z)V

    .line 304
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    if-eqz v1, :cond_3

    move v1, v5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setShowProgress(Z)V

    .line 298
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v5

    goto :goto_1

    :cond_2
    move v3, v4

    .line 302
    goto :goto_2

    :cond_3
    move v1, v4

    .line 304
    goto :goto_3

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    :goto_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 310
    invoke-virtual {v0, v7}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setVisibility(I)V

    .line 311
    invoke-virtual {v0, v4}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setShowProgress(Z)V

    .line 308
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 314
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Z

    if-eqz v0, :cond_7

    .line 315
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 316
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    :goto_5
    return-void

    .line 318
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5

    .line 321
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/16 v4, 0x88

    const/4 v3, 0x1

    .line 89
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 90
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaConfig;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a:Lcom/facebook/orca/config/OrcaConfig;

    .line 91
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b:Landroid/view/LayoutInflater;

    .line 92
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 93
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d:Lcom/facebook/orca/app/OrcaAppType;

    .line 95
    sget-object v0, Lcom/facebook/orca/R$styleable;->k:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Z

    .line 98
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    .line 99
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->q:Z

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030049

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 103
    const v0, 0x7f080116

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->e:Landroid/view/View;

    .line 104
    const v0, 0x7f08011a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Landroid/view/View;

    .line 105
    const v0, 0x7f08011b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/widget/ProgressBar;

    .line 106
    const v0, 0x7f080118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/view/ViewGroup;

    .line 107
    const v0, 0x7f080119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v0, 0x7f080117

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 110
    const v0, 0x7f08011c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/widget/LinearLayout;

    .line 112
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->p:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    iget-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->q:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/widget/TextView;

    const/high16 v1, 0x41980000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->q:Z

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 120
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 121
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a:Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaConfig;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a:Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v1}, Lcom/facebook/orca/config/OrcaConfig;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a:Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaConfig;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->k:Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a:Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v1}, Lcom/facebook/orca/config/OrcaConfig;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setBackgroundColor(I)V

    .line 131
    :cond_3
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Landroid/content/BroadcastReceiver;

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d:Lcom/facebook/orca/app/OrcaAppType;

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType;->DEV:Lcom/facebook/orca/app/OrcaAppType;

    if-ne v0, v1, :cond_4

    .line 139
    invoke-virtual {p0, v6}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setWillNotDraw(Z)V

    .line 141
    :cond_4
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a()V

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->w:Landroid/graphics/Paint;

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->w:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    return-void

    .line 113
    :cond_5
    const/16 v1, 0x8

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;I)V

    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;I)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    .line 346
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 348
    :goto_1
    invoke-virtual {p1, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setSelected(Z)V

    .line 349
    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a(Z)V

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    invoke-virtual {v1, p0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;)V

    goto :goto_0

    .line 347
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 328
    instance-of v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 333
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 334
    check-cast p0, Landroid/app/Activity;

    .line 335
    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->o:Z

    .line 249
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->n:Z

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    :cond_0
    move v1, v2

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;

    .line 257
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButton;->setShowProgress(Z)V

    .line 258
    const/4 v0, 0x1

    .line 263
    :goto_2
    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->g:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 186
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->d:Lcom/facebook/orca/app/OrcaAppType;

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType;->DEV:Lcom/facebook/orca/app/OrcaAppType;

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->v:Landroid/graphics/Paint;

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 189
    int-to-float v2, v1

    int-to-float v3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 191
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->w:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onAttachedToWindow()V

    .line 156
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Z

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    const-string v1, "com.facebook.orca.ACTION_PERSISTEN_CHANNEL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Z

    .line 162
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onDetachedFromWindow()V

    .line 167
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->s:Z

    .line 171
    :cond_0
    return-void
.end method

.method public setButtonSelected(IZ)V
    .locals 4

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;

    .line 233
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->e()Z

    move-result v2

    if-eq v2, p2, :cond_2

    .line 235
    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a(Z)V

    .line 236
    const/4 v0, 0x1

    .line 241
    :goto_0
    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a()V

    .line 244
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setButtonSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->t:Ljava/util/List;

    .line 227
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a()V

    .line 228
    return-void
.end method

.method public setCustomTitleView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->j:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->u:Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;

    .line 362
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->m:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method
