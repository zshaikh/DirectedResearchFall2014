.class public Ldolphin/preference/SingleChoiceGroupPreference;
.super Ldolphin/preference/GroupPreference;
.source "SingleChoiceGroupPreference.java"


# instance fields
.field protected a:[Ljava/lang/CharSequence;

.field protected b:[Ljava/lang/CharSequence;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010009

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/SingleChoiceGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/GroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Ldolphin/preference/am;

    invoke-direct {v0, p0}, Ldolphin/preference/am;-><init>(Ldolphin/preference/SingleChoiceGroupPreference;)V

    iput-object v0, p0, Ldolphin/preference/SingleChoiceGroupPreference;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/SingleChoiceGroupPreference;->a:[Ljava/lang/CharSequence;

    .line 39
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/SingleChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method

.method static synthetic a(Ldolphin/preference/SingleChoiceGroupPreference;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ldolphin/preference/SingleChoiceGroupPreference;->c:Ljava/lang/String;

    return-object v0
.end method

.method private i()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ldolphin/preference/SingleChoiceGroupPreference;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/preference/SingleChoiceGroupPreference;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01a0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 106
    invoke-virtual {p0}, Ldolphin/preference/SingleChoiceGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Ldolphin/preference/SingleChoiceGroupPreference;->a:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected a(Landroid/widget/ListView;)V
    .locals 2

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Ldolphin/preference/SingleChoiceGroupPreference;->i()I

    move-result v0

    .line 58
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Ldolphin/preference/SingleChoiceGroupPreference;->c:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Ldolphin/preference/SingleChoiceGroupPreference;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/SingleChoiceGroupPreference;->a(Landroid/widget/ListView;)V

    .line 113
    return-void
.end method

.method public a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 44
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entries & entry values error!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Ldolphin/preference/SingleChoiceGroupPreference;->a:[Ljava/lang/CharSequence;

    .line 50
    iput-object p2, p0, Ldolphin/preference/SingleChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    .line 51
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 116
    if-eqz p1, :cond_1

    iget-object v0, p0, Ldolphin/preference/SingleChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Ldolphin/preference/SingleChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 118
    iget-object v1, p0, Ldolphin/preference/SingleChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :goto_1
    return v0

    .line 117
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected e()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ldolphin/preference/SingleChoiceGroupPreference;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ldolphin/preference/SingleChoiceGroupPreference;->a:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ldolphin/preference/SingleChoiceGroupPreference;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldolphin/preference/SingleChoiceGroupPreference;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/preference/SingleChoiceGroupPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Ldolphin/preference/SingleChoiceGroupPreference;->a(Ljava/lang/String;)V

    .line 91
    return-void

    .line 90
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method
