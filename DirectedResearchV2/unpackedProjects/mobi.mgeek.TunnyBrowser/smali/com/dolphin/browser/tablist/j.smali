.class public Lcom/dolphin/browser/tablist/j;
.super Lcom/dolphin/browser/tablist/g;
.source "CloudTabListView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/ExpandableListView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/dolphin/browser/tablist/i;

.field private j:Lcom/dolphin/browser/tablist/v;

.field private k:Lcom/dolphin/browser/sync/at;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/view/View$OnClickListener;

.field private p:Lcom/dolphin/browser/sync/o;

.field private q:Lcom/dolphin/browser/sync/d;

.field private r:Lcom/dolphin/browser/push/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/g;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    .line 78
    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->i:Lcom/dolphin/browser/tablist/i;

    .line 79
    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->j:Lcom/dolphin/browser/tablist/v;

    .line 82
    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->a:Ljava/util/List;

    .line 83
    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->b:Ljava/util/List;

    .line 84
    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->c:Ljava/util/List;

    .line 86
    iput-boolean v1, p0, Lcom/dolphin/browser/tablist/j;->l:Z

    .line 87
    iput-boolean v1, p0, Lcom/dolphin/browser/tablist/j;->m:Z

    .line 89
    iput-boolean v1, p0, Lcom/dolphin/browser/tablist/j;->n:Z

    .line 218
    new-instance v0, Lcom/dolphin/browser/tablist/n;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/n;-><init>(Lcom/dolphin/browser/tablist/j;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->o:Landroid/view/View$OnClickListener;

    .line 337
    new-instance v0, Lcom/dolphin/browser/tablist/q;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/q;-><init>(Lcom/dolphin/browser/tablist/j;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->p:Lcom/dolphin/browser/sync/o;

    .line 363
    new-instance v0, Lcom/dolphin/browser/tablist/r;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/r;-><init>(Lcom/dolphin/browser/tablist/j;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->q:Lcom/dolphin/browser/sync/d;

    .line 716
    new-instance v0, Lcom/dolphin/browser/tablist/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/l;-><init>(Lcom/dolphin/browser/tablist/j;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->r:Lcom/dolphin/browser/push/g;

    .line 94
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/j;->a(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 686
    if-nez p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v1

    .line 690
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->f()Ljava/util/List;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    .line 695
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 696
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 697
    iget-object v4, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 698
    iget-object v4, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/dolphin/browser/push/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 700
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 705
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 706
    iget-object v1, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 707
    if-eqz v1, :cond_5

    iget-object v5, v1, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 709
    iget-object v1, v1, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    .line 710
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_3
    move v2, v0

    .line 712
    goto :goto_2

    :cond_4
    move v1, v2

    .line 713
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/j;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/j;Lcom/dolphin/browser/tablist/i;)Lcom/dolphin/browser/tablist/i;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/tablist/j;->i:Lcom/dolphin/browser/tablist/i;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/j;Lcom/dolphin/browser/tablist/v;)Lcom/dolphin/browser/tablist/v;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/tablist/j;->j:Lcom/dolphin/browser/tablist/v;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/j;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/j;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/j;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/tablist/j;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 563
    invoke-virtual {v0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->openUrl(Ljava/lang/String;Z)V

    .line 565
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/j;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/dolphin/browser/tablist/j;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/j;)Lcom/dolphin/browser/tablist/i;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->i:Lcom/dolphin/browser/tablist/i;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->i:Lcom/dolphin/browser/tablist/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->i:Lcom/dolphin/browser/tablist/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/i;->getGroupCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 294
    if-nez p1, :cond_0

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/j;->n:Z

    .line 299
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/j;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/j;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/j;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/dolphin/browser/tablist/j;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/dolphin/browser/tablist/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->d:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/j;->m:Z

    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->i()V

    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/tablist/j;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/j;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/tablist/j;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->t()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/tablist/j;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->u()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/dolphin/browser/tablist/j;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->v()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e060b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0096

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202c5

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0610

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0070

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202c6

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->m()V

    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/dolphin/browser/tablist/u;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/tablist/u;-><init>(Lcom/dolphin/browser/tablist/j;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/dolphin/browser/tablist/k;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/tablist/k;-><init>(Lcom/dolphin/browser/tablist/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/dolphin/browser/tablist/m;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/tablist/m;-><init>(Lcom/dolphin/browser/tablist/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setBackgroundColor(I)V

    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDuplicateParentStateEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/j;->addView(Landroid/view/View;)V

    .line 176
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->l()V

    .line 177
    return-void
.end method

.method static synthetic j(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->w()V

    return-void
.end method

.method private k()V
    .locals 7

    .prologue
    const/4 v3, -0x2

    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 182
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 184
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 185
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 187
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/j;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dolphin/browser/tablist/j;->f:Landroid/widget/LinearLayout;

    .line 188
    iget-object v3, p0, Lcom/dolphin/browser/tablist/j;->f:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    iget-object v3, p0, Lcom/dolphin/browser/tablist/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 191
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/j;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dolphin/browser/tablist/j;->g:Landroid/widget/ImageView;

    .line 192
    iget-object v3, p0, Lcom/dolphin/browser/tablist/j;->f:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/j;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/j;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dolphin/browser/tablist/j;->h:Landroid/widget/TextView;

    .line 195
    iget-object v3, p0, Lcom/dolphin/browser/tablist/j;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->h:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/tablist/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    const/high16 v4, 0x42700000

    const/high16 v3, 0x41200000

    .line 205
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 207
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 209
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v4}, Lcom/dolphin/browser/tablist/j;->a(F)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/tablist/j;->a(F)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 216
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v4}, Lcom/dolphin/browser/tablist/j;->a(F)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/tablist/j;->a(F)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/widget/ExpandableListView;->setIndicatorBoundsRelative(II)V

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/dolphin/browser/tablist/p;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/p;-><init>(Lcom/dolphin/browser/tablist/j;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->k:Lcom/dolphin/browser/sync/at;

    .line 320
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->k:Lcom/dolphin/browser/sync/at;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->p:Lcom/dolphin/browser/sync/o;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/at;->a(Lcom/dolphin/browser/sync/o;)V

    .line 322
    new-instance v0, Lcom/dolphin/browser/sync/an;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/an;-><init>()V

    .line 323
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->q:Lcom/dolphin/browser/sync/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/an;->a(Lcom/dolphin/browser/sync/d;)V

    .line 324
    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->k:Lcom/dolphin/browser/sync/at;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sync/at;->a(Lcom/dolphin/browser/sync/b;)V

    .line 326
    return-void
.end method

.method private o()Lcom/dolphin/browser/sync/at;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->k:Lcom/dolphin/browser/sync/at;

    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->n()V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->k:Lcom/dolphin/browser/sync/at;

    return-object v0
.end method

.method private p()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 461
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "message_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    .line 466
    const-string v1, "_id DESC"

    .line 467
    const-string v2, "type == ?"

    .line 468
    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 471
    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/dolphin/browser/push/data/l;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 473
    return-object v0
.end method

.method private q()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 478
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "deviceid"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "device_type"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "sync_time"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "-9 AS folder"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "1 AS is_folder"

    aput-object v1, v2, v0

    .line 485
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->OTHER_DEVICES_URI:Landroid/net/Uri;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 487
    const-string v5, "sync_time DESC"

    .line 488
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 489
    return-object v0
.end method

.method private r()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 494
    .line 495
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->TABS_URI:Landroid/net/Uri;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 496
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "deviceid"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "title"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "url"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "favicon"

    aput-object v4, v2, v0

    .line 501
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 503
    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->i:Lcom/dolphin/browser/tablist/i;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->i:Lcom/dolphin/browser/tablist/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/i;->b()V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->i:Lcom/dolphin/browser/tablist/i;

    .line 580
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->i:Lcom/dolphin/browser/tablist/i;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 582
    :cond_0
    return-void
.end method

.method private t()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->p()Landroid/database/Cursor;

    move-result-object v3

    .line 604
    const/4 v0, 0x0

    .line 605
    if-eqz v3, :cond_3

    .line 606
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 607
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 616
    :cond_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 617
    new-instance v5, Lcom/dolphin/browser/tablist/h;

    invoke-direct {v5}, Lcom/dolphin/browser/tablist/h;-><init>()V

    .line 618
    invoke-virtual {v5, v0}, Lcom/dolphin/browser/tablist/h;->a(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v5, v1}, Lcom/dolphin/browser/tablist/h;->b(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v5, v4}, Lcom/dolphin/browser/tablist/h;->a(Landroid/graphics/Bitmap;)V

    .line 621
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 624
    :cond_3
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 625
    return-object v0
.end method

.method private u()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->q()Landroid/database/Cursor;

    move-result-object v1

    .line 631
    const/4 v0, 0x0

    .line 632
    if-eqz v1, :cond_0

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 636
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 637
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 638
    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 639
    new-instance v7, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-direct {v7, v2, v4, v3}, Lcom/dolphin/browser/push/data/DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 640
    iput-wide v5, v7, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    .line 641
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 644
    :cond_0
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 645
    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/j;->a(Ljava/util/List;)I

    .line 646
    return-object v0
.end method

.method private v()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->r()Landroid/database/Cursor;

    move-result-object v4

    .line 652
    const/4 v0, 0x0

    .line 653
    if-eqz v4, :cond_4

    .line 654
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 655
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 657
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    const/4 v0, 0x3

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 659
    const/4 v0, 0x4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 660
    invoke-static {v0}, Lcom/dolphin/browser/util/aj;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 661
    if-nez v0, :cond_1

    .line 662
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 664
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 667
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v2

    .line 670
    :cond_2
    new-instance v6, Lcom/dolphin/browser/tablist/h;

    invoke-direct {v6}, Lcom/dolphin/browser/tablist/h;-><init>()V

    .line 671
    invoke-virtual {v6, v1}, Lcom/dolphin/browser/tablist/h;->a(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v6, v2}, Lcom/dolphin/browser/tablist/h;->b(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v6, v5}, Lcom/dolphin/browser/tablist/h;->c(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v6, v0}, Lcom/dolphin/browser/tablist/h;->a(Landroid/graphics/Bitmap;)V

    .line 675
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 678
    :cond_4
    invoke-static {v4}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 679
    return-object v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/j;->a(Ljava/util/List;)I

    move-result v0

    .line 731
    if-lez v0, :cond_0

    .line 732
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->m()V

    .line 734
    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 246
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 523
    invoke-super {p0}, Lcom/dolphin/browser/tablist/g;->a()V

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/j;->l:Z

    .line 526
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->g()V

    .line 527
    return-void
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->l()V

    .line 557
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/dolphin/browser/tablist/g;->a(Landroid/content/Context;)V

    .line 101
    iput-object p1, p0, Lcom/dolphin/browser/tablist/j;->d:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->j()V

    .line 103
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->k()V

    .line 104
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->n()V

    .line 105
    invoke-static {}, Lcom/dolphin/browser/push/data/l;->a()Lcom/dolphin/browser/push/data/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/push/data/l;->addObserver(Ljava/util/Observer;)V

    .line 106
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/f;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/k/f;->addObserver(Ljava/util/Observer;)V

    .line 108
    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/j;->n:Z

    .line 111
    :cond_0
    return-void
.end method

.method protected a(Lcom/dolphin/browser/tablist/bz;)V
    .locals 1

    .prologue
    .line 531
    invoke-super {p0, p1}, Lcom/dolphin/browser/tablist/g;->a(Lcom/dolphin/browser/tablist/bz;)V

    .line 533
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/tablist/cc;->a(Z)V

    .line 534
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 538
    invoke-super {p0}, Lcom/dolphin/browser/tablist/g;->b()V

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/j;->l:Z

    .line 541
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Lcom/dolphin/browser/tablist/g;->c()V

    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->e:Landroid/widget/ExpandableListView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202ce

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->i()V

    .line 239
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->k:Lcom/dolphin/browser/sync/at;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/j;->m:Z

    .line 309
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->h()V

    goto :goto_0

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->s()V

    .line 312
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->i()V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/dolphin/browser/tablist/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/o;-><init>(Lcom/dolphin/browser/tablist/j;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 259
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->s()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->j:Lcom/dolphin/browser/tablist/v;

    if-nez v0, :cond_2

    .line 264
    new-instance v0, Lcom/dolphin/browser/tablist/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/tablist/v;-><init>(Lcom/dolphin/browser/tablist/j;Lcom/dolphin/browser/tablist/k;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/j;->j:Lcom/dolphin/browser/tablist/v;

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->j:Lcom/dolphin/browser/tablist/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/v;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->j:Lcom/dolphin/browser/tablist/v;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/v;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 376
    new-instance v0, Lcom/dolphin/browser/tablist/s;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/s;-><init>(Lcom/dolphin/browser/tablist/j;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/tablist/j;->k:Lcom/dolphin/browser/sync/at;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/j;->o()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/dolphin/browser/tablist/t;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/tablist/t;-><init>(Lcom/dolphin/browser/tablist/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/at;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 737
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->r:Lcom/dolphin/browser/push/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/f;->a(Lcom/dolphin/browser/push/g;)V

    .line 738
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 742
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/j;->r:Lcom/dolphin/browser/push/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/f;->b(Lcom/dolphin/browser/push/g;)V

    .line 743
    invoke-super {p0}, Lcom/dolphin/browser/tablist/g;->onDetachedFromWindow()V

    .line 744
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 546
    instance-of v0, p1, Lcom/dolphin/browser/push/data/l;

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->g()V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/k/f;

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/j;->h()V

    goto :goto_0
.end method
