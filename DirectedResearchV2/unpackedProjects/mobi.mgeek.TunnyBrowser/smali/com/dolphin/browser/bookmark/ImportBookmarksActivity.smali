.class public Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "ImportBookmarksActivity.java"


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/dolphin/browser/bookmark/cm;

.field private c:Landroid/widget/Button;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 152
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 231
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0325

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0323

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/bookmark/cl;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/bookmark/cl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 248
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->a:Z

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->d()V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030032

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08011c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e032a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 94
    new-instance v2, Lcom/dolphin/browser/bookmark/cj;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/bookmark/cj;-><init>(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->c:Landroid/widget/Button;

    .line 102
    return-object v1
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 227
    sget-boolean v0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->a:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->b:Lcom/dolphin/browser/bookmark/cm;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cm;->a()Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/Context;Lcom/dolphin/browser/bookmarks/k;Ljava/util/List;)V

    .line 110
    :cond_0
    return-void
.end method

.method private e()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/dolphin/browser/bookmark/ck;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/ck;-><init>(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;)V

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->c:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->c:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0186

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 140
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->c:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02014d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->c:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02014e

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800aa

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0035

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->d:Landroid/view/View;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a015d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b8

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f()V

    .line 82
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const/4 v1, 0x1

    .line 132
    :cond_0
    return v1

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->setContentView(I)V

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->d:Landroid/view/View;

    .line 56
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->e:Landroid/widget/TextView;

    .line 57
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    invoke-direct {p0, p0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 60
    new-instance v0, Lcom/dolphin/browser/bookmark/cm;

    invoke-direct {v0, p0, p0}, Lcom/dolphin/browser/bookmark/cm;-><init>(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;Landroid/content/Context;)V

    .line 62
    iput-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->b:Lcom/dolphin/browser/bookmark/cm;

    .line 64
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->f:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->e()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->a()V

    .line 69
    return-void
.end method
