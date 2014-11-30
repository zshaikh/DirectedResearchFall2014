.class Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;
.super Ljava/lang/Object;
.source "ExampleView.java"

# interfaces
.implements Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/sampleapp/examples/ExampleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/playhaven/sampleapp/DetailAdapter$DetailObject;"
    }
.end annotation


# instance fields
.field public customView:Landroid/view/View;

.field public message:Ljava/lang/String;

.field final synthetic this$0:Lcom/playhaven/sampleapp/examples/ExampleView;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/playhaven/sampleapp/examples/ExampleView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tlt"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->this$0:Lcom/playhaven/sampleapp/examples/ExampleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->message:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->title:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->customView:Landroid/view/View;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/playhaven/sampleapp/examples/ExampleView;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tlt"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->this$0:Lcom/playhaven/sampleapp/examples/ExampleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->message:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->title:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->customView:Landroid/view/View;

    .line 46
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;->customView:Landroid/view/View;

    return-object v0
.end method
