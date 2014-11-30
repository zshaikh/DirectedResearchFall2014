.class Lcom/dolphin/browser/message/model/c;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/message/model/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/message/model/b;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/dolphin/browser/message/model/c;->a:Landroid/content/Context;

    .line 261
    iput-object p2, p0, Lcom/dolphin/browser/message/model/c;->b:Lcom/dolphin/browser/message/model/b;

    .line 262
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/message/model/c;->b:Lcom/dolphin/browser/message/model/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/b;->b()Lcom/dolphin/browser/message/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/message/model/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/message/model/a;->a(Landroid/content/Context;)V

    .line 267
    return-void
.end method
