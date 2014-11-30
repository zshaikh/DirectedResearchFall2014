.class Lcom/dolphin/browser/ui/launcher/a/f;
.super Ljava/lang/Object;
.source "HomeWorkspaceManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/ui/launcher/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/ui/launcher/a/d;-><init>(Lcom/dolphin/browser/ui/launcher/a/e;)V

    sput-object v0, Lcom/dolphin/browser/ui/launcher/a/f;->a:Lcom/dolphin/browser/ui/launcher/a/d;

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/ui/launcher/a/d;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/dolphin/browser/ui/launcher/a/f;->a:Lcom/dolphin/browser/ui/launcher/a/d;

    return-object v0
.end method
