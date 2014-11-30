.class Lcom/dolphin/browser/q/d/x;
.super Ljava/lang/Object;
.source "TwitterAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/w;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/w;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dolphin/browser/q/d/x;->a:Lcom/dolphin/browser/q/d/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/q/d/x;->a:Lcom/dolphin/browser/q/d/w;

    iget-object v0, v0, Lcom/dolphin/browser/q/d/w;->a:Lcom/dolphin/browser/q/d/s;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/s;->b(Lcom/dolphin/browser/q/d/s;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 226
    return-void
.end method
