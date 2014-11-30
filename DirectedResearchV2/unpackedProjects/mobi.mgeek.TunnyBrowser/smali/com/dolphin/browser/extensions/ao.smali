.class Lcom/dolphin/browser/extensions/ao;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/a;

.field final synthetic b:Lcom/dolphin/browser/extensions/al;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/al;Lcom/dolphin/browser/extensions/a;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/dolphin/browser/extensions/ao;->b:Lcom/dolphin/browser/extensions/al;

    iput-object p2, p0, Lcom/dolphin/browser/extensions/ao;->a:Lcom/dolphin/browser/extensions/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ao;->a:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->j()V

    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ao;->a:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->h()V

    .line 337
    return-void
.end method
