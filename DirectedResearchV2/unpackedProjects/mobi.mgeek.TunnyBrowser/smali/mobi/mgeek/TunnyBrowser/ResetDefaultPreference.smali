.class public Lmobi/mgeek/TunnyBrowser/ResetDefaultPreference;
.super Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;
.source "ResetDefaultPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/ResetDefaultPreference;->setTitleDivider(Landroid/graphics/drawable/Drawable;)V

    .line 24
    new-array v1, v5, [[I

    .line 25
    new-array v2, v5, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 28
    new-array v2, v5, [I

    .line 29
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0020

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    aput v3, v2, v4

    .line 30
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200b0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0, v3}, Lmobi/mgeek/TunnyBrowser/ResetDefaultPreference;->setNegetiveButtonTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 31
    return-void
.end method
