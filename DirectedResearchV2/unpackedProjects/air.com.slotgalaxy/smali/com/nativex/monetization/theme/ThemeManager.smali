.class public Lcom/nativex/monetization/theme/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static instance:Lcom/nativex/monetization/theme/ThemeManager;


# instance fields
.field private theme:Lcom/nativex/monetization/theme/Theme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTheme()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    new-instance v1, Lcom/nativex/monetization/theme/DarkTheme;

    invoke-direct {v1}, Lcom/nativex/monetization/theme/DarkTheme;-><init>()V

    iput-object v1, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    .line 44
    :cond_0
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/nativex/monetization/theme/Theme;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/nativex/monetization/theme/Theme;->initialize()V

    .line 47
    :cond_1
    return-void
.end method

.method public static getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;

    .prologue
    .line 93
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->getInstance()Lcom/nativex/monetization/theme/ThemeManager;

    .line 94
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->checkTheme()V

    .line 95
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    invoke-virtual {v0, p0}, Lcom/nativex/monetization/theme/Theme;->getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;
    .locals 2
    .param p0, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;

    .prologue
    .line 82
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->getInstance()Lcom/nativex/monetization/theme/ThemeManager;

    .line 83
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->checkTheme()V

    .line 84
    sget-object v1, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v1, v1, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    invoke-virtual {v1, p0}, Lcom/nativex/monetization/theme/Theme;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v0

    .line 85
    .local v0, "color":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 86
    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;
    .param p1, "colorDrawableIfNull"    # Z

    .prologue
    .line 71
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->getInstance()Lcom/nativex/monetization/theme/ThemeManager;

    .line 72
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->checkTheme()V

    .line 73
    sget-object v1, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v1, v1, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    invoke-virtual {v1, p0}, Lcom/nativex/monetization/theme/Theme;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 77
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private static getInstance()Lcom/nativex/monetization/theme/ThemeManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/nativex/monetization/theme/ThemeManager;

    invoke-direct {v0}, Lcom/nativex/monetization/theme/ThemeManager;-><init>()V

    sput-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    return-object v0
.end method

.method public static getTheme()Lcom/nativex/monetization/theme/Theme;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->getInstance()Lcom/nativex/monetization/theme/ThemeManager;

    .line 60
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/nativex/monetization/theme/Theme;->release()V

    .line 121
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    .line 123
    :cond_1
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/nativex/monetization/theme/Theme;->release()V

    goto :goto_0
.end method

.method public static setTheme(Lcom/nativex/monetization/theme/Theme;)V
    .locals 1
    .param p0, "theme"    # Lcom/nativex/monetization/theme/Theme;

    .prologue
    .line 51
    invoke-static {}, Lcom/nativex/monetization/theme/ThemeManager;->getInstance()Lcom/nativex/monetization/theme/ThemeManager;

    .line 52
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    if-eq v0, p0, :cond_0

    .line 53
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/nativex/monetization/theme/Theme;->release()V

    .line 55
    :cond_0
    sget-object v0, Lcom/nativex/monetization/theme/ThemeManager;->instance:Lcom/nativex/monetization/theme/ThemeManager;

    iput-object p0, v0, Lcom/nativex/monetization/theme/ThemeManager;->theme:Lcom/nativex/monetization/theme/Theme;

    .line 56
    return-void
.end method

.method public static setViewBackground(Landroid/view/View;Lcom/nativex/monetization/theme/ThemeElementTypes;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;

    .prologue
    .line 101
    invoke-static {p1}, Lcom/nativex/monetization/theme/ThemeManager;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
