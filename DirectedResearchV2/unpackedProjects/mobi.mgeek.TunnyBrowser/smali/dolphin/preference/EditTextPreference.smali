.class public Ldolphin/preference/EditTextPreference;
.super Ldolphin/preference/DialogPreference;
.source "EditTextPreference.java"


# instance fields
.field protected a:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010007

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->EditTextPreference:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 68
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300b8

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/EditTextPreference;->c:Landroid/view/View;

    .line 70
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->c:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0800f4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ldolphin/preference/EditTextPreference;->a:Landroid/widget/EditText;

    .line 72
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->c:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldolphin/preference/EditTextPreference;->d:Landroid/widget/TextView;

    .line 74
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_0
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Ldolphin/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->a:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 97
    invoke-virtual {p0}, Ldolphin/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 98
    invoke-virtual {p0}, Ldolphin/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 99
    iget-object v2, p0, Ldolphin/preference/EditTextPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 100
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->a:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0095

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 102
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Ldolphin/preference/EditTextPreference;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Ldolphin/preference/EditTextPreference;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0044

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v1, p0, Ldolphin/preference/EditTextPreference;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 161
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 163
    if-eqz v0, :cond_0

    .line 164
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 167
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Ldolphin/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 120
    iput-object p1, p0, Ldolphin/preference/EditTextPreference;->b:Ljava/lang/String;

    .line 122
    invoke-virtual {p0, p1}, Ldolphin/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 124
    invoke-virtual {p0}, Ldolphin/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 125
    if-eq v1, v0, :cond_0

    .line 126
    invoke-virtual {p0, v1}, Ldolphin/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public b()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->a:Landroid/widget/EditText;

    .line 144
    invoke-virtual {p0}, Ldolphin/preference/EditTextPreference;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 147
    if-eq v0, p1, :cond_1

    .line 148
    if-eqz v0, :cond_0

    .line 149
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Ldolphin/preference/EditTextPreference;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    :cond_0
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Ldolphin/preference/EditTextPreference;->a(Landroid/view/View;Landroid/view/View;)V

    .line 153
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onDialogClosed(Z)V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p0, v0}, Ldolphin/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0, v0}, Ldolphin/preference/EditTextPreference;->a(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 227
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ldolphin/preference/EditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_1
    check-cast p1, Ldolphin/preference/EditTextPreference$SavedState;

    .line 234
    invoke-virtual {p1}, Ldolphin/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Ldolphin/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 235
    iget-object v0, p1, Ldolphin/preference/EditTextPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/preference/EditTextPreference;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Ldolphin/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Ldolphin/preference/EditTextPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return-object v0

    .line 220
    :cond_0
    new-instance v1, Ldolphin/preference/EditTextPreference$SavedState;

    invoke-direct {v1, v0}, Ldolphin/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 221
    invoke-virtual {p0}, Ldolphin/preference/EditTextPreference;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/preference/EditTextPreference$SavedState;->a:Ljava/lang/String;

    move-object v0, v1

    .line 222
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 188
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Ldolphin/preference/EditTextPreference;->a(Ljava/lang/String;)V

    .line 189
    return-void

    .line 188
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Ldolphin/preference/EditTextPreference;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ldolphin/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
