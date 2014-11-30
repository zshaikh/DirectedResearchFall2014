.class public Ldolphin/preference/GroupPreference;
.super Ldolphin/preference/Preference;
.source "GroupPreference.java"


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010009

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/GroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300ba

    iput v0, p0, Ldolphin/preference/GroupPreference;->a:I

    .line 35
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->GroupPreference:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    iget v1, p0, Ldolphin/preference/GroupPreference;->a:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldolphin/preference/GroupPreference;->a:I

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method

.method static synthetic a(Ldolphin/preference/GroupPreference;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Ldolphin/preference/GroupPreference;->a:I

    return v0
.end method

.method private a(IILandroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f020278

    .line 112
    if-nez p1, :cond_0

    .line 113
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020277

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_0
    return-void

    .line 114
    :cond_0
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_2

    .line 115
    iget-object v0, p0, Ldolphin/preference/GroupPreference;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 116
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020274

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Ldolphin/preference/GroupPreference;IILandroid/view/View;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/GroupPreference;->a(IILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public final a()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ldolphin/preference/GroupPreference;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method protected a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected a(Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected d()Landroid/view/View;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 55
    if-eqz v0, :cond_3

    iget-object v1, p0, Ldolphin/preference/GroupPreference;->c:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/preference/GroupPreference;->c:Landroid/widget/ListView;

    if-eq v1, v0, :cond_3

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-virtual {p0}, Ldolphin/preference/GroupPreference;->d()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/GroupPreference;->b:Landroid/view/View;

    .line 58
    iget-object v1, p0, Ldolphin/preference/GroupPreference;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Ldolphin/preference/GroupPreference;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 63
    new-instance v1, Ldolphin/preference/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldolphin/preference/l;-><init>(Ldolphin/preference/GroupPreference;Ldolphin/preference/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    :cond_2
    invoke-virtual {p0}, Ldolphin/preference/GroupPreference;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 66
    invoke-virtual {p0}, Ldolphin/preference/GroupPreference;->e()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    invoke-virtual {p0}, Ldolphin/preference/GroupPreference;->c()V

    .line 68
    invoke-virtual {p0, v0}, Ldolphin/preference/GroupPreference;->a(Landroid/widget/ListView;)V

    .line 69
    iput-object v0, p0, Ldolphin/preference/GroupPreference;->c:Landroid/widget/ListView;

    .line 71
    :cond_3
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ldolphin/preference/GroupPreference;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Ldolphin/preference/GroupPreference;->c:Landroid/widget/ListView;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
