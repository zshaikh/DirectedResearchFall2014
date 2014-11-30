.class Landroid/webkit/MyWebView$HitTestResultWrapper;
.super Landroid/webkit/WebView$HitTestResult;
.source "MyWebView.java"


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Landroid/webkit/MyWebView;


# direct methods
.method constructor <init>(Landroid/webkit/MyWebView;)V
    .locals 1

    .prologue
    .line 362
    iput-object p1, p0, Landroid/webkit/MyWebView$HitTestResultWrapper;->this$0:Landroid/webkit/MyWebView;

    invoke-direct {p0}, Landroid/webkit/WebView$HitTestResult;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/MyWebView$HitTestResultWrapper;->mType:I

    .line 364
    return-void
.end method

.method public constructor <init>(Landroid/webkit/MyWebView;Lcom/dolphin/browser/core/IWebView$HitTestResult;)V
    .locals 1

    .prologue
    .line 353
    iput-object p1, p0, Landroid/webkit/MyWebView$HitTestResultWrapper;->this$0:Landroid/webkit/MyWebView;

    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView$HitTestResult;-><init>()V

    .line 355
    invoke-virtual {p2}, Lcom/dolphin/browser/core/IWebView$HitTestResult;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/webkit/MyWebView$HitTestResultWrapper;->setType(I)V

    .line 356
    invoke-virtual {p2}, Lcom/dolphin/browser/core/IWebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/MyWebView$HitTestResultWrapper;->setExtra(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method private setExtra(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Landroid/webkit/MyWebView$HitTestResultWrapper;->mExtra:Ljava/lang/String;

    .line 372
    return-void
.end method

.method private setType(I)V
    .locals 0

    .prologue
    .line 367
    iput p1, p0, Landroid/webkit/MyWebView$HitTestResultWrapper;->mType:I

    .line 368
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/webkit/MyWebView$HitTestResultWrapper;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Landroid/webkit/MyWebView$HitTestResultWrapper;->mType:I

    return v0
.end method
