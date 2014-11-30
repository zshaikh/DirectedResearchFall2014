.class public Lcom/dolphin/browser/extensions/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Lcom/dolphin/browser/theme/i;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/extensions/ThemeManager;


# instance fields
.field private b:Lcom/dolphin/browser/theme/i;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/theme/i;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    .line 62
    return-void
.end method

.method public static final a()Lcom/dolphin/browser/extensions/ThemeManager;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/dolphin/browser/extensions/ThemeManager;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;-><init>(Lcom/dolphin/browser/theme/i;)V

    sput-object v0, Lcom/dolphin/browser/extensions/ThemeManager;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/dolphin/browser/extensions/ThemeManager;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 2

    .prologue
    .line 178
    const-string v0, "ThemeManager"

    const-string v1, "handle theme installed called"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/theme/i;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 180
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->a(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->a(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/aq;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->a(Lcom/dolphin/browser/theme/aq;)V

    .line 127
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->a(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public a(Z)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b(I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/i;->b()V

    .line 199
    return-void
.end method

.method public b(Lcom/dolphin/browser/theme/aq;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->b(Lcom/dolphin/browser/theme/aq;)V

    .line 132
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->b(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public c(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/dolphin/browser/theme/data/a;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/i;->c()Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)F
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ThemeManager;->b:Lcom/dolphin/browser/theme/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->e(I)F

    move-result v0

    return v0
.end method
