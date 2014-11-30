.class public Ldolphin/preference/CheckBoxPreference;
.super Ldolphin/preference/Preference;
.source "CheckBoxPreference.java"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/accessibility/AccessibilityManager;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010004

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/CheckBoxPreference;->a:Ljava/lang/CharSequence;

    .line 71
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/CheckBoxPreference;->b:Ljava/lang/CharSequence;

    .line 72
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ldolphin/preference/CheckBoxPreference;->f:Z

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-virtual {p0}, Ldolphin/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Ldolphin/preference/CheckBoxPreference;->e:Landroid/view/accessibility/AccessibilityManager;

    .line 78
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Ldolphin/preference/CheckBoxPreference;->c:Z

    if-eq v0, p1, :cond_0

    .line 180
    iput-boolean p1, p0, Ldolphin/preference/CheckBoxPreference;->c:Z

    .line 181
    invoke-virtual {p0, p1}, Ldolphin/preference/CheckBoxPreference;->persistBoolean(Z)Z

    .line 182
    invoke-virtual {p0}, Ldolphin/preference/CheckBoxPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Ldolphin/preference/CheckBoxPreference;->notifyDependencyChange(Z)V

    .line 183
    invoke-virtual {p0}, Ldolphin/preference/CheckBoxPreference;->notifyChanged()V

    .line 185
    :cond_0
    return-void
.end method

.method protected a(ZZ)V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Ldolphin/preference/CheckBoxPreference;->a(Z)V

    .line 171
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Ldolphin/preference/CheckBoxPreference;->c:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 104
    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v2, p0, Ldolphin/preference/CheckBoxPreference;->c:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object v0, v1

    .line 105
    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->invalidate()V

    .line 111
    iget-boolean v0, p0, Ldolphin/preference/CheckBoxPreference;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/preference/CheckBoxPreference;->e:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/preference/CheckBoxPreference;->d:Z

    .line 116
    const/4 v0, 0x1

    .line 117
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 150
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-super {p0}, Ldolphin/preference/Preference;->onClick()V

    .line 156
    invoke-virtual {p0}, Ldolphin/preference/CheckBoxPreference;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 160
    :goto_0
    iput-boolean v1, p0, Ldolphin/preference/CheckBoxPreference;->d:Z

    .line 162
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Ldolphin/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    :goto_1
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0, v0, v1}, Ldolphin/preference/CheckBoxPreference;->a(ZZ)V

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    instance-of v2, v0, Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 93
    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Ldolphin/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v3, v3, v2, v3}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    return-object v1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 305
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ldolphin/preference/CheckBoxPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_1
    check-cast p1, Ldolphin/preference/CheckBoxPreference$SavedState;

    .line 312
    invoke-virtual {p1}, Ldolphin/preference/CheckBoxPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Ldolphin/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 313
    iget-boolean v0, p1, Ldolphin/preference/CheckBoxPreference$SavedState;->a:Z

    invoke-virtual {p0, v0}, Ldolphin/preference/CheckBoxPreference;->a(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Ldolphin/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Ldolphin/preference/CheckBoxPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    :goto_0
    return-object v0

    .line 298
    :cond_0
    new-instance v1, Ldolphin/preference/CheckBoxPreference$SavedState;

    invoke-direct {v1, v0}, Ldolphin/preference/CheckBoxPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 299
    invoke-virtual {p0}, Ldolphin/preference/CheckBoxPreference;->a()Z

    move-result v0

    iput-boolean v0, v1, Ldolphin/preference/CheckBoxPreference$SavedState;->a:Z

    move-object v0, v1

    .line 300
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 286
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Ldolphin/preference/CheckBoxPreference;->c:Z

    invoke-virtual {p0, v0}, Ldolphin/preference/CheckBoxPreference;->getPersistedBoolean(Z)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Ldolphin/preference/CheckBoxPreference;->a(Z)V

    .line 288
    return-void

    .line 286
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 198
    iget-boolean v2, p0, Ldolphin/preference/CheckBoxPreference;->f:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Ldolphin/preference/CheckBoxPreference;->c:Z

    .line 199
    :goto_0
    if-nez v2, :cond_0

    invoke-super {p0}, Ldolphin/preference/Preference;->shouldDisableDependents()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 198
    :cond_2
    iget-boolean v2, p0, Ldolphin/preference/CheckBoxPreference;->c:Z

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0
.end method
