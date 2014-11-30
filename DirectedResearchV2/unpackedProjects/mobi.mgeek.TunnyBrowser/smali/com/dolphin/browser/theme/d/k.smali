.class public Lcom/dolphin/browser/theme/d/k;
.super Landroid/view/View;
.source "ViewState.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/dolphin/browser/theme/d/k;->a:I

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/dolphin/browser/theme/d/k;->FOCUSED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static b()I
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/theme/d/k;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static c()I
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/dolphin/browser/theme/d/k;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static d()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    sget v0, Lcom/dolphin/browser/theme/d/k;->a:I

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/dolphin/browser/theme/d/k;->PRESSED_SELECTED_STATE_SET:[I

    .line 42
    sget-object v1, Lcom/dolphin/browser/theme/d/k;->SELECTED_STATE_SET:[I

    .line 43
    aget v1, v1, v3

    aget v2, v0, v3

    if-ne v1, v2, :cond_1

    .line 44
    const/4 v1, 0x1

    aget v0, v0, v1

    sput v0, Lcom/dolphin/browser/theme/d/k;->a:I

    .line 49
    :cond_0
    :goto_0
    sget v0, Lcom/dolphin/browser/theme/d/k;->a:I

    return v0

    .line 46
    :cond_1
    aget v0, v0, v3

    sput v0, Lcom/dolphin/browser/theme/d/k;->a:I

    goto :goto_0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x10100a0

    return v0
.end method
