.class public Lcom/dolphin/browser/share/a/t;
.super Landroid/widget/BaseAdapter;
.source "EvernoteTagListAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/share/a/t;->a:Landroid/content/Context;

    .line 32
    invoke-static {p2}, Lcom/dolphin/browser/share/a/v;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/t;->a()V

    .line 34
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 43
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/a/t;->c(Ljava/util/List;)V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/a/t;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p1, :cond_0

    if-eq p2, p3, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/x;

    .line 102
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v0, Lcom/dolphin/browser/share/a/u;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/a/u;-><init>(Lcom/dolphin/browser/share/a/t;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/4 v2, 0x1

    .line 135
    :cond_0
    return v2

    .line 128
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 76
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    move v2, v3

    .line 82
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 83
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/x;

    invoke-virtual {v0}, Lcom/c/b/c/x;->f()I

    move-result v4

    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/x;

    invoke-virtual {v0}, Lcom/c/b/c/x;->f()I

    move-result v0

    .line 85
    if-le v0, v4, :cond_2

    move v2, v1

    .line 82
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 90
    :cond_3
    if-eqz v2, :cond_0

    .line 91
    invoke-direct {p0, p1, v3, v2}, Lcom/dolphin/browser/share/a/t;->a(Ljava/util/List;II)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/t;->c:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/a/t;->a(Ljava/util/List;)V

    .line 39
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/t;->notifyDataSetChanged()V

    .line 40
    return-void
.end method

.method protected a(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 139
    if-eqz p2, :cond_1

    .line 140
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08033c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08033d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 145
    iget-object v2, p0, Lcom/dolphin/browser/share/a/t;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/b/c/x;

    .line 146
    invoke-virtual {v2}, Lcom/c/b/c/x;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v2}, Lcom/c/b/c/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 149
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    .line 150
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a017c

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 151
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02026c

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    iget-object v4, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 155
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_1
    return-void

    .line 157
    :cond_2
    invoke-virtual {v2}, Lcom/c/b/c/x;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/share/a/t;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02026b

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v2

    if-nez v2, :cond_3

    .line 161
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    invoke-static {p1}, Lcom/dolphin/browser/share/a/v;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/a/t;->b(Ljava/util/List;)V

    .line 175
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/t;->notifyDataSetChanged()V

    .line 176
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    .line 183
    :cond_0
    if-eqz p2, :cond_1

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 191
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/t;->notifyDataSetChanged()V

    .line 192
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected b()Landroid/view/View;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300ec

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/dolphin/browser/share/a/v;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/share/a/t;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 118
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 196
    if-nez p2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/t;->b()Landroid/view/View;

    move-result-object p2

    .line 200
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/share/a/t;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 202
    return-object p2
.end method
