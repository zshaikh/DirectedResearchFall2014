.class Lcom/dolphin/browser/core/bd;
.super Ljava/lang/Object;
.source "UsageDatabaseHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/core/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/dolphin/browser/core/bb;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/core/bb;-><init>(Landroid/content/Context;Lcom/dolphin/browser/core/bc;)V

    sput-object v0, Lcom/dolphin/browser/core/bd;->a:Lcom/dolphin/browser/core/bb;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/core/bb;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dolphin/browser/core/bd;->a:Lcom/dolphin/browser/core/bb;

    return-object v0
.end method
