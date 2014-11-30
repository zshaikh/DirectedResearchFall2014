.class public Lcom/facebook/orca/threadlist/NewMessageNuxView;
.super Lcom/facebook/orca/activity/CustomView;
.source "NewMessageNuxView.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/facebook/orca/prefs/UiCounters;

.field private c:Z

.field private d:Z

.field private e:Lcom/facebook/orca/prefs/UiCounters$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->c()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->c()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->c()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/NewMessageNuxView;)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/NewMessageNuxView;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->e()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 47
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->a:Landroid/view/LayoutInflater;

    .line 48
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    .line 51
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->setVisibility(I)V

    .line 53
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->d:Z

    .line 54
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->d:Z

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/facebook/orca/threadlist/NewMessageNuxView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView$1;-><init>(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V

    iput-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->e:Lcom/facebook/orca/prefs/UiCounters$Listener;

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->e:Lcom/facebook/orca/prefs/UiCounters$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Lcom/facebook/orca/prefs/UiCounters$Listener;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->setClickable(Z)V

    .line 73
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->a(I)V

    .line 74
    new-instance v0, Lcom/facebook/orca/threadlist/NewMessageNuxView$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView$2;-><init>(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->e()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->g()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->f()V

    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "dismissed_new_message_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "compose_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 94
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->c:Z

    if-nez v0, :cond_2

    .line 95
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->setVisibility(I)V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 98
    new-instance v0, Lcom/facebook/orca/threadlist/NewMessageNuxView$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView$3;-><init>(Lcom/facebook/orca/threadlist/NewMessageNuxView;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->setVisibility(I)V

    .line 110
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 111
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 113
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 115
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "dismissed_new_message_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 119
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->setVisibility(I)V

    .line 120
    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/NewMessageNuxView;->c:Z

    .line 85
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/NewMessageNuxView;->e()V

    .line 86
    return-void
.end method
