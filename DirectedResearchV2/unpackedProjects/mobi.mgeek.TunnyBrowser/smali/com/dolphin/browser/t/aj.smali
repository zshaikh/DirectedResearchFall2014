.class Lcom/dolphin/browser/t/aj;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;

.field private b:I


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 1

    .prologue
    .line 491
    iput-object p1, p0, Lcom/dolphin/browser/t/aj;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/t/aj;->b:I

    return-void
.end method


# virtual methods
.method public onScrollChanged(II)V
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Lcom/dolphin/browser/t/aj;->b:I

    sub-int v0, p1, v0

    .line 500
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v1, -0x8

    if-gt v0, v1, :cond_1

    .line 501
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/t/aj;->b:I

    .line 502
    iget-object v0, p0, Lcom/dolphin/browser/t/aj;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->z()V

    .line 504
    :cond_1
    return-void
.end method
