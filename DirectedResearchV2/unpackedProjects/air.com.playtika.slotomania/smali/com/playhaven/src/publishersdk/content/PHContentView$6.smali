.class Lcom/playhaven/src/publishersdk/content/PHContentView$6;
.super Ljava/lang/Object;
.source "PHContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;->setupWebviewRoutes()V
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
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$6;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$6;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentView;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/content/PHContentView;->handleLoadContext()V

    .line 705
    return-void
.end method
