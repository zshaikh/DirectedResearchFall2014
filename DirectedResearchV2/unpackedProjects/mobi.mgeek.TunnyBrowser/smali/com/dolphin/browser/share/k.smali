.class Lcom/dolphin/browser/share/k;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/dolphin/browser/share/h;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/ShareActivity;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/dolphin/browser/share/k;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/share/k;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-static {v0}, Lcom/dolphin/browser/share/ShareActivity;->b(Lcom/dolphin/browser/share/ShareActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 236
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 237
    iget-object v1, p0, Lcom/dolphin/browser/share/k;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-virtual {v1}, Lcom/dolphin/browser/share/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 239
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 240
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 241
    iget-object v1, p0, Lcom/dolphin/browser/share/k;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-static {v1}, Lcom/dolphin/browser/share/ShareActivity;->b(Lcom/dolphin/browser/share/ShareActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/share/k;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-static {v0}, Lcom/dolphin/browser/share/ShareActivity;->b(Lcom/dolphin/browser/share/ShareActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    return-void

    .line 246
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/share/k;->a:Lcom/dolphin/browser/share/ShareActivity;

    invoke-static {v0}, Lcom/dolphin/browser/share/ShareActivity;->c(Lcom/dolphin/browser/share/ShareActivity;)Lcom/dolphin/browser/share/TitleBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/share/TitleBar;->a(Z)V

    .line 252
    return-void
.end method
