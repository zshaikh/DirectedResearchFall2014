.class Lcom/dolphin/browser/gesture/ui/al;
.super Landroid/widget/BaseAdapter;
.source "RecommendGestureView.java"


# instance fields
.field protected a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/gesture/ui/aj;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/gesture/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/gesture/ui/aj;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/al;->b:Lcom/dolphin/browser/gesture/ui/aj;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/al;->c:Ljava/util/List;

    .line 145
    iput-object p2, p0, Lcom/dolphin/browser/gesture/ui/al;->a:Landroid/content/Context;

    .line 146
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/al;->c()V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/gesture/ui/aj;Landroid/content/Context;Lcom/dolphin/browser/gesture/ui/ak;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/gesture/ui/al;-><init>(Lcom/dolphin/browser/gesture/ui/aj;Landroid/content/Context;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/al;->b:Lcom/dolphin/browser/gesture/ui/aj;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/aj;->b(Lcom/dolphin/browser/gesture/ui/aj;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/dolphin/browser/gesture/a;->a()Lcom/dolphin/browser/gesture/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/al;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/al;->notifyDataSetChanged()V

    .line 158
    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/dolphin/browser/gesture/ui/ai;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/al;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/gesture/ui/ai;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(ILandroid/view/View;Landroid/view/ViewParent;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/al;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/a;

    .line 181
    check-cast p2, Lcom/dolphin/browser/gesture/ui/ai;

    .line 182
    invoke-virtual {p2, v0}, Lcom/dolphin/browser/gesture/ui/ai;->a(Lcom/dolphin/browser/gesture/a/a;)V

    .line 183
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/ui/al;->c()V

    .line 196
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/al;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 172
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 187
    if-nez p2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/al;->a()Landroid/view/View;

    move-result-object p2

    .line 190
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/gesture/ui/al;->a(ILandroid/view/View;Landroid/view/ViewParent;)V

    .line 191
    return-object p2
.end method
