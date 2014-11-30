.class public abstract Ldolphin/preference/DialogPreference;
.super Ldolphin/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Ldolphin/preference/aa;


# static fields
.field private static final BUTTON_NONE:I = -0x5


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonBg:Landroid/graphics/drawable/Drawable;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mNegativeButtonTextColor:Landroid/content/res/ColorStateList;

.field private mPositiveButtonBg:Landroid/graphics/drawable/Drawable;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonTextColor:Landroid/content/res/ColorStateList;

.field private mReversePositiveNegetive:Z

.field private mTitleBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleDivider:Landroid/graphics/drawable/Drawable;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010005

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput-boolean v2, p0, Ldolphin/preference/DialogPreference;->mReversePositiveNegetive:Z

    .line 88
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 91
    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 97
    :cond_0
    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 100
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 101
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 102
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 103
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 104
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 105
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v1, 0x5

    iget v2, p0, Ldolphin/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldolphin/preference/DialogPreference;->mDialogLayoutResId:I

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Ldolphin/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 409
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    .line 413
    const/16 v0, 0x8

    .line 415
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 416
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 417
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_0
    const/4 v0, 0x0

    .line 423
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 424
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 434
    iput p2, p0, Ldolphin/preference/DialogPreference;->mWhichButtonClicked:I

    .line 435
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 392
    iget v0, p0, Ldolphin/preference/DialogPreference;->mDialogLayoutResId:I

    if-nez v0, :cond_0

    move-object v0, v1

    .line 398
    :goto_0
    return-object v0

    .line 396
    :cond_0
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 398
    iget v2, p0, Ldolphin/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldolphin/preference/z;->b(Ldolphin/preference/aa;)V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 442
    iget v1, p0, Ldolphin/preference/DialogPreference;->mWhichButtonClicked:I

    iget-boolean v0, p0, Ldolphin/preference/DialogPreference;->mReversePositiveNegetive:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->onDialogClosed(Z)V

    .line 444
    return-void

    .line 442
    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 497
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ldolphin/preference/DialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 499
    :cond_0
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 508
    :cond_1
    :goto_0
    return-void

    .line 503
    :cond_2
    check-cast p1, Ldolphin/preference/DialogPreference$SavedState;

    .line 504
    invoke-virtual {p1}, Ldolphin/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Ldolphin/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 505
    iget-boolean v0, p1, Ldolphin/preference/DialogPreference$SavedState;->a:Z

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p1, Ldolphin/preference/DialogPreference$SavedState;->b:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 484
    invoke-super {p0}, Ldolphin/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 485
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 492
    :goto_0
    return-object v0

    .line 489
    :cond_1
    new-instance v0, Ldolphin/preference/DialogPreference$SavedState;

    invoke-direct {v0, v1}, Ldolphin/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 490
    const/4 v1, 0x1

    iput-boolean v1, v0, Ldolphin/preference/DialogPreference$SavedState;->a:Z

    .line 491
    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Ldolphin/preference/DialogPreference$SavedState;->b:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method protected requestInputMethod(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->isSmallScreenDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public reversePositiveNegetive()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/DialogPreference;->mReversePositiveNegetive:Z

    .line 431
    return-void
.end method

.method public setDialogIcon(I)V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 195
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Ldolphin/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 185
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Ldolphin/preference/DialogPreference;->mDialogLayoutResId:I

    .line 287
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Ldolphin/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 160
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Ldolphin/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 130
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Ldolphin/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 258
    return-void
.end method

.method public setNegetiveButtonTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 232
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "backgroud and text color can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    iput-object p1, p0, Ldolphin/preference/DialogPreference;->mNegativeButtonBg:Landroid/graphics/drawable/Drawable;

    .line 236
    iput-object p2, p0, Ldolphin/preference/DialogPreference;->mNegativeButtonTextColor:Landroid/content/res/ColorStateList;

    .line 237
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Ldolphin/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 213
    return-void
.end method

.method public setPositiveButtonTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 224
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "backgroud and text color can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    iput-object p1, p0, Ldolphin/preference/DialogPreference;->mPositiveButtonBg:Landroid/graphics/drawable/Drawable;

    .line 228
    iput-object p2, p0, Ldolphin/preference/DialogPreference;->mPositiveButtonTextColor:Landroid/content/res/ColorStateList;

    .line 229
    return-void
.end method

.method public setTitleBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Ldolphin/preference/DialogPreference;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    .line 121
    return-void
.end method

.method public setTitleDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Ldolphin/preference/DialogPreference;->mTitleDivider:Landroid/graphics/drawable/Drawable;

    .line 117
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 322
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 324
    const/4 v1, -0x5

    iput v1, p0, Ldolphin/preference/DialogPreference;->mWhichButtonClicked:I

    .line 326
    new-instance v1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldolphin/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 327
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 328
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 329
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    check-cast v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 330
    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mTitleDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 331
    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->b(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 332
    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Ldolphin/preference/DialogPreference;->mPositiveButtonBg:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Ldolphin/preference/DialogPreference;->mPositiveButtonTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 333
    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Ldolphin/preference/DialogPreference;->mNegativeButtonBg:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Ldolphin/preference/DialogPreference;->mNegativeButtonTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 334
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 337
    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 342
    :goto_0
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 344
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldolphin/preference/z;->a(Ldolphin/preference/aa;)V

    .line 347
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Ldolphin/preference/DialogPreference;->needInputMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {p0, v0}, Ldolphin/preference/DialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 354
    :cond_1
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 355
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 356
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 357
    return-void

    .line 339
    :cond_2
    iget-object v0, p0, Ldolphin/preference/DialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ldolphin/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
