.class Lcom/dolphin/browser/titlebar/m;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/titlebar/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/titlebar/k;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/m;->a:Lcom/dolphin/browser/titlebar/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/m;->a:Lcom/dolphin/browser/titlebar/k;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/m;->a:Lcom/dolphin/browser/titlebar/k;

    invoke-static {v1}, Lcom/dolphin/browser/titlebar/k;->d(Lcom/dolphin/browser/titlebar/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/k;->b(Ljava/lang/String;)V

    .line 755
    return-void
.end method
