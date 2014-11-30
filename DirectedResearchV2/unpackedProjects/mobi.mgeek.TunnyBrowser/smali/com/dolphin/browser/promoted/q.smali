.class Lcom/dolphin/browser/promoted/q;
.super Ljava/lang/Object;
.source "PromotionView.java"

# interfaces
.implements Lcom/dolphin/browser/promoted/k;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/promoted/p;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/promoted/p;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/dolphin/browser/promoted/q;->a:Lcom/dolphin/browser/promoted/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/dolphin/browser/promoted/q;->a:Lcom/dolphin/browser/promoted/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/p;->a(Lcom/dolphin/browser/promoted/p;Z)Z

    .line 563
    return-void
.end method
