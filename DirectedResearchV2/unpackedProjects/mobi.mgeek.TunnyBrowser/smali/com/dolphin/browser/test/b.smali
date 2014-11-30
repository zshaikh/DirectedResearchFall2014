.class public final Lcom/dolphin/browser/test/b;
.super Landroid/content/ContextWrapper;
.source "TestContext.java"


# static fields
.field private static a:Lcom/dolphin/browser/test/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/dolphin/browser/test/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/test/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/test/b;->a:Lcom/dolphin/browser/test/b;

    .line 12
    sget-object v0, Lcom/dolphin/browser/test/b;->a:Lcom/dolphin/browser/test/b;

    return-object v0
.end method
