.class Lcom/dolphin/browser/tablist/aa;
.super Ljava/lang/Object;
.source "CloudTabReceivedManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/w;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/w;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/dolphin/browser/tablist/aa;->a:Lcom/dolphin/browser/tablist/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aa;->a:Lcom/dolphin/browser/tablist/w;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/w;->d(Lcom/dolphin/browser/tablist/w;)V

    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aa;->a:Lcom/dolphin/browser/tablist/w;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/w;->e(Lcom/dolphin/browser/tablist/w;)V

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aa;->a:Lcom/dolphin/browser/tablist/w;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/w;->f(Lcom/dolphin/browser/tablist/w;)V

    .line 210
    return-void
.end method
