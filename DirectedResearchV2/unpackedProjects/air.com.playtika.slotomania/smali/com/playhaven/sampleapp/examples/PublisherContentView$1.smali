.class Lcom/playhaven/sampleapp/examples/PublisherContentView$1;
.super Ljava/lang/Object;
.source "PublisherContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/sampleapp/examples/PublisherContentView;->createPreloadButton()Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/sampleapp/examples/PublisherContentView;


# direct methods
.method constructor <init>(Lcom/playhaven/sampleapp/examples/PublisherContentView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView$1;->this$0:Lcom/playhaven/sampleapp/examples/PublisherContentView;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherContentView$1;->this$0:Lcom/playhaven/sampleapp/examples/PublisherContentView;

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/examples/PublisherContentView;->preloadRequest()V

    .line 87
    return-void
.end method
