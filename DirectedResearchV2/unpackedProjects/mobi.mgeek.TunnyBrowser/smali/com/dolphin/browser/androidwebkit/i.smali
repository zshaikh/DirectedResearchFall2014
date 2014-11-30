.class Lcom/dolphin/browser/androidwebkit/i;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/MyWebView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebView;)V
    .locals 0

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/i;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/i;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->B()V

    .line 1868
    return-void
.end method
