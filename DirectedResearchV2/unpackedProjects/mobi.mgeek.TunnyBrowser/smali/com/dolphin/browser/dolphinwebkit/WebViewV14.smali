.class Lcom/dolphin/browser/dolphinwebkit/WebViewV14;
.super Lcom/dolphin/browser/dolphinwebkit/MyWebView;
.source "WebViewV14.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;-><init>(Landroid/content/Context;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;-><init>(Landroid/content/Context;Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public addPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public hideZoomButtonsController()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public setFindDialogHeight(I)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
