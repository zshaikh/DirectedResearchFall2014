.class Lcom/dolphin/browser/launcher/bz;
.super Ljava/lang/Object;
.source "MiddlePage.java"

# interfaces
.implements Lcom/g/a/au;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/dolphin/browser/launcher/MiddlePage;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/MiddlePage;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bz;->b:Lcom/dolphin/browser/launcher/MiddlePage;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/bz;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/an;)V
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bz;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/dolphin/browser/launcher/bz;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p1}, Lcom/g/a/an;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollTo(II)V

    .line 255
    return-void
.end method
