.class Lcom/dolphin/browser/util/bp;
.super Ljava/lang/Object;
.source "LocalizationConfiger.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/dolphin/browser/util/bn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/bn;-><init>(Lcom/dolphin/browser/util/bo;)V

    sput-object v0, Lcom/dolphin/browser/util/bp;->a:Lcom/dolphin/browser/util/bn;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/util/bn;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/dolphin/browser/util/bp;->a:Lcom/dolphin/browser/util/bn;

    return-object v0
.end method
