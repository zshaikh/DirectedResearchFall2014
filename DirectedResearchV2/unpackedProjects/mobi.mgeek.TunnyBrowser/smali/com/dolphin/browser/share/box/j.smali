.class public Lcom/dolphin/browser/share/box/j;
.super Landroid/app/Dialog;
.source "UploadPathDialog.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/b/a/a/b;

.field private m:Lcom/dolphin/browser/share/box/i;

.field private n:Lcom/dolphin/browser/share/box/n;

.field private o:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/a/b;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f001e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 116
    new-instance v0, Lcom/dolphin/browser/share/box/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/box/m;-><init>(Lcom/dolphin/browser/share/box/j;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->o:Landroid/widget/AdapterView$OnItemClickListener;

    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030117

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->setContentView(I)V

    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->a:Landroid/view/View;

    .line 60
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->b:Landroid/widget/TextView;

    .line 61
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->c:Landroid/widget/ImageView;

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->d:Landroid/widget/ListView;

    .line 63
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->f:Landroid/widget/TextView;

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->g:Landroid/widget/ImageView;

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->i:Landroid/view/View;

    .line 66
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->k:Landroid/widget/TextView;

    .line 67
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803c5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->j:Landroid/view/View;

    .line 68
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->e:Landroid/widget/ImageView;

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/box/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->h:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/dolphin/browser/share/box/k;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/share/box/k;-><init>(Lcom/dolphin/browser/share/box/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/dolphin/browser/share/box/l;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/share/box/l;-><init>(Lcom/dolphin/browser/share/box/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object p2, p0, Lcom/dolphin/browser/share/box/j;->l:Lcom/b/a/a/b;

    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/j;->b()V

    .line 93
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/j;->a()V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/box/j;)Lcom/b/a/a/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->l:Lcom/b/a/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/box/j;Lcom/b/a/a/b;)Lcom/b/a/a/b;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dolphin/browser/share/box/j;->l:Lcom/b/a/a/b;

    return-object p1
.end method

.method private a(Lcom/b/a/a/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/j;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/dolphin/browser/share/box/o;->c(Lcom/b/a/a/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/b/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lcom/dolphin/browser/share/box/j;->l:Lcom/b/a/a/b;

    .line 98
    iget-object v3, p0, Lcom/dolphin/browser/share/box/j;->g:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/dolphin/browser/share/box/o;->c(Lcom/b/a/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->f:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/share/box/j;->a(Lcom/b/a/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v0, Lcom/dolphin/browser/share/box/i;

    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/dolphin/browser/share/box/i;-><init>(Landroid/content/Context;Lcom/b/a/a/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/box/j;->m:Lcom/dolphin/browser/share/box/i;

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/dolphin/browser/share/box/j;->m:Lcom/dolphin/browser/share/box/i;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/dolphin/browser/share/box/j;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->m:Lcom/dolphin/browser/share/box/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/box/i;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :goto_1
    invoke-direct {p0, v1}, Lcom/dolphin/browser/share/box/j;->a(I)V

    .line 106
    return-void

    :cond_0
    move v0, v1

    .line 98
    goto :goto_0

    .line 103
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const v4, 0x7f0a0062

    .line 130
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->a:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0012

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202f9

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020021

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200b5

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->j:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020335

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->k:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0068

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->d:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->e:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ca

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v1, p0, Lcom/dolphin/browser/share/box/j;->h:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0049

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 149
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/share/box/j;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dolphin/browser/share/box/j;->a()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/share/box/j;)Lcom/dolphin/browser/share/box/n;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/share/box/j;->n:Lcom/dolphin/browser/share/box/n;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/share/box/n;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dolphin/browser/share/box/j;->n:Lcom/dolphin/browser/share/box/n;

    .line 46
    return-void
.end method
