.class Lcom/dolphin/browser/q/a/h;
.super Ljava/lang/Object;
.source "BoxAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/a/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/g;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/dolphin/browser/q/a/h;->a:Lcom/dolphin/browser/q/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/q/a/h;->a:Lcom/dolphin/browser/q/a/g;

    iget-object v0, v0, Lcom/dolphin/browser/q/a/g;->d:Lcom/dolphin/browser/q/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/q/a/h;->a:Lcom/dolphin/browser/q/a/g;

    iget-object v1, v1, Lcom/dolphin/browser/q/a/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/q/a/h;->a:Lcom/dolphin/browser/q/a/g;

    iget v2, v2, Lcom/dolphin/browser/q/a/g;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/q/a/b;->a(Lcom/dolphin/browser/q/a/b;Ljava/lang/String;I)V

    .line 216
    return-void
.end method
