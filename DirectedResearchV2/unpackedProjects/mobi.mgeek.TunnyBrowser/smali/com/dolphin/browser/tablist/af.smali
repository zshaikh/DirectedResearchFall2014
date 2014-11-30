.class Lcom/dolphin/browser/tablist/af;
.super Ljava/lang/Object;
.source "CurrentTablistView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ac;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/dolphin/browser/tablist/af;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 278
    invoke-static {}, Lcom/dolphin/browser/tablist/ch;->a()Lcom/dolphin/browser/tablist/ch;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/af;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v2}, Lcom/dolphin/browser/tablist/ac;->b(Lcom/dolphin/browser/tablist/ac;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/ch;->a(Ljava/util/List;)V

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/tablist/af;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->c(Lcom/dolphin/browser/tablist/ac;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/tablist/af;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->d(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/as;->a()V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/af;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->e(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/cs;->a()V

    goto :goto_0
.end method
