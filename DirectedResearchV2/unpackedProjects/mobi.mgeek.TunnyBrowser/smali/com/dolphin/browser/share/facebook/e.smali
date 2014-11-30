.class Lcom/dolphin/browser/share/facebook/e;
.super Ljava/lang/Object;
.source "FacebookShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/q/c/r;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/q/c/b;

.field final synthetic c:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Ljava/lang/String;Lcom/dolphin/browser/q/c/b;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/e;->c:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    iput-object p2, p0, Lcom/dolphin/browser/share/facebook/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/share/facebook/e;->b:Lcom/dolphin/browser/q/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/e;->c:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/e;->b:Lcom/dolphin/browser/q/c/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/q/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method
