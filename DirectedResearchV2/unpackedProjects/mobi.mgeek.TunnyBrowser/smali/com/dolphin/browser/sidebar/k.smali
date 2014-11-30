.class Lcom/dolphin/browser/sidebar/k;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/k;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/k;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/i;->f(Lcom/dolphin/browser/sidebar/i;)V

    .line 591
    return-void
.end method
