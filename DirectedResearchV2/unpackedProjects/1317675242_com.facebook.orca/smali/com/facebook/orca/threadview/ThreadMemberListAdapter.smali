.class public Lcom/facebook/orca/threadview/ThreadMemberListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThreadMemberListAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/cache/DataCache;

.field private final c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->d:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->b:Lcom/facebook/orca/cache/DataCache;

    .line 42
    iput-object p3, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->c:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadParticipant;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    .line 85
    if-nez p2, :cond_1

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03003c

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 89
    :goto_0
    const v0, 0x7f0800e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v0, 0x7f08008e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_1
    const v0, 0x7f0800e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 102
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserId(Ljava/lang/String;)V

    .line 104
    return-object v1

    .line 98
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->d:Ljava/util/List;

    .line 47
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;->a(Lcom/facebook/orca/threads/ThreadParticipant;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    return v0
.end method
