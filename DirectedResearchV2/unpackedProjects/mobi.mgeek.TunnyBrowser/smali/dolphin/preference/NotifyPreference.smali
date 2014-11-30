.class public Ldolphin/preference/NotifyPreference;
.super Ldolphin/preference/Preference;
.source "NotifyPreference.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f01000d

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/preference/NotifyPreference;->c:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 41
    iget-boolean v0, p0, Ldolphin/preference/NotifyPreference;->c:Z

    if-ne v0, p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iput-boolean p1, p0, Ldolphin/preference/NotifyPreference;->c:Z

    .line 45
    iget-object v0, p0, Ldolphin/preference/NotifyPreference;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Ldolphin/preference/NotifyPreference;->a:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 26
    iget-object v0, p0, Ldolphin/preference/NotifyPreference;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 27
    invoke-super {p0, p1}, Ldolphin/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 28
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 29
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 30
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020302

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-boolean v0, p0, Ldolphin/preference/NotifyPreference;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 33
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v4, 0x7f02027b

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iput-object v2, p0, Ldolphin/preference/NotifyPreference;->a:Landroid/view/View;

    .line 35
    iput-object v1, p0, Ldolphin/preference/NotifyPreference;->b:Landroid/view/View;

    .line 37
    :cond_0
    iget-object v0, p0, Ldolphin/preference/NotifyPreference;->b:Landroid/view/View;

    return-object v0

    .line 31
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
