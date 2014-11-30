.class public Lcom/facebook/orca/member/MemberActivity;
.super Lcom/facebook/orca/activity/OrcaActivity;
.source "MemberActivity.java"


# instance fields
.field private b:Lcom/facebook/orca/cache/DataCache;

.field private c:Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;

.field private d:Lcom/facebook/orca/member/MemberCommands;

.field private e:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private i:Landroid/widget/ListView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaActivity;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/member/MemberActivity;)Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->c:Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->a(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/MemberActivity;->setContentView(I)V

    .line 56
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->b(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 63
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->b:Lcom/facebook/orca/cache/DataCache;

    .line 64
    const-class v0, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->c:Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;

    .line 65
    const-class v0, Lcom/facebook/orca/member/MemberCommands;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/member/MemberCommands;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->d:Lcom/facebook/orca/member/MemberCommands;

    .line 67
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/MemberActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->e:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 68
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/MemberActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->f:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/MemberActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->g:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/MemberActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->h:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 71
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/MemberActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->i:Landroid/widget/ListView;

    .line 73
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    move v1, v6

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 80
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->j:Ljava/lang/String;

    .line 81
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->k:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->b:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/member/MemberActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->finish()V

    .line 122
    :goto_1
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/member/MemberActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadSummary;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v2

    .line 89
    if-nez v2, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->finish()V

    goto :goto_1

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/facebook/orca/member/MemberActivity;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v2

    .line 95
    if-nez v2, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->finish()V

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 101
    new-instance v4, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-direct {v4, p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;-><init>(Landroid/content/Context;)V

    .line 102
    const v5, 0x106000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setTextColor(I)V

    .line 103
    if-eqz v1, :cond_4

    move v1, v6

    :goto_2
    invoke-virtual {v4, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setMaxLines(I)V

    .line 104
    invoke-virtual {v4, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 105
    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->e:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-virtual {v1, v4}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setCustomTitleView(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->h:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserId(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->d:Lcom/facebook/orca/member/MemberCommands;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/member/MemberCommands;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/users/User;)V

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->c:Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->c:Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->d:Lcom/facebook/orca/member/MemberCommands;

    invoke-virtual {v1}, Lcom/facebook/orca/member/MemberCommands;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/member/MemberActivity$CommandListAdapter;->a(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/member/MemberActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/member/MemberActivity$1;-><init>(Lcom/facebook/orca/member/MemberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    :cond_4
    move v1, v7

    .line 103
    goto :goto_2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaActivity;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/member/MemberActivity;->b:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 129
    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->finish()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummary;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 134
    if-nez v0, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->finish()V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/member/MemberActivity;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/facebook/orca/member/MemberActivity;->finish()V

    goto :goto_0
.end method
