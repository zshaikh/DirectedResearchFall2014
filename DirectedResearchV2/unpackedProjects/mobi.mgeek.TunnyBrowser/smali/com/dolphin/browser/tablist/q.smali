.class Lcom/dolphin/browser/tablist/q;
.super Ljava/lang/Object;
.source "CloudTabListView.java"

# interfaces
.implements Lcom/dolphin/browser/sync/o;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/dolphin/browser/tablist/q;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/tablist/q;->a:Lcom/dolphin/browser/tablist/j;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0611

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;I)V

    .line 347
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/tablist/q;->a:Lcom/dolphin/browser/tablist/j;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0612

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;I)V

    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/tablist/q;->a:Lcom/dolphin/browser/tablist/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;Z)Z

    .line 360
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/tablist/q;->a:Lcom/dolphin/browser/tablist/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/j;->g()V

    .line 352
    iget-object v0, p0, Lcom/dolphin/browser/tablist/q;->a:Lcom/dolphin/browser/tablist/j;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0613

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;I)V

    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/tablist/q;->a:Lcom/dolphin/browser/tablist/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;Z)Z

    .line 354
    return-void
.end method
