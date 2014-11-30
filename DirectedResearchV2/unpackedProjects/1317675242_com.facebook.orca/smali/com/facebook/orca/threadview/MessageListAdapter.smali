.class public Lcom/facebook/orca/threadview/MessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageListAdapter.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/LayoutInflater;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/cache/PendingSendMessage;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Ljava/util/List;

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->f:Ljava/util/List;

    .line 47
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->g:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    .line 52
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 233
    .line 234
    if-nez p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/cache/PendingSendMessage;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 206
    check-cast p2, Lcom/facebook/orca/threadview/MessageItemView;

    .line 207
    if-nez p2, :cond_0

    .line 208
    new-instance v0, Lcom/facebook/orca/threadview/MessageItemView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;-><init>(Landroid/content/Context;)V

    .line 210
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/cache/PendingSendMessage;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 211
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 215
    check-cast p2, Lcom/facebook/orca/threadview/MessageItemView;

    .line 216
    if-nez p2, :cond_0

    .line 217
    new-instance v0, Lcom/facebook/orca/threadview/MessageItemView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;-><init>(Landroid/content/Context;)V

    .line 219
    :goto_0
    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/MessageItemView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 220
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 241
    .line 242
    if-nez p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 224
    check-cast p2, Lcom/facebook/orca/threadview/AdminMessageItemView;

    .line 225
    if-nez p2, :cond_0

    .line 226
    new-instance v0, Lcom/facebook/orca/threadview/AdminMessageItemView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/AdminMessageItemView;-><init>(Landroid/content/Context;)V

    .line 228
    :goto_0
    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/AdminMessageItemView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 229
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->g:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    return-object v0
.end method

.method a(Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->g:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    .line 79
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Ljava/util/List;

    .line 63
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/cache/PendingSendMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->f:Ljava/util/List;

    .line 67
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->g:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

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
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->g:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    if-eq v0, v1, :cond_4

    .line 89
    if-nez p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->g:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    sget-object v1, Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadview/MessageListAdapter$LoadMoreState;

    if-ne v0, v1, :cond_0

    .line 91
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Ljava/lang/Object;

    .line 107
    :goto_0
    return-object v0

    .line 93
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    sub-int v0, v2, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 104
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageListAdapter;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    sub-int v0, v2, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .line 150
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    .line 151
    const-wide/16 v0, 0x3

    .line 161
    :goto_0
    return-wide v0

    .line 152
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 153
    const-wide/16 v0, 0x4

    goto :goto_0

    .line 154
    :cond_1
    instance-of v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;

    if-eqz v0, :cond_2

    .line 155
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 156
    :cond_2
    instance-of v0, p0, Lcom/facebook/orca/threads/Message;

    if-eqz v0, :cond_3

    .line 157
    check-cast p0, Lcom/facebook/orca/threads/Message;

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 159
    :cond_3
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .line 167
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    .line 168
    const/4 v0, 0x3

    .line 177
    :goto_0
    return v0

    .line 169
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 170
    const/4 v0, 0x4

    goto :goto_0

    .line 171
    :cond_1
    instance-of v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;

    if-eqz v0, :cond_2

    .line 172
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_2
    instance-of v0, p0, Lcom/facebook/orca/threads/Message;

    if-eqz v0, :cond_4

    .line 174
    check-cast p0, Lcom/facebook/orca/threads/Message;

    .line 175
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 184
    if-nez v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null item"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 188
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    .line 189
    :cond_1
    sget-object v2, Lcom/facebook/orca/threadview/MessageListAdapter;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 190
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 191
    :cond_2
    instance-of v2, v1, Lcom/facebook/orca/cache/PendingSendMessage;

    if-eqz v2, :cond_3

    .line 192
    check-cast v1, Lcom/facebook/orca/cache/PendingSendMessage;

    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/cache/PendingSendMessage;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_3
    instance-of v2, v1, Lcom/facebook/orca/threads/Message;

    if-eqz v2, :cond_5

    .line 194
    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/threads/Message;

    move-object v2, v0

    .line 195
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->l()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    check-cast v1, Lcom/facebook/orca/threads/Message;

    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->b(Lcom/facebook/orca/threads/Message;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 198
    :cond_4
    check-cast v1, Lcom/facebook/orca/threads/Message;

    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/threadview/MessageListAdapter;->a(Lcom/facebook/orca/threads/Message;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown object type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .line 137
    instance-of v0, p0, Lcom/facebook/orca/threads/Message;

    if-eqz v0, :cond_0

    .line 138
    check-cast p0, Lcom/facebook/orca/threads/Message;

    .line 139
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
