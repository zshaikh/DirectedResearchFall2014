.class Lcom/playhaven/sampleapp/examples/ExampleView$1;
.super Ljava/lang/Object;
.source "ExampleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/sampleapp/examples/ExampleView;->createSendButton()Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/sampleapp/examples/ExampleView;


# direct methods
.method constructor <init>(Lcom/playhaven/sampleapp/examples/ExampleView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/sampleapp/examples/ExampleView$1;->this$0:Lcom/playhaven/sampleapp/examples/ExampleView;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView$1;->this$0:Lcom/playhaven/sampleapp/examples/ExampleView;

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->startRequest()V

    .line 102
    return-void
.end method
