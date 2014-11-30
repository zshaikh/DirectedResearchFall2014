.class Lcom/dolphin/browser/util/da;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/cy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/dolphin/browser/util/cy;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/util/cy;-><init>(Landroid/content/Context;Lcom/dolphin/browser/util/cz;)V

    sput-object v0, Lcom/dolphin/browser/util/da;->a:Lcom/dolphin/browser/util/cy;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/util/cy;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/dolphin/browser/util/da;->a:Lcom/dolphin/browser/util/cy;

    return-object v0
.end method
