.class Lcom/dolphin/browser/push/data/j;
.super Ljava/lang/Object;
.source "PushMessageDabaseHelper.java"


# static fields
.field static final a:Lcom/dolphin/browser/push/data/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/dolphin/browser/push/data/i;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/push/data/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/push/data/j;->a:Lcom/dolphin/browser/push/data/i;

    return-void
.end method
