.class public Lcom/facebook/orca/threadlist/SyncDisabledWarningView;
.super Lcom/facebook/orca/activity/CustomView;
.source "SyncDisabledWarningView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a(I)V

    .line 51
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a:Landroid/view/View;

    .line 52
    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->b:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->c:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->c:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/threadlist/SyncDisabledWarningView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView$1;-><init>(Lcom/facebook/orca/threadlist/SyncDisabledWarningView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->b()V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/SyncDisabledWarningView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->d()V

    return-void
.end method

.method private b(I)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 96
    const v2, 0x7f0a0106

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 97
    const-string v2, "[[setting_type]]"

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 99
    invoke-virtual {v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v1, "android.settings.SETTINGS"

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->b:Landroid/widget/TextView;

    const v1, 0x7f0a0108

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threadlist/SyncDisabledWarningView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
