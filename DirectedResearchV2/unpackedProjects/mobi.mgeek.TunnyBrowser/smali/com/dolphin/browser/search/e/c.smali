.class Lcom/dolphin/browser/search/e/c;
.super Ljava/lang/Object;
.source "SearchEngineEntryTrackManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/search/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/dolphin/browser/search/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/search/e/a;-><init>(Lcom/dolphin/browser/search/e/b;)V

    sput-object v0, Lcom/dolphin/browser/search/e/c;->a:Lcom/dolphin/browser/search/e/a;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/search/e/a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/dolphin/browser/search/e/c;->a:Lcom/dolphin/browser/search/e/a;

    return-object v0
.end method
