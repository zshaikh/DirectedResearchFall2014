.class Lcom/dolphin/browser/launcher/ak;
.super Lcom/g/a/c;
.source "DropTargetBar.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/dolphin/browser/launcher/DropTargetBar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/DropTargetBar;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ak;->b:Lcom/dolphin/browser/launcher/DropTargetBar;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/ak;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/g/a/a;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ak;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/g/c/a;->a(Landroid/view/View;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ak;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method
