.class Lcom/dolphin/browser/j/b/n;
.super Ljava/lang/Object;
.source "SiteCertRevocationValidator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/dolphin/browser/j/b/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/j/b/l;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dolphin/browser/j/b/n;->b:Lcom/dolphin/browser/j/b/l;

    iput-object p2, p0, Lcom/dolphin/browser/j/b/n;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/j/b/n;->b:Lcom/dolphin/browser/j/b/l;

    iget-object v0, v0, Lcom/dolphin/browser/j/b/l;->b:Lcom/dolphin/browser/j/b/k;

    iget-object v1, p0, Lcom/dolphin/browser/j/b/n;->b:Lcom/dolphin/browser/j/b/l;

    iget-object v1, v1, Lcom/dolphin/browser/j/b/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/j/b/n;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/j/b/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method
