.class Lcom/dolphin/browser/extensions/an;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/al;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/al;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/dolphin/browser/extensions/an;->a:Lcom/dolphin/browser/extensions/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/extensions/an;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/al;)Z

    move-result v0

    check-cast p1, Lcom/dolphin/browser/core/IBrowserSettings;

    invoke-interface {p1}, Lcom/dolphin/browser/core/IBrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/dolphin/browser/extensions/an;->a:Lcom/dolphin/browser/extensions/al;

    iget-object v0, p0, Lcom/dolphin/browser/extensions/an;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/al;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/al;Z)V

    .line 269
    :cond_0
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
