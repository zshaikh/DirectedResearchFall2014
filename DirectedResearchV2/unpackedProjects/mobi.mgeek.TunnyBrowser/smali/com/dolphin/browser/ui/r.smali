.class Lcom/dolphin/browser/ui/r;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/addons/AlertDialogBuilder;

.field final synthetic c:Lcom/dolphin/browser/ui/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/AlertDialog$Builder;Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/dolphin/browser/ui/r;->c:Lcom/dolphin/browser/ui/AlertDialog$Builder;

    iput-object p2, p0, Lcom/dolphin/browser/ui/r;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dolphin/browser/ui/r;->b:Lcom/dolphin/browser/addons/AlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/ui/r;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/ui/r;->b:Lcom/dolphin/browser/addons/AlertDialogBuilder;

    iget-object v1, v1, Lcom/dolphin/browser/addons/AlertDialogBuilder;->i:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/at;->a(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/ui/r;->b:Lcom/dolphin/browser/addons/AlertDialogBuilder;

    iget-object v0, v0, Lcom/dolphin/browser/addons/AlertDialogBuilder;->j:Landroid/os/Message;

    invoke-static {v0}, Lcom/dolphin/browser/util/at;->a(Landroid/os/Message;)Z

    .line 186
    return-void
.end method
