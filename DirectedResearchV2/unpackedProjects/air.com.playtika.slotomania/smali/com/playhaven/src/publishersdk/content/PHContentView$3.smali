.class Lcom/playhaven/src/publishersdk/content/PHContentView$3;
.super Ljava/lang/Object;
.source "PHContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;->showCloseAfterTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;


# direct methods
.method constructor <init>(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$3;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$3;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    # invokes: Lcom/playhaven/src/publishersdk/content/PHContentView;->showCloseButton()V
    invoke-static {v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->access$4(Lcom/playhaven/src/publishersdk/content/PHContentView;)V

    .line 575
    return-void
.end method
