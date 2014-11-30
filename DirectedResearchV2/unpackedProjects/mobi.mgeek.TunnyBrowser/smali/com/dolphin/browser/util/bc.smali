.class public Lcom/dolphin/browser/util/bc;
.super Ljava/lang/Object;
.source "IconHelperCore.java"


# static fields
.field public static final a:Lcom/e/a/a;

.field public static final b:Lcom/e/a/a;

.field public static final c:Lcom/e/a/a;

.field public static final d:Lcom/e/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/dolphin/browser/util/bd;

    sget v1, Lcom/dolphin/browser/core/R$color;->themed_base_color_green:I

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/bd;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/util/bc;->a:Lcom/e/a/a;

    .line 34
    new-instance v0, Lcom/dolphin/browser/util/bd;

    sget v1, Lcom/dolphin/browser/core/R$color;->themed_base_color_green_80:I

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/bd;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/util/bc;->b:Lcom/e/a/a;

    .line 35
    new-instance v0, Lcom/dolphin/browser/util/bd;

    sget v1, Lcom/dolphin/browser/core/R$color;->themed_base_color_green_50:I

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/bd;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/util/bc;->c:Lcom/e/a/a;

    .line 36
    new-instance v0, Lcom/dolphin/browser/util/bd;

    sget v1, Lcom/dolphin/browser/core/R$color;->themed_base_color_green_30:I

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/bd;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/util/bc;->d:Lcom/e/a/a;

    return-void
.end method

.method public static a(II)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 70
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 71
    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 72
    new-instance v3, Lcom/dolphin/browser/theme/a/b;

    invoke-direct {v3, v1}, Lcom/dolphin/browser/theme/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-interface {v0, p0}, Lcom/dolphin/browser/theme/i;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    instance-of v0, v1, Lcom/e/a/z;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 75
    check-cast v0, Lcom/e/a/z;

    sget-object v4, Lcom/dolphin/browser/util/bc;->a:Lcom/e/a/a;

    invoke-virtual {v0, v4}, Lcom/e/a/z;->b(Lcom/e/a/a;)V

    .line 78
    :cond_0
    new-array v0, v6, [I

    const v4, -0x10100a0

    aput v4, v0, v5

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 81
    new-array v0, v6, [I

    const v3, 0x10100a0

    aput v3, v0, v5

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 84
    return-object v2
.end method
