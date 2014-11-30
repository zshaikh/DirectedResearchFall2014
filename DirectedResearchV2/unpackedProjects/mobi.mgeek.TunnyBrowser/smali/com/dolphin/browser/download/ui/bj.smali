.class Lcom/dolphin/browser/download/ui/bj;
.super Ljava/lang/Object;
.source "FileManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/FileManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/FileManageActivity;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bj;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 374
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 376
    return-void
.end method
