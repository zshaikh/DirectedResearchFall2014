.class Lcom/dolphin/browser/t/h;
.super Ljava/lang/Object;
.source "DownloadHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/a;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/dolphin/browser/t/h;->a:Lcom/dolphin/browser/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/t/h;->a:Lcom/dolphin/browser/t/a;

    invoke-static {v0}, Lcom/dolphin/browser/t/a;->b(Lcom/dolphin/browser/t/a;)V

    .line 468
    return-void
.end method
