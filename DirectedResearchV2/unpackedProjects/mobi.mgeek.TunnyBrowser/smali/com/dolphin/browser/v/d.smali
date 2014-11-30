.class Lcom/dolphin/browser/v/d;
.super Ljava/lang/Object;
.source "SiteTrackUtils.java"


# static fields
.field private static a:Lcom/dolphin/browser/v/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/dolphin/browser/v/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/v/b;-><init>(Lcom/dolphin/browser/v/c;)V

    sput-object v0, Lcom/dolphin/browser/v/d;->a:Lcom/dolphin/browser/v/b;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/v/b;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/dolphin/browser/v/d;->a:Lcom/dolphin/browser/v/b;

    return-object v0
.end method
