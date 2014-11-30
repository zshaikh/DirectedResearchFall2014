.class Lcom/dolphin/browser/dolphinwebkit/g;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/dolphinwebkit/MyWebView;

.field final synthetic b:Lcom/dolphin/browser/dolphinwebkit/j;

.field final synthetic c:Lcom/dolphin/browser/dolphinwebkit/MyWebView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/j;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/g;->c:Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    iput-object p2, p0, Lcom/dolphin/browser/dolphinwebkit/g;->a:Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    iput-object p3, p0, Lcom/dolphin/browser/dolphinwebkit/g;->b:Lcom/dolphin/browser/dolphinwebkit/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/g;->c:Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/g;->a:Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    iget-object v2, p0, Lcom/dolphin/browser/dolphinwebkit/g;->b:Lcom/dolphin/browser/dolphinwebkit/j;

    # invokes: Lcom/dolphin/browser/dolphinwebkit/MyWebView;->onRetrievedUsernamePasswordField(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/j;)V
    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->access$000(Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/MyWebView;Lcom/dolphin/browser/dolphinwebkit/j;)V

    .line 648
    return-void
.end method
