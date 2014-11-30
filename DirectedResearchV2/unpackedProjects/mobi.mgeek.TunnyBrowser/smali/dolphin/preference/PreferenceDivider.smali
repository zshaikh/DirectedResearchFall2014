.class public Ldolphin/preference/PreferenceDivider;
.super Ldolphin/preference/Preference;
.source "PreferenceDivider.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010010

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/PreferenceDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->PreferenceDivider:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Ldolphin/preference/PreferenceDivider;->a:I

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 35
    iget v0, p0, Ldolphin/preference/PreferenceDivider;->a:I

    if-lez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 37
    iget v1, p0, Ldolphin/preference/PreferenceDivider;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    :cond_0
    return-void
.end method
