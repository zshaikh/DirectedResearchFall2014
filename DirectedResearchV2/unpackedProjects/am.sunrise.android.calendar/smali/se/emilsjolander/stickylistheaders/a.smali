.class Lse/emilsjolander/stickylistheaders/a;
.super Landroid/widget/BaseAdapter;
.source "AdapterWrapper.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field final a:Lse/emilsjolander/stickylistheaders/i;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Lse/emilsjolander/stickylistheaders/d;

.field private g:Landroid/database/DataSetObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lse/emilsjolander/stickylistheaders/i;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->b:Ljava/util/List;

    .line 38
    new-instance v0, Lse/emilsjolander/stickylistheaders/b;

    invoke-direct {v0, p0}, Lse/emilsjolander/stickylistheaders/b;-><init>(Lse/emilsjolander/stickylistheaders/a;)V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->g:Landroid/database/DataSetObserver;

    .line 54
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/a;->c:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    .line 56
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->g:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lse/emilsjolander/stickylistheaders/i;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 57
    return-void
.end method

.method private a()Landroid/view/View;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lse/emilsjolander/stickylistheaders/s;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p1, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/a;->a()Landroid/view/View;

    move-result-object v0

    .line 128
    :goto_0
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v1, p2, v0, p1}, Lse/emilsjolander/stickylistheaders/i;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 129
    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header view must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p1, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    goto :goto_0

    .line 133
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 134
    new-instance v1, Lse/emilsjolander/stickylistheaders/c;

    invoke-direct {v1, p0, p2}, Lse/emilsjolander/stickylistheaders/c;-><init>(Lse/emilsjolander/stickylistheaders/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-object v0
.end method

.method static synthetic a(Lse/emilsjolander/stickylistheaders/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Lse/emilsjolander/stickylistheaders/s;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p1, Lse/emilsjolander/stickylistheaders/s;->d:Landroid/view/View;

    .line 115
    if-eqz v0, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    return-void
.end method

.method static synthetic b(Lse/emilsjolander/stickylistheaders/a;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method private b(I)Z
    .locals 4

    .prologue
    .line 156
    if-eqz p1, :cond_0

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/i;->a(I)J

    move-result-wide v0

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Lse/emilsjolander/stickylistheaders/i;->a(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lse/emilsjolander/stickylistheaders/a;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic d(Lse/emilsjolander/stickylistheaders/a;)Lse/emilsjolander/stickylistheaders/d;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->f:Lse/emilsjolander/stickylistheaders/d;

    return-object v0
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/i;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/i;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/a;->d:Landroid/graphics/drawable/Drawable;

    .line 61
    iput p2, p0, Lse/emilsjolander/stickylistheaders/a;->e:I

    .line 62
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/a;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public a(Lse/emilsjolander/stickylistheaders/d;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/a;->f:Lse/emilsjolander/stickylistheaders/d;

    .line 183
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/i;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Lse/emilsjolander/stickylistheaders/s;
    .locals 4

    .prologue
    .line 163
    if-nez p2, :cond_1

    new-instance p2, Lse/emilsjolander/stickylistheaders/s;

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Lse/emilsjolander/stickylistheaders/s;-><init>(Landroid/content/Context;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    iget-object v1, p2, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    invoke-interface {v0, p1, v1, p3}, Lse/emilsjolander/stickylistheaders/i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 165
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-direct {p0, p2}, Lse/emilsjolander/stickylistheaders/a;->a(Lse/emilsjolander/stickylistheaders/s;)V

    .line 171
    :goto_1
    instance-of v2, v1, Landroid/widget/Checkable;

    if-eqz v2, :cond_3

    instance-of v2, p2, Lse/emilsjolander/stickylistheaders/e;

    if-nez v2, :cond_3

    .line 173
    new-instance p2, Lse/emilsjolander/stickylistheaders/e;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/a;->c:Landroid/content/Context;

    invoke-direct {p2, v2}, Lse/emilsjolander/stickylistheaders/e;-><init>(Landroid/content/Context;)V

    .line 177
    :cond_0
    :goto_2
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/a;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lse/emilsjolander/stickylistheaders/a;->e:I

    invoke-virtual {p2, v1, v0, v2, v3}, Lse/emilsjolander/stickylistheaders/s;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 178
    return-object p2

    .line 163
    :cond_1
    check-cast p2, Lse/emilsjolander/stickylistheaders/s;

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0, p2, p1}, Lse/emilsjolander/stickylistheaders/a;->a(Lse/emilsjolander/stickylistheaders/s;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 174
    :cond_3
    instance-of v2, v1, Landroid/widget/Checkable;

    if-nez v2, :cond_0

    instance-of v2, p2, Lse/emilsjolander/stickylistheaders/e;

    if-eqz v2, :cond_0

    .line 175
    new-instance p2, Lse/emilsjolander/stickylistheaders/s;

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/a;->c:Landroid/content/Context;

    invoke-direct {p2, v2}, Lse/emilsjolander/stickylistheaders/s;-><init>(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/i;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/i;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/i;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/a;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Lse/emilsjolander/stickylistheaders/s;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/i;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/i;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/i;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/a;->a:Lse/emilsjolander/stickylistheaders/i;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
