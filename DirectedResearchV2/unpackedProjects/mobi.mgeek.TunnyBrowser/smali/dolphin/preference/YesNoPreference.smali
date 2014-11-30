.class public Ldolphin/preference/YesNoPreference;
.super Ldolphin/preference/DialogPreference;
.source "YesNoPreference.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010016

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 64
    iput-boolean p1, p0, Ldolphin/preference/YesNoPreference;->a:Z

    .line 66
    invoke-virtual {p0, p1}, Ldolphin/preference/YesNoPreference;->persistBoolean(Z)Z

    .line 68
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Ldolphin/preference/YesNoPreference;->notifyDependencyChange(Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Ldolphin/preference/YesNoPreference;->a:Z

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onDialogClosed(Z)V

    .line 52
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/YesNoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Ldolphin/preference/YesNoPreference;->a(Z)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
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
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ldolphin/preference/YesNoPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    check-cast p1, Ldolphin/preference/YesNoPreference$SavedState;

    .line 118
    invoke-virtual {p1}, Ldolphin/preference/YesNoPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Ldolphin/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 119
    iget-boolean v0, p1, Ldolphin/preference/YesNoPreference$SavedState;->a:Z

    invoke-virtual {p0, v0}, Ldolphin/preference/YesNoPreference;->a(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Ldolphin/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Ldolphin/preference/YesNoPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    :goto_0
    return-object v0

    .line 104
    :cond_0
    new-instance v1, Ldolphin/preference/YesNoPreference$SavedState;

    invoke-direct {v1, v0}, Ldolphin/preference/YesNoPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 105
    invoke-virtual {p0}, Ldolphin/preference/YesNoPreference;->a()Z

    move-result v0

    iput-boolean v0, v1, Ldolphin/preference/YesNoPreference$SavedState;->a:Z

    move-object v0, v1

    .line 106
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Ldolphin/preference/YesNoPreference;->a:Z

    invoke-virtual {p0, v0}, Ldolphin/preference/YesNoPreference;->getPersistedBoolean(Z)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Ldolphin/preference/YesNoPreference;->a(Z)V

    .line 89
    return-void

    .line 87
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Ldolphin/preference/YesNoPreference;->a:Z

    if-eqz v0, :cond_0

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
