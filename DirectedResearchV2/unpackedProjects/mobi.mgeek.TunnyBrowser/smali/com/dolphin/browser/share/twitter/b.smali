.class Lcom/dolphin/browser/share/twitter/b;
.super Ljava/lang/Object;
.source "TwitterShareView.java"

# interfaces
.implements Lcom/dolphin/browser/share/twitter/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/twitter/TwitterShareView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/twitter/TwitterShareView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/b;->a:Lcom/dolphin/browser/share/twitter/TwitterShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 47
    if-gez p1, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/b;->a:Lcom/dolphin/browser/share/twitter/TwitterShareView;

    invoke-static {v1}, Lcom/dolphin/browser/share/twitter/TwitterShareView;->a(Lcom/dolphin/browser/share/twitter/TwitterShareView;)Lcom/dolphin/browser/share/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/share/h;->b(Z)V

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
