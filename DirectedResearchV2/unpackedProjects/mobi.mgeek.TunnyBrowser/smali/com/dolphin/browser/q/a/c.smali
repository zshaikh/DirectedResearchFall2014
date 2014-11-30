.class Lcom/dolphin/browser/q/a/c;
.super Ljava/lang/Object;
.source "BoxAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/a/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/b;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/q/a/c;->a:Lcom/dolphin/browser/q/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/q/a/c;->a:Lcom/dolphin/browser/q/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/b;->a(Lcom/dolphin/browser/q/a/b;)V

    .line 67
    return-void
.end method
