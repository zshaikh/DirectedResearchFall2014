.class public Ldolphin/preference/PreferenceScreen;
.super Ldolphin/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListAdapter;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010011

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 153
    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p0, v2}, Ldolphin/preference/PreferenceScreen;->a(Landroid/widget/ListView;)V

    .line 158
    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 159
    new-instance v4, Landroid/app/Dialog;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1030006

    :goto_0
    invoke-direct {v4, v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Ldolphin/preference/PreferenceScreen;->b:Landroid/app/Dialog;

    .line 162
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 163
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 167
    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 172
    :cond_1
    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0, v4}, Ldolphin/preference/z;->a(Landroid/content/DialogInterface;)V

    .line 174
    invoke-static {v4}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 175
    return-void

    .line 159
    :cond_2
    const v0, 0x1030005

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->g()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 141
    return-void
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public g()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ldolphin/preference/PreferenceScreen;->a:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->h()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/PreferenceScreen;->a:Landroid/widget/ListAdapter;

    .line 116
    :cond_0
    iget-object v0, p0, Ldolphin/preference/PreferenceScreen;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected h()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ldolphin/preference/v;

    invoke-direct {v0, p0}, Ldolphin/preference/v;-><init>(Ldolphin/preference/PreferenceGroup;)V

    return-object v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldolphin/preference/PreferenceScreen;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 268
    invoke-super {p0, p1}, Ldolphin/preference/PreferenceGroup;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 269
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 271
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02027b

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/PreferenceScreen;->b:Landroid/app/Dialog;

    .line 179
    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->getPreferenceManager()Ldolphin/preference/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldolphin/preference/z;->b(Landroid/content/DialogInterface;)V

    .line 180
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Ldolphin/preference/PreferenceScreen;->g()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 193
    instance-of v1, v0, Ldolphin/preference/Preference;

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    check-cast v0, Ldolphin/preference/Preference;

    .line 196
    invoke-virtual {v0, p0}, Ldolphin/preference/Preference;->performClick(Ldolphin/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 220
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ldolphin/preference/PreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    :cond_0
    invoke-super {p0, p1}, Ldolphin/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    check-cast p1, Ldolphin/preference/PreferenceScreen$SavedState;

    .line 227
    invoke-virtual {p1}, Ldolphin/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Ldolphin/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 228
    iget-boolean v0, p1, Ldolphin/preference/PreferenceScreen$SavedState;->a:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p1, Ldolphin/preference/PreferenceScreen$SavedState;->b:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Ldolphin/preference/PreferenceScreen;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 206
    invoke-super {p0}, Ldolphin/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 207
    iget-object v2, p0, Ldolphin/preference/PreferenceScreen;->b:Landroid/app/Dialog;

    .line 208
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 215
    :goto_0
    return-object v0

    .line 212
    :cond_1
    new-instance v0, Ldolphin/preference/PreferenceScreen$SavedState;

    invoke-direct {v0, v1}, Ldolphin/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, v0, Ldolphin/preference/PreferenceScreen$SavedState;->a:Z

    .line 214
    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Ldolphin/preference/PreferenceScreen$SavedState;->b:Landroid/os/Bundle;

    goto :goto_0
.end method
