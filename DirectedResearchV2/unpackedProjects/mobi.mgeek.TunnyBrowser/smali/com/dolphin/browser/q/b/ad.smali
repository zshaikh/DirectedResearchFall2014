.class Lcom/dolphin/browser/q/b/ad;
.super Ljava/lang/Object;
.source "EvernoteAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/ac;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/ac;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ad;->a:Lcom/dolphin/browser/q/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ad;->a:Lcom/dolphin/browser/q/b/ac;

    iget-object v0, v0, Lcom/dolphin/browser/q/b/ac;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/y;->a(Lcom/dolphin/browser/q/b/y;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 246
    return-void
.end method
