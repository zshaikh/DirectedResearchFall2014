.class public Ldolphin/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBaseMethodCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldolphin/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mHasSpecifiedLayout:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Ldolphin/preference/q;

.field private mOnChangeListener:Ldolphin/preference/r;

.field private mOnClickListener:Ldolphin/preference/s;

.field private mOrder:I

.field private mOverrideAnimationRequested:Z

.field private mPersistent:Z

.field private mPreferenceManager:Ldolphin/preference/z;

.field private mPrimaryTextColor:Landroid/content/res/ColorStateList;

.field private mRequiresKey:Z

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldolphin/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const v0, 0x7fffffff

    iput v0, p0, Ldolphin/preference/Preference;->mOrder:I

    .line 100
    iput-boolean v4, p0, Ldolphin/preference/Preference;->mEnabled:Z

    .line 101
    iput-boolean v4, p0, Ldolphin/preference/Preference;->mSelectable:Z

    .line 103
    iput-boolean v4, p0, Ldolphin/preference/Preference;->mPersistent:Z

    .line 106
    iput-boolean v4, p0, Ldolphin/preference/Preference;->mDependencyMet:Z

    .line 113
    iput-boolean v4, p0, Ldolphin/preference/Preference;->mShouldDisableView:Z

    .line 115
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300b3

    iput v0, p0, Ldolphin/preference/Preference;->mLayoutResId:I

    .line 117
    iput-boolean v5, p0, Ldolphin/preference/Preference;->mHasSpecifiedLayout:Z

    .line 125
    iput-boolean v4, p0, Ldolphin/preference/Preference;->mOverrideAnimationRequested:Z

    .line 203
    iput-object p1, p0, Ldolphin/preference/Preference;->mContext:Landroid/content/Context;

    .line 205
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_f

    .line 208
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 209
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    if-nez v2, :cond_1

    .line 210
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    .line 207
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 211
    :cond_1
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    if-ne v2, v4, :cond_2

    .line 212
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 213
    :cond_2
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldolphin/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 215
    :cond_3
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 216
    iget v3, p0, Ldolphin/preference/Preference;->mOrder:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ldolphin/preference/Preference;->mOrder:I

    goto :goto_1

    .line 217
    :cond_4
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 218
    iget v3, p0, Ldolphin/preference/Preference;->mLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Ldolphin/preference/Preference;->mLayoutResId:I

    goto :goto_1

    .line 219
    :cond_5
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 220
    iget v3, p0, Ldolphin/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Ldolphin/preference/Preference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 221
    :cond_6
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 222
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ldolphin/preference/Preference;->mEnabled:Z

    goto :goto_1

    .line 223
    :cond_7
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 224
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ldolphin/preference/Preference;->mSelectable:Z

    goto :goto_1

    .line 225
    :cond_8
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 226
    iget-boolean v3, p0, Ldolphin/preference/Preference;->mPersistent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ldolphin/preference/Preference;->mPersistent:Z

    goto :goto_1

    .line 227
    :cond_9
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 228
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldolphin/preference/Preference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    .line 229
    :cond_a
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    .line 230
    invoke-virtual {p0, v1, v2}, Ldolphin/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ldolphin/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 231
    :cond_b
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v3, 0xb

    if-ne v2, v3, :cond_c

    .line 232
    iget-boolean v3, p0, Ldolphin/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ldolphin/preference/Preference;->mShouldDisableView:Z

    goto/16 :goto_1

    .line 233
    :cond_c
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v3, 0xc

    if-ne v2, v3, :cond_d

    .line 234
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 235
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Ldolphin/preference/Preference;->mBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 236
    :cond_d
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v3, 0xd

    if-ne v2, v3, :cond_e

    .line 237
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 238
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Ldolphin/preference/Preference;->mPrimaryTextColor:Landroid/content/res/ColorStateList;

    goto/16 :goto_1

    .line 239
    :cond_e
    sget-object v3, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 240
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 241
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Ldolphin/preference/Preference;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    goto/16 :goto_1

    .line 244
    :cond_f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 2

    .prologue
    .line 1187
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1188
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldolphin/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1189
    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1190
    const/4 v0, 0x0

    iget-object v1, p0, Ldolphin/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ldolphin/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1195
    :cond_1
    :goto_0
    return-void

    .line 1193
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldolphin/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 3

    .prologue
    .line 1022
    iget-object v0, p0, Ldolphin/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1024
    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 1025
    if-eqz v0, :cond_1

    .line 1026
    invoke-direct {v0, p0}, Ldolphin/preference/Preference;->registerDependent(Ldolphin/preference/Preference;)V

    goto :goto_0

    .line 1028
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerDependent(Ldolphin/preference/Preference;)V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Ldolphin/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/preference/Preference;->mDependents:Ljava/util/List;

    .line 1074
    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Ldolphin/preference/Preference;->onDependencyChanged(Ldolphin/preference/Preference;Z)V

    .line 1077
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 475
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 476
    check-cast p1, Landroid/view/ViewGroup;

    .line 477
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 478
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ldolphin/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 477
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 481
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1221
    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Ldolphin/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Ldolphin/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ldolphin/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Ldolphin/preference/Preference;

    move-result-object v0

    .line 1036
    if-eqz v0, :cond_0

    .line 1037
    invoke-direct {v0, p0}, Ldolphin/preference/Preference;->unregisterDependent(Ldolphin/preference/Preference;)V

    .line 1040
    :cond_0
    return-void
.end method

.method private unregisterDependent(Ldolphin/preference/Preference;)V
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Ldolphin/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Ldolphin/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1091
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Ldolphin/preference/Preference;->mOnChangeListener:Ldolphin/preference/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mOnChangeListener:Ldolphin/preference/r;

    invoke-interface {v0, p0, p1}, Ldolphin/preference/r;->a(Ldolphin/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Ldolphin/preference/Preference;)I
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 941
    iget v0, p0, Ldolphin/preference/Preference;->mOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ldolphin/preference/Preference;->mOrder:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Ldolphin/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_1

    .line 944
    :cond_0
    iget v0, p0, Ldolphin/preference/Preference;->mOrder:I

    iget v1, p1, Ldolphin/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 951
    :goto_0
    return v0

    .line 945
    :cond_1
    iget-object v0, p0, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 946
    const/4 v0, 0x1

    goto :goto_0

    .line 947
    :cond_2
    iget-object v0, p1, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 948
    const/4 v0, -0x1

    goto :goto_0

    .line 951
    :cond_3
    iget-object v0, p0, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/mgeek/android/util/c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 77
    check-cast p1, Ldolphin/preference/Preference;

    invoke-virtual {p0, p1}, Ldolphin/preference/Preference;->compareTo(Ldolphin/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1562
    invoke-virtual {p0}, Ldolphin/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1564
    if-eqz v0, :cond_0

    .line 1565
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldolphin/preference/Preference;->mBaseMethodCalled:Z

    .line 1566
    invoke-virtual {p0, v0}, Ldolphin/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1567
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mBaseMethodCalled:Z

    if-nez v0, :cond_0

    .line 1568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1573
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1509
    invoke-virtual {p0}, Ldolphin/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1510
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/preference/Preference;->mBaseMethodCalled:Z

    .line 1511
    invoke-virtual {p0}, Ldolphin/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1512
    iget-boolean v1, p0, Ldolphin/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1513
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1516
    :cond_0
    if-eqz v0, :cond_1

    .line 1517
    iget-object v1, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1520
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Ldolphin/preference/Preference;
    .locals 1

    .prologue
    .line 1053
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    if-nez v0, :cond_1

    .line 1054
    :cond_0
    const/4 v0, 0x0

    .line 1057
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0, p1}, Ldolphin/preference/z;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Ldolphin/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Ldolphin/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    if-nez v0, :cond_0

    .line 911
    const/4 v0, 0x0

    .line 914
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1471
    invoke-virtual {p0}, Ldolphin/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1472
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1475
    :cond_0
    invoke-virtual {p0}, Ldolphin/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1476
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1479
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1483
    :cond_2
    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 666
    iget-wide v0, p0, Ldolphin/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Ldolphin/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Ldolphin/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Ldolphin/preference/r;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Ldolphin/preference/Preference;->mOnChangeListener:Ldolphin/preference/r;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Ldolphin/preference/s;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Ldolphin/preference/Preference;->mOnClickListener:Ldolphin/preference/s;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Ldolphin/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2

    .prologue
    .line 1442
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1446
    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2

    .prologue
    .line 1310
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 2

    .prologue
    .line 1398
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    :goto_0
    return-wide p1

    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1266
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Ldolphin/preference/z;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    if-nez v0, :cond_0

    .line 884
    const/4 v0, 0x0

    .line 887
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Ldolphin/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    invoke-virtual {p0, p2}, Ldolphin/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 391
    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Ldolphin/preference/Preference;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :cond_1
    invoke-virtual {p0, p1}, Ldolphin/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 395
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Ldolphin/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSpecifiedLayout()Z
    .locals 1

    .prologue
    .line 1450
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mHasSpecifiedLayout:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldolphin/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Ldolphin/preference/Preference;->mListener:Ldolphin/preference/q;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Ldolphin/preference/Preference;->mListener:Ldolphin/preference/q;

    invoke-interface {v0, p0}, Ldolphin/preference/q;->a(Ldolphin/preference/Preference;)V

    .line 972
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    .prologue
    .line 1101
    iget-object v2, p0, Ldolphin/preference/Preference;->mDependents:Ljava/util/List;

    .line 1103
    if-nez v2, :cond_1

    .line 1111
    :cond_0
    return-void

    .line 1107
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1108
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1109
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/preference/Preference;

    invoke-virtual {v0, p0, p1}, Ldolphin/preference/Preference;->onDependencyChanged(Ldolphin/preference/Preference;Z)V

    .line 1108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Ldolphin/preference/Preference;->mListener:Ldolphin/preference/q;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Ldolphin/preference/Preference;->mListener:Ldolphin/preference/q;

    invoke-interface {v0, p0}, Ldolphin/preference/q;->b(Ldolphin/preference/Preference;)V

    .line 983
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1017
    invoke-direct {p0}, Ldolphin/preference/Preference;->registerDependency()V

    .line 1018
    return-void
.end method

.method protected onAttachedToHierarchy(Ldolphin/preference/z;)V
    .locals 2

    .prologue
    .line 1001
    iput-object p1, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    .line 1003
    invoke-virtual {p1}, Ldolphin/preference/z;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/preference/Preference;->mId:J

    .line 1005
    invoke-direct {p0}, Ldolphin/preference/Preference;->dispatchSetInitialValue()V

    .line 1006
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 437
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 438
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Ldolphin/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v1, p0, Ldolphin/preference/Preference;->mPrimaryTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Ldolphin/preference/Preference;->mPrimaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 445
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 446
    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {p0}, Ldolphin/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 448
    iget-object v2, p0, Ldolphin/preference/Preference;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Ldolphin/preference/Preference;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 451
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 452
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    :cond_2
    invoke-virtual {p0}, Ldolphin/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_3
    :goto_0
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mShouldDisableView:Z

    if-eqz v0, :cond_4

    .line 465
    invoke-virtual {p0}, Ldolphin/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Ldolphin/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 467
    :cond_4
    return-void

    .line 458
    :cond_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 459
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Ldolphin/preference/Preference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 415
    iget v1, p0, Ldolphin/preference/Preference;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 417
    iget v1, p0, Ldolphin/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v1, :cond_0

    .line 418
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802ac

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 419
    iget v3, p0, Ldolphin/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 422
    :cond_0
    return-object v2
.end method

.method public onDependencyChanged(Ldolphin/preference/Preference;Z)V
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1121
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ldolphin/preference/Preference;->mDependencyMet:Z

    .line 1124
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Ldolphin/preference/Preference;->notifyDependencyChange(Z)V

    .line 1126
    invoke-virtual {p0}, Ldolphin/preference/Preference;->notifyChanged()V

    .line 1128
    :cond_0
    return-void

    .line 1121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1171
    invoke-direct {p0}, Ldolphin/preference/Preference;->unregisterDependency()V

    .line 1172
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1586
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/Preference;->mBaseMethodCalled:Z

    .line 1587
    sget-object v0, Ldolphin/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1590
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1535
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/Preference;->mBaseMethodCalled:Z

    .line 1536
    sget-object v0, Ldolphin/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1215
    return-void
.end method

.method public performClick(Ldolphin/preference/PreferenceScreen;)V
    .locals 2

    .prologue
    .line 819
    invoke-virtual {p0}, Ldolphin/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    invoke-virtual {p0}, Ldolphin/preference/Preference;->onClick()V

    .line 825
    iget-object v0, p0, Ldolphin/preference/Preference;->mOnClickListener:Ldolphin/preference/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldolphin/preference/Preference;->mOnClickListener:Ldolphin/preference/s;

    invoke-interface {v0, p0}, Ldolphin/preference/s;->a(Ldolphin/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    :cond_2
    invoke-virtual {p0}, Ldolphin/preference/Preference;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    .line 830
    if-eqz v0, :cond_3

    .line 831
    invoke-virtual {v0}, Ldolphin/preference/z;->h()Ldolphin/preference/ad;

    move-result-object v0

    .line 833
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p0}, Ldolphin/preference/ad;->a(Ldolphin/preference/PreferenceScreen;Ldolphin/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    :cond_3
    iget-object v0, p0, Ldolphin/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p0}, Ldolphin/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 841
    iget-boolean v1, p0, Ldolphin/preference/Preference;->mOverrideAnimationRequested:Z

    if-eqz v1, :cond_4

    .line 842
    iget-object v1, p0, Ldolphin/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/mgeek/android/util/t;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 845
    :cond_4
    :try_start_0
    iget-object v1, p0, Ldolphin/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1416
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1417
    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Ldolphin/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1427
    :goto_0
    return v1

    .line 1422
    :cond_1
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1423
    iget-object v2, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1424
    invoke-direct {p0, v0}, Ldolphin/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1427
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1328
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    const/high16 v1, 0x7fc00000

    invoke-virtual {p0, v1}, Ldolphin/preference/Preference;->getPersistedFloat(F)F

    move-result v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 1339
    :goto_0
    return v0

    .line 1334
    :cond_0
    iget-object v1, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v1}, Ldolphin/preference/z;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1335
    iget-object v2, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1336
    invoke-direct {p0, v1}, Ldolphin/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1284
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1285
    xor-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ldolphin/preference/Preference;->getPersistedInt(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1295
    :goto_0
    return v0

    .line 1290
    :cond_0
    iget-object v1, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v1}, Ldolphin/preference/z;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1291
    iget-object v2, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1292
    invoke-direct {p0, v1}, Ldolphin/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1372
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1373
    const-wide/16 v1, -0x1

    xor-long/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Ldolphin/preference/Preference;->getPersistedLong(J)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 1383
    :goto_0
    return v0

    .line 1378
    :cond_0
    iget-object v1, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v1}, Ldolphin/preference/z;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1379
    iget-object v2, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1380
    invoke-direct {p0, v1}, Ldolphin/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1383
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1237
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ldolphin/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1249
    :goto_0
    return v0

    .line 1244
    :cond_0
    iget-object v1, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v1}, Ldolphin/preference/z;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1245
    iget-object v2, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1246
    invoke-direct {p0, v1}, Ldolphin/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/Preference;->mRequiresKey:Z

    .line 715
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1548
    invoke-virtual {p0, p1}, Ldolphin/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1549
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1495
    invoke-virtual {p0, p1}, Ldolphin/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1496
    return-void
.end method

.method public setBackgroudDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1621
    iput-object p1, p0, Ldolphin/preference/Preference;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1622
    return-void
.end method

.method public setBackgroudResource(I)V
    .locals 1

    .prologue
    .line 1629
    if-gtz p1, :cond_0

    .line 1630
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/Preference;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1634
    :goto_0
    return-void

    .line 1632
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/Preference;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1182
    iput-object p1, p0, Ldolphin/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1183
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1148
    invoke-direct {p0}, Ldolphin/preference/Preference;->unregisterDependency()V

    .line 1151
    iput-object p1, p0, Ldolphin/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1152
    invoke-direct {p0}, Ldolphin/preference/Preference;->registerDependency()V

    .line 1153
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 595
    iput-boolean p1, p0, Ldolphin/preference/Preference;->mEnabled:Z

    .line 598
    invoke-virtual {p0}, Ldolphin/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Ldolphin/preference/Preference;->notifyDependencyChange(Z)V

    .line 600
    invoke-virtual {p0}, Ldolphin/preference/Preference;->notifyChanged()V

    .line 602
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Ldolphin/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 304
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 685
    iput-object p1, p0, Ldolphin/preference/Preference;->mKey:Ljava/lang/String;

    .line 687
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldolphin/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Ldolphin/preference/Preference;->requireKey()V

    .line 690
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Ldolphin/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/Preference;->mHasSpecifiedLayout:Z

    .line 335
    :cond_0
    iput p1, p0, Ldolphin/preference/Preference;->mLayoutResId:I

    .line 336
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Ldolphin/preference/q;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Ldolphin/preference/Preference;->mListener:Ldolphin/preference/q;

    .line 963
    return-void
.end method

.method public setOnPreferenceChangeListener(Ldolphin/preference/r;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Ldolphin/preference/Preference;->mOnChangeListener:Ldolphin/preference/r;

    .line 780
    return-void
.end method

.method public setOnPreferenceClickListener(Ldolphin/preference/s;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Ldolphin/preference/Preference;->mOnClickListener:Ldolphin/preference/s;

    .line 799
    return-void
.end method

.method public setOrder(I)V
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Ldolphin/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 498
    iput p1, p0, Ldolphin/preference/Preference;->mOrder:I

    .line 501
    invoke-virtual {p0}, Ldolphin/preference/Preference;->notifyHierarchyChanged()V

    .line 503
    :cond_0
    return-void
.end method

.method public setOverrideActivityAnimationRequested(Z)V
    .locals 0

    .prologue
    .line 517
    iput-boolean p1, p0, Ldolphin/preference/Preference;->mOverrideAnimationRequested:Z

    .line 518
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    .prologue
    .line 757
    iput-boolean p1, p0, Ldolphin/preference/Preference;->mPersistent:Z

    .line 758
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Ldolphin/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 620
    iput-boolean p1, p0, Ldolphin/preference/Preference;->mSelectable:Z

    .line 621
    invoke-virtual {p0}, Ldolphin/preference/Preference;->notifyChanged()V

    .line 623
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0

    .prologue
    .line 646
    iput-boolean p1, p0, Ldolphin/preference/Preference;->mShouldDisableView:Z

    .line 647
    invoke-virtual {p0}, Ldolphin/preference/Preference;->notifyChanged()V

    .line 648
    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Ldolphin/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 571
    if-nez p1, :cond_0

    iget-object v0, p0, Ldolphin/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Ldolphin/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 572
    :cond_1
    iput-object p1, p0, Ldolphin/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 573
    invoke-virtual {p0}, Ldolphin/preference/Preference;->notifyChanged()V

    .line 575
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Ldolphin/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 543
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 529
    if-nez p1, :cond_0

    iget-object v0, p0, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 530
    :cond_1
    iput-object p1, p0, Ldolphin/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 531
    invoke-virtual {p0}, Ldolphin/preference/Preference;->notifyChanged()V

    .line 533
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Ldolphin/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/preference/Preference;->mHasSpecifiedLayout:Z

    .line 362
    :cond_0
    iput p1, p0, Ldolphin/preference/Preference;->mWidgetLayoutResId:I

    .line 363
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    if-nez v0, :cond_0

    .line 927
    const/4 v0, 0x0

    .line 930
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    invoke-virtual {v0}, Ldolphin/preference/z;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1137
    invoke-virtual {p0}, Ldolphin/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Ldolphin/preference/Preference;->mPreferenceManager:Ldolphin/preference/z;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldolphin/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldolphin/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1455
    invoke-virtual {p0}, Ldolphin/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
