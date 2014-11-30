.class public abstract Ldolphin/preference/MultiChoiceGroupPreference;
.super Ldolphin/preference/GroupPreference;
.source "MultiChoiceGroupPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:[Z

.field private b:[Ljava/lang/CharSequence;

.field private c:[Ljava/lang/String;

.field private d:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f01000c

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/MultiChoiceGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/GroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->l()V

    .line 47
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/content/Context;Landroid/widget/CheckBox;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 109
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01a0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    iget-object v1, p0, Ldolphin/preference/MultiChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected a(Landroid/widget/Button;)V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a01a0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    return-void
.end method

.method protected a(Landroid/widget/ListView;)V
    .locals 3

    .prologue
    .line 88
    if-nez p1, :cond_1

    .line 95
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->j()[Z

    move-result-object v1

    .line 92
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 93
    aget-boolean v2, v1, v0

    invoke-virtual {p1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 138
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 161
    move v0, v1

    :goto_0
    iget-object v2, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 162
    iget-object v2, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->a()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 167
    :cond_0
    return v1

    .line 161
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs a([I)[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 171
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 172
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 173
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 174
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-object v1
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x2

    return v0
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 127
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 130
    iget-object v3, p0, Ldolphin/preference/MultiChoiceGroupPreference;->a:[Z

    iget-object v4, p0, Ldolphin/preference/MultiChoiceGroupPreference;->d:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {p0, v1, v2, v4}, Ldolphin/preference/MultiChoiceGroupPreference;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v3, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method protected d()Landroid/view/View;
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030032

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08011c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    invoke-virtual {p0, v0}, Ldolphin/preference/MultiChoiceGroupPreference;->a(Landroid/widget/Button;)V

    .line 76
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-object v1
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method protected abstract h()[Ljava/lang/CharSequence;
.end method

.method protected abstract i()[Ljava/lang/String;
.end method

.method protected abstract j()[Z
.end method

.method protected k()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move v0, v1

    .line 153
    :goto_0
    iget-object v3, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 154
    iget-object v3, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Ldolphin/preference/MultiChoiceGroupPreference;->a:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 157
    return v1
.end method

.method protected l()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->h()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->i()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->j()[Z

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->d:[Z

    .line 53
    iget-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->d:[Z

    if-nez v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Titles or keys or default values can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iget-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Ldolphin/preference/MultiChoiceGroupPreference;->d:[Z

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 57
    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The length of titles, keys and default values must be same."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    iget-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->c:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Ldolphin/preference/MultiChoiceGroupPreference;->a:[Z

    .line 60
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0, p1}, Ldolphin/preference/GroupPreference;->onBindView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08011c

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Ldolphin/preference/MultiChoiceGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    :cond_0
    return-void
.end method
