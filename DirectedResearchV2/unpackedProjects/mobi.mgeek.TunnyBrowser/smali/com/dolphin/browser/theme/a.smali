.class public Lcom/dolphin/browser/theme/a;
.super Landroid/content/ContextWrapper;
.source "AppContext.java"


# static fields
.field private static a:Lcom/dolphin/browser/theme/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/dolphin/browser/theme/a;->a:Lcom/dolphin/browser/theme/a;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/dolphin/browser/theme/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/theme/a;->a:Lcom/dolphin/browser/theme/a;

    .line 34
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/dolphin/browser/theme/a;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/theme/a;->a:Lcom/dolphin/browser/theme/a;

    return-object v0
.end method
