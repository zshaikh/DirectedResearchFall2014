.class Lcom/dolphin/browser/push/ae;
.super Ljava/lang/Object;
.source "PushMessageScheduler.java"


# static fields
.field private static a:Lcom/dolphin/browser/push/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/dolphin/browser/push/ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/push/ab;-><init>(Lcom/dolphin/browser/push/ac;)V

    sput-object v0, Lcom/dolphin/browser/push/ae;->a:Lcom/dolphin/browser/push/ab;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/push/ab;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/dolphin/browser/push/ae;->a:Lcom/dolphin/browser/push/ab;

    return-object v0
.end method
