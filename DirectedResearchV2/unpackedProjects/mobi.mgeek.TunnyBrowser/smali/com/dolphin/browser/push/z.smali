.class Lcom/dolphin/browser/push/z;
.super Ljava/lang/Object;
.source "PushMessageDispatcher.java"


# static fields
.field private static a:Lcom/dolphin/browser/push/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/dolphin/browser/push/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/push/w;-><init>(Lcom/dolphin/browser/push/x;)V

    sput-object v0, Lcom/dolphin/browser/push/z;->a:Lcom/dolphin/browser/push/w;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/push/w;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/push/z;->a:Lcom/dolphin/browser/push/w;

    return-object v0
.end method
