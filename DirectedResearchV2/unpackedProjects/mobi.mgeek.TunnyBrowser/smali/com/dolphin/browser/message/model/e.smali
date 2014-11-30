.class Lcom/dolphin/browser/message/model/e;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/message/model/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/message/model/d;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/dolphin/browser/message/model/e;->a:Lcom/dolphin/browser/message/model/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/message/model/e;->a:Lcom/dolphin/browser/message/model/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/d;->d()V

    .line 349
    return-void
.end method
