.class Lcom/dolphin/browser/extensions/bk;
.super Ljava/lang/Object;
.source "ShareAddons.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/bh;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/bh;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bk;->a:Lcom/dolphin/browser/extensions/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bk;->a:Lcom/dolphin/browser/extensions/bh;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bh;->a(Lcom/dolphin/browser/extensions/bh;)V

    .line 218
    return-void
.end method
