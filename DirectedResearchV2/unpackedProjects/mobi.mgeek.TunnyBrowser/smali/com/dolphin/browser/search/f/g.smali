.class Lcom/dolphin/browser/search/f/g;
.super Ljava/lang/Object;
.source "SearchUpgradeManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/search/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/dolphin/browser/search/f/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/search/f/e;-><init>(Lcom/dolphin/browser/search/f/f;)V

    sput-object v0, Lcom/dolphin/browser/search/f/g;->a:Lcom/dolphin/browser/search/f/e;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/search/f/e;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/dolphin/browser/search/f/g;->a:Lcom/dolphin/browser/search/f/e;

    return-object v0
.end method
