.class public Ldolphin/preference/ListPreference;
.super Ldolphin/preference/DialogPreference;
.source "ListPreference.java"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldolphin/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f01000b

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f01000b

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 56
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method static synthetic access$002(Ldolphin/preference/ListPreference;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Ldolphin/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 222
    if-eqz p1, :cond_1

    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 224
    iget-object v1, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    :goto_1
    return v0

    .line 223
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Ldolphin/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 212
    if-ltz v0, :cond_0

    iget-object v1, p0, Ldolphin/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Ldolphin/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
    iget-object v1, p0, Ldolphin/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    invoke-super {p0}, Ldolphin/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Ldolphin/preference/ListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSummaryValue()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onDialogClosed(Z)V

    .line 271
    if-eqz p1, :cond_0

    iget v0, p0, Ldolphin/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v1, p0, Ldolphin/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p0, v0}, Ldolphin/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0, v0}, Ldolphin/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 277
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 240
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    invoke-direct {p0}, Ldolphin/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Ldolphin/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 245
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Ldolphin/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Ldolphin/preference/n;

    invoke-direct {v2, p0}, Ldolphin/preference/n;-><init>(Ldolphin/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ldolphin/preference/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_1
    check-cast p1, Ldolphin/preference/ListPreference$SavedState;

    .line 311
    invoke-virtual {p1}, Ldolphin/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Ldolphin/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 312
    iget-object v0, p1, Ldolphin/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Ldolphin/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Ldolphin/preference/ListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    :goto_0
    return-object v0

    .line 297
    :cond_0
    new-instance v1, Ldolphin/preference/ListPreference$SavedState;

    invoke-direct {v1, v0}, Ldolphin/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 298
    invoke-virtual {p0}, Ldolphin/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    move-object v0, v1

    .line 299
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 286
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldolphin/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Ldolphin/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 287
    return-void

    .line 286
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Ldolphin/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ldolphin/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 84
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Ldolphin/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 112
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    if-nez p1, :cond_1

    iget-object v0, p0, Ldolphin/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldolphin/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Ldolphin/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, p1}, Ldolphin/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 141
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Ldolphin/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method
