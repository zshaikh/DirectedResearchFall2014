.class Lcom/dolphin/browser/t/q;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/dolphin/browser/t/q;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/dolphin/browser/t/q;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->s()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    const-string v1, "dolphin://ncrash"

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 1262
    return-void
.end method
