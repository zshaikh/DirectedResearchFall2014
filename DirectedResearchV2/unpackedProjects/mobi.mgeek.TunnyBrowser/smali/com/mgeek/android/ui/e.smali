.class public Lcom/mgeek/android/ui/e;
.super Landroid/widget/LinearLayout;
.source "CrashRestoreView.java"

# interfaces
.implements Lcom/dolphin/browser/theme/aq;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mgeek/android/ui/j;

.field private c:Lcom/dolphin/browser/core/ITab;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mgeek/android/ui/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/mgeek/android/ui/l;

.field private g:Lcom/mgeek/android/ui/h;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/Button;

.field private j:Lcom/dolphin/browser/extensions/ThemeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 65
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Lcom/dolphin/browser/theme/aq;)V

    .line 66
    iput-object p1, p0, Lcom/mgeek/android/ui/e;->a:Landroid/content/Context;

    .line 67
    invoke-direct {p0, p2}, Lcom/mgeek/android/ui/e;->a(Ljava/util/ArrayList;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/e;->a(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/mgeek/android/ui/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mgeek/android/ui/h;-><init>(Lcom/mgeek/android/ui/e;Lcom/mgeek/android/ui/f;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/e;->g:Lcom/mgeek/android/ui/h;

    .line 70
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->g:Lcom/mgeek/android/ui/h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/h;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/e;)Lcom/mgeek/android/ui/j;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->b:Lcom/mgeek/android/ui/j;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030036

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mgeek/android/ui/e;->h:Landroid/widget/ListView;

    .line 99
    new-instance v0, Lcom/mgeek/android/ui/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mgeek/android/ui/l;-><init>(Lcom/mgeek/android/ui/e;Lcom/mgeek/android/ui/f;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/e;->f:Lcom/mgeek/android/ui/l;

    .line 100
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mgeek/android/ui/e;->f:Lcom/mgeek/android/ui/l;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/mgeek/android/ui/f;

    invoke-direct {v1, p0}, Lcom/mgeek/android/ui/f;-><init>(Lcom/mgeek/android/ui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->h:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 111
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mgeek/android/ui/e;->i:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->i:Landroid/widget/Button;

    new-instance v1, Lcom/mgeek/android/ui/g;

    invoke-direct {v1, p0}, Lcom/mgeek/android/ui/g;-><init>(Lcom/mgeek/android/ui/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/mgeek/android/ui/e;->c()V

    .line 121
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 86
    new-instance v5, Lcom/mgeek/android/ui/k;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/mgeek/android/ui/k;-><init>(Lcom/mgeek/android/ui/e;Lcom/mgeek/android/ui/f;)V

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/mgeek/android/ui/k;->a:Ljava/lang/String;

    .line 88
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/mgeek/android/ui/k;->b:Ljava/lang/String;

    .line 89
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v5, Lcom/mgeek/android/ui/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    iput-object v2, p0, Lcom/mgeek/android/ui/e;->d:Ljava/util/ArrayList;

    .line 93
    iput-object v3, p0, Lcom/mgeek/android/ui/e;->e:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method static synthetic b(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/mgeek/android/ui/e;)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->c:Lcom/dolphin/browser/core/ITab;

    return-object v0
.end method

.method static synthetic d(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/mgeek/android/ui/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/mgeek/android/ui/e;)Lcom/dolphin/browser/extensions/ThemeManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    return-object v0
.end method

.method static synthetic g(Lcom/mgeek/android/ui/e;)Lcom/mgeek/android/ui/l;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->f:Lcom/mgeek/android/ui/l;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mgeek/android/ui/e;->c:Lcom/dolphin/browser/core/ITab;

    .line 79
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/s;Z)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public a(Lcom/mgeek/android/ui/j;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mgeek/android/ui/e;->b:Lcom/mgeek/android/ui/j;

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/dolphin/browser/theme/d/j;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/mgeek/android/ui/e;->c()V

    .line 239
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const v4, 0x7f0a00d2

    .line 218
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00cf

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 219
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->h:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0173

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 223
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 224
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mgeek/android/ui/e;->j:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 225
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->f:Lcom/mgeek/android/ui/l;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/l;->notifyDataSetInvalidated()V

    .line 226
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mgeek/android/ui/e;->g:Lcom/mgeek/android/ui/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/h;->b(Z)Z

    .line 126
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 127
    return-void
.end method
