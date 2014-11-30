.class Lcom/dolphin/browser/h/b;
.super Ljava/lang/Object;
.source "LongPressPopListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/h/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/h/a;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dolphin/browser/h/b;->a:Lcom/dolphin/browser/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/h/b;->a:Lcom/dolphin/browser/h/a;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/dolphin/browser/h/b;->a:Lcom/dolphin/browser/h/a;

    iget-object v2, v2, Lcom/dolphin/browser/h/a;->a:Landroid/content/Context;

    new-instance v3, Lcom/dolphin/browser/h/d;

    iget-object v4, p0, Lcom/dolphin/browser/h/b;->a:Lcom/dolphin/browser/h/a;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/dolphin/browser/h/d;-><init>(Lcom/dolphin/browser/h/a;Lcom/dolphin/browser/h/b;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, v0, Lcom/dolphin/browser/h/a;->g:Landroid/view/GestureDetector;

    .line 102
    return-void
.end method
