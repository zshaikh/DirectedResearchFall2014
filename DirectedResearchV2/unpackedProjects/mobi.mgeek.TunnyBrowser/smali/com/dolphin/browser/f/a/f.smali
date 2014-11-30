.class Lcom/dolphin/browser/f/a/f;
.super Ljava/lang/Object;
.source "FaviconManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/f/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/dolphin/browser/f/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/f/a/b;-><init>(Lcom/dolphin/browser/f/a/c;)V

    sput-object v0, Lcom/dolphin/browser/f/a/f;->a:Lcom/dolphin/browser/f/a/b;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/f/a/b;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/dolphin/browser/f/a/f;->a:Lcom/dolphin/browser/f/a/b;

    return-object v0
.end method
