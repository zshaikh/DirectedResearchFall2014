.class Lcom/dolphin/browser/share/a/b;
.super Ljava/lang/Object;
.source "EvernoteAddTagDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/a;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dolphin/browser/share/a/b;->a:Lcom/dolphin/browser/share/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/share/a/b;->a:Lcom/dolphin/browser/share/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/a/a;->a(Lcom/dolphin/browser/share/a/a;Z)V

    .line 95
    return-void
.end method
