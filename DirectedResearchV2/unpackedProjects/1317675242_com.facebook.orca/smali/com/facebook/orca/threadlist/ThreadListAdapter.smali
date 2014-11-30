.class public Lcom/facebook/orca/threadlist/ThreadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThreadListAdapter.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/facebook/orca/cache/DataCache;

.field private final g:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final h:Landroid/view/LayoutInflater;

.field private final i:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

.field private k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

.field private l:Ljava/lang/String;

.field private m:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Landroid/view/LayoutInflater;Lcom/facebook/orca/threads/ThreadDateUtil;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    .line 53
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    .line 55
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    .line 56
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    .line 64
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->f:Lcom/facebook/orca/cache/DataCache;

    .line 66
    iput-object p3, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 67
    iput-object p4, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Landroid/view/LayoutInflater;

    .line 68
    iput-object p5, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->i:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 69
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 182
    .line 183
    if-nez p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    const v1, 0x7f0800e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 186
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 213
    .line 214
    if-nez p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c()V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 192
    .line 193
    if-nez p1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 195
    const v0, 0x7f0800e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move-object v0, v1

    .line 200
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 221
    .line 222
    if-nez p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    .line 102
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 108
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 109
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    .line 110
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ThreadSummary;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 204
    check-cast p2, Lcom/facebook/orca/threadlist/ThreadItemView;

    .line 205
    if-nez p2, :cond_0

    .line 206
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadItemView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadlist/ThreadItemView;-><init>(Landroid/content/Context;)V

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V

    .line 209
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    .line 85
    return-void
.end method

.method public a(Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    .line 73
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    .line 89
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a()V

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    sget-object v2, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->n:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    if-ne v0, v1, :cond_1

    .line 147
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_1
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 157
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    .line 122
    :cond_0
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 123
    const/4 v0, 0x2

    goto :goto_0

    .line 124
    :cond_1
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 125
    const/4 v0, 0x4

    goto :goto_0

    .line 126
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 127
    const/4 v0, 0x5

    goto :goto_0

    .line 128
    :cond_3
    instance-of v0, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_4

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 167
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 168
    :cond_1
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 169
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 171
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_3
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 173
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_4
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_5

    .line 175
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threads/ThreadSummary;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x6

    return v0
.end method
