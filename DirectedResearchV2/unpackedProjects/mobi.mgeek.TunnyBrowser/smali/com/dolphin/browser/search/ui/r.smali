.class Lcom/dolphin/browser/search/ui/r;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/r;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 464
    const-string v0, "Click Go Button To Load Url"

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/util/cx;->b:Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZLjava/lang/Object;)Lcom/dolphin/browser/util/cw;

    .line 465
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/r;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->e(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/r;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0, v3, v3}, Lcom/dolphin/browser/search/ui/c;->a(IZ)Z

    .line 468
    :cond_0
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "go"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/r;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->a(Ljava/lang/String;)Z

    move-result v0

    .line 470
    if-eqz v0, :cond_1

    const-string v0, "url"

    .line 471
    :goto_0
    const-string v1, "address bar"

    const-string v2, "input"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->b()V

    .line 473
    return-void

    .line 470
    :cond_1
    const-string v0, "keyword"

    goto :goto_0
.end method
