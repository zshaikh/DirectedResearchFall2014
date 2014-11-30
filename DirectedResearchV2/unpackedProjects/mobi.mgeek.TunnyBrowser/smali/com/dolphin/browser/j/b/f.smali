.class Lcom/dolphin/browser/j/b/f;
.super Ljava/lang/Object;
.source "SSLCRLSocketFactory.java"


# static fields
.field private static final a:Lcom/dolphin/browser/j/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/dolphin/browser/j/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/j/b/d;-><init>(Lcom/dolphin/browser/j/b/e;)V

    sput-object v0, Lcom/dolphin/browser/j/b/f;->a:Lcom/dolphin/browser/j/b/d;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/j/b/d;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/dolphin/browser/j/b/f;->a:Lcom/dolphin/browser/j/b/d;

    return-object v0
.end method
