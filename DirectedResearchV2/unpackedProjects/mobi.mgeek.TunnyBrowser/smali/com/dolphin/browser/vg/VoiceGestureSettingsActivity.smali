.class public Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;
.super Lcom/mgeek/android/ui/TabActivity;
.source "VoiceGestureSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mgeek/android/ui/TabActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;IILcom/dolphin/browser/extensions/ThemeManager;)V
    .locals 5

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 112
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08039e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 113
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080099

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 117
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01bb

    invoke-virtual {p5, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 118
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f8

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f9

    const/4 v4, 0x0

    invoke-virtual {v1, p3, v2, v3, v4}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method private a(Lcom/mgeek/android/ui/TabHost;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    .line 95
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03011d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b009b

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 97
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b009a

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 99
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    const/16 v1, 0x10

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 101
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200c9

    invoke-virtual {p2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    const-string v1, "divider"

    invoke-virtual {p1, v1}, Lcom/mgeek/android/ui/TabHost;->a(Ljava/lang/String;)Lcom/mgeek/android/ui/az;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgeek/android/ui/az;->a(Landroid/view/View;)Lcom/mgeek/android/ui/az;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/vg/VoiceSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/az;->a(Landroid/content/Intent;)Lcom/mgeek/android/ui/az;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/az;)V

    .line 108
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/mgeek/android/ui/TabActivity;->finish()V

    .line 126
    invoke-static {p0}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const v12, 0x7f03010b

    const/high16 v11, 0x3f800000

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/mgeek/android/ui/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v5

    .line 38
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f6

    invoke-virtual {v5, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSupportSonar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 43
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03011e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->a()Lcom/mgeek/android/ui/TabHost;

    move-result-object v6

    .line 45
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0169

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0168

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b009c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    invoke-static {p0, v12, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 51
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 53
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 54
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020144

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e02e3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;IILcom/dolphin/browser/extensions/ThemeManager;)V

    .line 57
    const-string v0, "gesture"

    invoke-virtual {v6, v0}, Lcom/mgeek/android/ui/TabHost;->a(Ljava/lang/String;)Lcom/mgeek/android/ui/az;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/az;->a(Landroid/view/View;)Lcom/mgeek/android/ui/az;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/az;->a(Landroid/content/Intent;)Lcom/mgeek/android/ui/az;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/az;)V

    .line 64
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isSupportSonar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-direct {p0, v6, v5, v7}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->a(Lcom/mgeek/android/ui/TabHost;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/content/res/Resources;)V

    .line 66
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    invoke-static {p0, v12, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 67
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 69
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 70
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 71
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0202af

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e05bb

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;IILcom/dolphin/browser/extensions/ThemeManager;)V

    .line 73
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    const-string v0, "voice"

    invoke-virtual {v6, v0}, Lcom/mgeek/android/ui/TabHost;->a(Ljava/lang/String;)Lcom/mgeek/android/ui/az;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/az;->a(Landroid/view/View;)Lcom/mgeek/android/ui/az;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/vg/VoiceSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/az;->a(Landroid/content/Intent;)Lcom/mgeek/android/ui/az;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/az;)V

    .line 83
    :goto_0
    invoke-virtual {v6}, Lcom/mgeek/android/ui/TabHost;->b()Lcom/mgeek/android/ui/TabWidget;

    move-result-object v0

    invoke-virtual {v6}, Lcom/mgeek/android/ui/TabHost;->b()Lcom/mgeek/android/ui/TabWidget;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/dolphin/browser/vg/VoiceGestureSettingsActivity;->a()Lcom/mgeek/android/ui/TabHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgeek/android/ui/TabHost;->b(Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void

    .line 81
    :cond_2
    invoke-virtual {v6}, Lcom/mgeek/android/ui/TabHost;->b()Lcom/mgeek/android/ui/TabWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabWidget;->setVisibility(I)V

    goto :goto_0
.end method
