.class Lcom/dolphin/browser/search/ui/s;
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
    .line 476
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/s;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/s;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/c;->dismiss()V

    .line 480
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->c()V

    .line 482
    return-void
.end method
