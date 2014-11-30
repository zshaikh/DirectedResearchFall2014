.class Lcom/dolphin/browser/f/e/c;
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
    .line 106
    iput-object p1, p0, Lcom/dolphin/browser/f/e/c;->a:Lcom/dolphin/browser/f/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/f/e/c;->a:Lcom/dolphin/browser/f/e/b;

    invoke-static {v0}, Lcom/dolphin/browser/f/e/b;->a(Lcom/dolphin/browser/f/e/b;)V

    .line 112
    return-void
.end method
