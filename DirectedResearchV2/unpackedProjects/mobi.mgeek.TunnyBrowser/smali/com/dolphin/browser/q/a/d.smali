.class Lcom/dolphin/browser/q/a/d;
.super Ljava/lang/Object;
.source "BoxAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/a/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/b;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dolphin/browser/q/a/d;->a:Lcom/dolphin/browser/q/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/q/a/d;->a:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/b;->b(Lcom/dolphin/browser/q/a/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 74
    return-void
.end method
