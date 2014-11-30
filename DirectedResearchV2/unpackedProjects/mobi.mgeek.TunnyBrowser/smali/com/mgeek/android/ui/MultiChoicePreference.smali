.class public abstract Lcom/mgeek/android/ui/MultiChoicePreference;
.super Ldolphin/preference/DialogPreference;
.source "MultiChoicePreference.java"


# instance fields
.field private a:[Z

.field private b:[Ljava/lang/CharSequence;

.field private c:[Ljava/lang/String;

.field private d:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ldolphin/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->e()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->e()V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/MultiChoicePreference;)[Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->a:[Z

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->a()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->b:[Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->b()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->c()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->d:[Z

    .line 69
    iget-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->b:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->d:[Z

    if-nez v0, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Titles or keys or default values can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->d:[Z

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 73
    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The length of titles, keys and default values must be same."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->a:[Z

    .line 76
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 82
    iget-object v3, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->a:[Z

    iget-object v4, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->d:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {p0, v1, v2, v4}, Lcom/mgeek/android/ui/MultiChoicePreference;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v3, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 90
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->a:[Z

    aget-boolean v1, v1, v0

    .line 107
    :cond_0
    return v1

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract a()[Ljava/lang/CharSequence;
.end method

.method public varargs a([I)[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 131
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 132
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 133
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 134
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object v1
.end method

.method protected abstract b()[Ljava/lang/String;
.end method

.method protected abstract c()[Z
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 95
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->a:[Z

    aget-boolean v3, v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 99
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onDialogClosed(Z)V

    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->d()V

    .line 128
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 113
    invoke-direct {p0}, Lcom/mgeek/android/ui/MultiChoicePreference;->f()V

    .line 114
    iget-object v0, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->b:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/mgeek/android/ui/MultiChoicePreference;->a:[Z

    new-instance v2, Lcom/mgeek/android/ui/al;

    invoke-direct {v2, p0}, Lcom/mgeek/android/ui/al;-><init>(Lcom/mgeek/android/ui/MultiChoicePreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    return-void
.end method
