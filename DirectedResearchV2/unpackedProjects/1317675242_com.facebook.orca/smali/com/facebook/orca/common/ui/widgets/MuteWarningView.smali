.class public Lcom/facebook/orca/common/ui/widgets/MuteWarningView;
.super Lcom/facebook/orca/activity/CustomView;
.source "MuteWarningView.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private c:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/facebook/orca/prefs/PrefKey;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->l:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b()V

    .line 149
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->j:Z

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 137
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->f()V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 164
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 165
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->f()V

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->l:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 172
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 173
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->j:Z

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->m:I

    if-ne v2, v5, :cond_1

    .line 192
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 194
    :cond_1
    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;->a(Landroid/view/View;)V

    .line 197
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->m:I

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getHeight()I

    move-result v1

    .line 198
    :goto_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    invoke-direct {v2, v4, v4, v4, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 199
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 201
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    new-instance v1, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;-><init>(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 218
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iput-boolean v5, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->j:Z

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getHeight()I

    move-result v1

    neg-int v1, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 69
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 70
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 72
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(I)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/R$styleable;->b:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 76
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 77
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->m:I

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 90
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->e:Landroid/view/View;

    .line 91
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->f:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->g:Landroid/view/View;

    .line 93
    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->h:Landroid/view/View;

    .line 94
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->i:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->g:Landroid/view/View;

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->h:Landroid/view/View;

    if-eqz v2, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->i:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$2;-><init>(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b()V

    .line 107
    return-void

    :cond_0
    move v1, v5

    .line 96
    goto :goto_0

    :cond_1
    move v1, v5

    .line 97
    goto :goto_1
.end method

.method public setAnimationContainer(Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->d:Landroid/widget/FrameLayout;

    .line 117
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->k:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->l:Lcom/facebook/orca/prefs/PrefKey;

    .line 112
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b()V

    .line 113
    return-void
.end method
