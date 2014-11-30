.class Lcom/dolphin/browser/core/bj;
.super Ljava/lang/Object;
.source "WebIconDatabase.java"


# static fields
.field private static a:Lcom/dolphin/browser/core/WebIconDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/dolphin/browser/core/WebIconDatabase;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/core/WebIconDatabase;-><init>(Lcom/dolphin/browser/core/bi;)V

    sput-object v0, Lcom/dolphin/browser/core/bj;->a:Lcom/dolphin/browser/core/WebIconDatabase;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/core/WebIconDatabase;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/dolphin/browser/core/bj;->a:Lcom/dolphin/browser/core/WebIconDatabase;

    return-object v0
.end method
