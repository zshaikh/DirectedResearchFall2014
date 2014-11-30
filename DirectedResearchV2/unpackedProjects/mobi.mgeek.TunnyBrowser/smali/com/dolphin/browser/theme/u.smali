.class Lcom/dolphin/browser/theme/u;
.super Ljava/lang/Object;
.source "SkinItem.java"

# interfaces
.implements Lcom/g/a/b;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/s;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/s;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/dolphin/browser/theme/u;->a:Lcom/dolphin/browser/theme/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public b(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/theme/u;->a:Lcom/dolphin/browser/theme/s;

    iget-object v0, v0, Lcom/dolphin/browser/theme/s;->a:Lcom/dolphin/browser/theme/q;

    iget-object v0, v0, Lcom/dolphin/browser/theme/q;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/theme/u;->a:Lcom/dolphin/browser/theme/s;

    iget-object v0, v0, Lcom/dolphin/browser/theme/s;->a:Lcom/dolphin/browser/theme/q;

    iget-object v0, v0, Lcom/dolphin/browser/theme/q;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    return-void
.end method

.method public d(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
