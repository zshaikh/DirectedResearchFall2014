.class public Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;
.super Ldolphin/preference/MultiChoiceGroupPreference;
.source "ClearDataGroupPreference.java"


# instance fields
.field a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ldolphin/preference/MultiChoiceGroupPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cn;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/cn;-><init>(Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->a:Ljava/lang/Runnable;

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/Button;)V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0177

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 79
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00f3

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 80
    return-void
.end method

.method protected a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected h()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04c2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04b8

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04bb

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04be

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04c9

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04c1

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->a([I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected i()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "privacy_clear_history"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "privacy_clear_cache"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "privacy_clear_cookies"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "privacy_clear_form_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "privacy_clear_passwords"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "privacy_clear_geolocation_access"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected j()[Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected k()Z
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method
