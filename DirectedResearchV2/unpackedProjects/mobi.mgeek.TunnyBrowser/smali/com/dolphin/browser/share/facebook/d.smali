.class Lcom/dolphin/browser/share/facebook/d;
.super Ljava/lang/Object;
.source "FacebookShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/q/c/n;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/d;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 680
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/q/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 674
    invoke-static {}, Lcom/dolphin/browser/share/facebook/a;->b()Lcom/dolphin/browser/share/facebook/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/share/facebook/a;->a(Ljava/util/List;)V

    .line 675
    return-void
.end method
