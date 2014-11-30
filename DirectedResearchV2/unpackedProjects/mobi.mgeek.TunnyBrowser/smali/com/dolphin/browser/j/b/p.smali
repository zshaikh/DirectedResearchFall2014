.class final Lcom/dolphin/browser/j/b/p;
.super Ljava/lang/Object;
.source "SiteCertRevocationValidator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/j/b/h;

.field private b:Lcom/dolphin/browser/j/b/o;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/j/b/h;Lcom/dolphin/browser/j/b/o;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dolphin/browser/j/b/p;->a:Lcom/dolphin/browser/j/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/dolphin/browser/j/b/p;->b:Lcom/dolphin/browser/j/b/o;

    .line 126
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/j/b/p;->a:Lcom/dolphin/browser/j/b/h;

    iget-object v1, p0, Lcom/dolphin/browser/j/b/p;->b:Lcom/dolphin/browser/j/b/o;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/j/b/h;->a(Lcom/dolphin/browser/j/b/o;)V

    .line 131
    return-void
.end method
