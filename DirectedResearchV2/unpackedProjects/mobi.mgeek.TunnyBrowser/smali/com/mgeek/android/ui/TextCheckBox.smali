.class public Lcom/mgeek/android/ui/TextCheckBox;
.super Landroid/widget/CheckBox;
.source "TextCheckBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/TextCheckBox;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/TextCheckBox;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/TextCheckBox;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/mgeek/android/ui/TextCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 89
    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/mgeek/android/ui/TextCheckBox;->setPadding(IIII)V

    .line 90
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/TextCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 75
    invoke-direct {p0}, Lcom/mgeek/android/ui/TextCheckBox;->a()V

    .line 76
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-direct {p0}, Lcom/mgeek/android/ui/TextCheckBox;->a()V

    .line 69
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 82
    invoke-direct {p0}, Lcom/mgeek/android/ui/TextCheckBox;->a()V

    .line 83
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 61
    invoke-direct {p0}, Lcom/mgeek/android/ui/TextCheckBox;->a()V

    .line 62
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-direct {p0}, Lcom/mgeek/android/ui/TextCheckBox;->a()V

    .line 55
    return-void
.end method
