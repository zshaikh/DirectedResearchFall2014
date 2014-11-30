.class Lcom/dolphin/browser/menu/p;
.super Ljava/lang/Object;
.source "ListMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/l;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/dolphin/browser/menu/p;->a:Lcom/dolphin/browser/menu/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/dolphin/browser/menu/p;->a:Lcom/dolphin/browser/menu/l;

    invoke-static {v0}, Lcom/dolphin/browser/menu/l;->c(Lcom/dolphin/browser/menu/l;)Lcom/dolphin/browser/menu/r;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/menu/r;->a(I)Lcom/dolphin/browser/extensions/n;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    new-instance v0, Lcom/dolphin/browser/c/p;

    invoke-direct {v0}, Lcom/dolphin/browser/c/p;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/p;->a()Z

    goto :goto_0
.end method
