.class Lcom/fusepowered/m2/m2l/AdViewController$4;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/AdViewController;->setAdContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/AdViewController;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/AdViewController;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdViewController$4;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/AdViewController$4;->val$view:Landroid/view/View;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 450
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController$4;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdViewController;->getMoPubView()Lcom/fusepowered/m2/m2l/MoPubView;

    move-result-object v0

    .line 451
    .local v0, moPubView:Lcom/fusepowered/m2/m2l/MoPubView;
    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MoPubView;->removeAllViews()V

    .line 455
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdViewController$4;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdViewController$4;->this$0:Lcom/fusepowered/m2/m2l/AdViewController;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdViewController$4;->val$view:Landroid/view/View;

    #calls: Lcom/fusepowered/m2/m2l/AdViewController;->getAdLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v2, v3}, Lcom/fusepowered/m2/m2l/AdViewController;->access$1(Lcom/fusepowered/m2/m2l/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
