.class Lcom/dolphin/browser/analytics/d;
.super Ljava/lang/Object;
.source "ActivationAnalysisManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/analytics/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/dolphin/browser/analytics/a;

    invoke-direct {v0}, Lcom/dolphin/browser/analytics/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/analytics/d;->a:Lcom/dolphin/browser/analytics/a;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/analytics/a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/dolphin/browser/analytics/d;->a:Lcom/dolphin/browser/analytics/a;

    return-object v0
.end method
