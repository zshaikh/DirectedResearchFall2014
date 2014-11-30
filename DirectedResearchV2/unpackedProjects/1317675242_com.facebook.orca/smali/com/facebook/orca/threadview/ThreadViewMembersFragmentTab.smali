.class public Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ThreadViewMembersFragmentTab.java"


# instance fields
.field private Q:Lcom/facebook/orca/member/MemberCommands;

.field private R:Lcom/facebook/orca/threadview/ThreadViewActivity;

.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

.field private c:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/member/MemberCommands;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View;

.field private g:Lcom/facebook/orca/threads/ThreadSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)Lcom/facebook/orca/threadview/ThreadViewActivity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->R:Lcom/facebook/orca/threadview/ThreadViewActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .line 133
    instance-of v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;

    if-eqz v0, :cond_0

    .line 134
    check-cast p0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 56
    const v0, 0x7f030044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->a()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->R:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 95
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->u()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 64
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a:Lcom/facebook/orca/cache/DataCache;

    .line 65
    const-class v0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    .line 66
    const-class v0, Lcom/facebook/orca/member/MemberCommands;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->c:Lcom/google/inject/Provider;

    .line 68
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->d:Landroid/widget/ListView;

    .line 69
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->e:Landroid/widget/Button;

    .line 70
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->f:Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->R:Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->d:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->a(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->e:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->g:Lcom/facebook/orca/threads/ThreadSummary;

    .line 105
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab$3;-><init>(Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->a(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->notifyDataSetChanged()V

    .line 129
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->e:Landroid/widget/Button;

    const v1, 0x7f0a0033

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->e:Landroid/widget/Button;

    const v1, 0x7f0a0032

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->Q:Lcom/facebook/orca/member/MemberCommands;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->Q:Lcom/facebook/orca/member/MemberCommands;

    invoke-virtual {v0}, Lcom/facebook/orca/member/MemberCommands;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/member/MemberCommand;

    .line 168
    invoke-interface {p0}, Lcom/facebook/orca/member/MemberCommand;->d()V

    .line 169
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->d:Landroid/widget/ListView;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->g:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_1

    .line 144
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->b:Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 146
    instance-of v1, v0, Lcom/facebook/orca/users/User;

    if-eqz v1, :cond_1

    .line 147
    check-cast v0, Lcom/facebook/orca/users/User;

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->c:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/member/MemberCommands;

    .line 149
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->g:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/member/MemberCommands;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/users/User;)V

    .line 150
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 151
    invoke-virtual {v1}, Lcom/facebook/orca/member/MemberCommands;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move v3, v4

    .line 152
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 153
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/member/MemberCommand;

    .line 154
    invoke-interface {v0}, Lcom/facebook/orca/member/MemberCommand;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 152
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 156
    :cond_0
    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMembersFragmentTab;->Q:Lcom/facebook/orca/member/MemberCommands;

    .line 159
    :cond_1
    return-void
.end method
