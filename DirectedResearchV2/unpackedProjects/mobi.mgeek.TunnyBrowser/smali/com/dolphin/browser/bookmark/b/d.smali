.class public Lcom/dolphin/browser/bookmark/b/d;
.super Landroid/widget/BaseAdapter;
.source "ChooseFolderAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/b/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/b/d;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/bookmark/b/d;->b:I

    .line 39
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/d;->c:I

    .line 41
    iput-object p2, p0, Lcom/dolphin/browser/bookmark/b/d;->d:Ljava/util/List;

    .line 42
    return-void
.end method

.method private b(ILandroid/view/View;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/b/d;->a(I)Lcom/dolphin/browser/bookmark/b/j;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Lcom/dolphin/browser/bookmark/b/j;->a()J

    move-result-wide v0

    .line 61
    const-wide/16 v6, -0xa

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    const-wide/16 v6, -0xb

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    move v1, v2

    .line 62
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    invoke-virtual {v5}, Lcom/dolphin/browser/bookmark/b/j;->c()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    iget-object v4, p0, Lcom/dolphin/browser/bookmark/b/d;->a:Landroid/content/Context;

    sget-object v6, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v6, 0x7f0e065d

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08023e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 74
    iget-boolean v4, p0, Lcom/dolphin/browser/bookmark/b/d;->e:Z

    if-eqz v4, :cond_2

    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 75
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/dolphin/browser/bookmark/b/d;->f:I

    if-ne p1, v1, :cond_3

    invoke-virtual {v5}, Lcom/dolphin/browser/bookmark/b/j;->a()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/dolphin/browser/bookmark/b/d;->g:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    .line 77
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/d;->b:I

    invoke-virtual {v5}, Lcom/dolphin/browser/bookmark/b/j;->d()I

    move-result v1

    iget v2, p0, Lcom/dolphin/browser/bookmark/b/d;->c:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/bookmark/b/d;->b:I

    invoke-virtual {p2, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 81
    return-void

    :cond_1
    move v1, v3

    .line 61
    goto :goto_0

    .line 74
    :cond_2
    const/16 v4, 0x8

    goto :goto_1

    :cond_3
    move v2, v3

    .line 75
    goto :goto_2
.end method


# virtual methods
.method public a(J)I
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/d;->getCount()I

    move-result v1

    .line 132
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/d;->a(I)Lcom/dolphin/browser/bookmark/b/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/b/j;->a()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 137
    :goto_1
    return v0

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/b/d;->g:J

    return-wide v0
.end method

.method public a(I)Lcom/dolphin/browser/bookmark/b/j;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/b/j;

    return-object v0
.end method

.method public a(ILandroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f0a0024

    .line 84
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    .line 85
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a016b

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 90
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 92
    if-nez p1, :cond_0

    .line 93
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02000d

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08023e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 104
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/util/bb;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    return-void

    .line 96
    :cond_0
    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060016

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0025

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(JI)V
    .locals 0

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/b/d;->g:J

    .line 142
    iput p3, p0, Lcom/dolphin/browser/bookmark/b/d;->f:I

    .line 143
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/dolphin/browser/bookmark/b/d;->e:Z

    .line 151
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/b/d;->a(I)Lcom/dolphin/browser/bookmark/b/j;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/b/d;->a(I)Lcom/dolphin/browser/bookmark/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/b/j;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/d;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030082

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmark/b/d;->b(ILandroid/view/View;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/bookmark/b/d;->a(ILandroid/view/View;)V

    .line 54
    return-object p2
.end method
