.class Lcom/dolphin/browser/l/j;
.super Ljava/lang/Object;
.source "PasswordDatabase.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/l/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/dolphin/browser/l/h;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/l/h;-><init>(Landroid/content/Context;Lcom/dolphin/browser/l/i;)V

    sput-object v0, Lcom/dolphin/browser/l/j;->a:Lcom/dolphin/browser/l/h;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/l/h;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/dolphin/browser/l/j;->a:Lcom/dolphin/browser/l/h;

    return-object v0
.end method
