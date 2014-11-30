.class public Lcom/dolphin/browser/extensions/BaseExtension;
.super Ljava/lang/Object;
.source "BaseExtension.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IBaseExtension;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/res/Resources;

.field protected final mExtensionContext:Landroid/content/Context;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/extensions/BaseExtension;->mExtensionContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$drawable;->button_background:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCheckBoxDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 139
    sget v0, Lcom/dolphin/browser/core/R$drawable;->checkbox_on:I

    sget v1, Lcom/dolphin/browser/core/R$drawable;->checkbox_off:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bc;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/extensions/BaseExtension;->a:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/extensions/BaseExtension;->mExtensionContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/BaseExtension;->a:Landroid/view/LayoutInflater;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/BaseExtension;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getRadioButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 157
    sget v0, Lcom/dolphin/browser/core/R$drawable;->radio_on:I

    sget v1, Lcom/dolphin/browser/core/R$drawable;->radio_off:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bc;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/extensions/BaseExtension;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/extensions/BaseExtension;->mExtensionContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/BaseExtension;->b:Landroid/content/res/Resources;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/BaseExtension;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTabManager()Lcom/dolphin/browser/core/TabManager;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    return-object v0
.end method

.method public final notifyAddonIconChanged()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method public onCreateHandler()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 177
    return-void
.end method

.method public onDisable()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 187
    return-void
.end method

.method public onEnable()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public onExtensionClick(Landroid/content/Context;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public openUrl(Ljava/lang/String;Z)V
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 95
    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->l()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 97
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 101
    :goto_0
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    goto :goto_0
.end method

.method public refreshConfig()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 172
    return-void
.end method
