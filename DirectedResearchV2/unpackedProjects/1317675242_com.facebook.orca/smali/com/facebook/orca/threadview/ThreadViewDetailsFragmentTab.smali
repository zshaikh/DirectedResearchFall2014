.class public Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadViewDetailsFragmentTab.java"


# instance fields
.field private a:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

.field private b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

.field private c:Landroid/widget/Button;

.field private d:Lcom/facebook/orca/threadview/ThreadViewActivity;

.field private e:Lcom/facebook/orca/threads/ThreadSummary;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->t()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->v()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->w()V

    return-void
.end method

.method private s()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    if-eqz v0, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->c:Landroid/widget/Button;

    if-nez v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    move v0, v5

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->f:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b()V

    .line 107
    return-void

    :cond_1
    move v3, v4

    .line 101
    goto :goto_0

    :cond_2
    move v0, v4

    .line 102
    goto :goto_1
.end method

.method private t()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/facebook/orca/threadview/ThreadNamePicker;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d:Lcom/facebook/orca/threadview/ThreadViewActivity;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadNamePicker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadNamePicker;->a(Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;)V

    .line 123
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->show()V

    goto :goto_0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d:Lcom/facebook/orca/threadview/ThreadViewActivity;

    const-class v2, Lcom/facebook/orca/member/LeaveThreadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const-string v1, "threadid"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a(Z)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    .line 140
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;

    .line 141
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->h()Lcom/facebook/orca/server/ModifyThreadParams;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/server/ModifyThreadParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 42
    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->a()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 76
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 87
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->finish()V

    .line 91
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    .line 50
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    .line 51
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->c:Landroid/widget/Button;

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->a:Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->setThreadId(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->setDetailsTab(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->c:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->e:Lcom/facebook/orca/threads/ThreadSummary;

    .line 95
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->s()V

    .line 96
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->d:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->k()V

    .line 151
    return-void
.end method

.method public h_()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->h_()V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewDetailsFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b()V

    .line 82
    return-void
.end method
