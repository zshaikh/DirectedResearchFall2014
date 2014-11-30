.class Lcom/playhaven/sampleapp/SampleApp$1;
.super Ljava/lang/Object;
.source "SampleApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/sampleapp/SampleApp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/sampleapp/SampleApp;


# direct methods
.method constructor <init>(Lcom/playhaven/sampleapp/SampleApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/sampleapp/SampleApp$1;->this$0:Lcom/playhaven/sampleapp/SampleApp;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 104
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 p3, p3, -0x1

    .line 106
    iget-object v0, p0, Lcom/playhaven/sampleapp/SampleApp$1;->this$0:Lcom/playhaven/sampleapp/SampleApp;

    # invokes: Lcom/playhaven/sampleapp/SampleApp;->itemTapped(I)V
    invoke-static {v0, p3}, Lcom/playhaven/sampleapp/SampleApp;->access$0(Lcom/playhaven/sampleapp/SampleApp;I)V

    .line 107
    return-void
.end method
