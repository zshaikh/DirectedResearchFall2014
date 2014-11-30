.class Lcom/dolphin/browser/f/e/d;
.super Ljava/lang/Object;
.source "HomePageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/f/e/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/f/e/b;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dolphin/browser/f/e/d;->a:Lcom/dolphin/browser/f/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/f/e/d;->a:Lcom/dolphin/browser/f/e/b;

    invoke-static {v0}, Lcom/dolphin/browser/f/e/b;->b(Lcom/dolphin/browser/f/e/b;)V

    .line 121
    return-void
.end method
