.class Lcom/dolphin/browser/tablist/az;
.super Lcom/dolphin/browser/util/f;
.source "RecentTablistView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ay;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ay;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/dolphin/browser/tablist/az;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/tablist/az;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ay;->a(Lcom/dolphin/browser/tablist/ay;)Landroid/database/Cursor;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/az;->a([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/tablist/az;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ay;->b(Lcom/dolphin/browser/tablist/ay;)Lcom/dolphin/browser/tablist/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/bc;->changeCursor(Landroid/database/Cursor;)V

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/tablist/az;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ay;->c(Lcom/dolphin/browser/tablist/ay;)V

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/tablist/az;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/ay;->a(Lcom/dolphin/browser/tablist/ay;Z)Z

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/tablist/az;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ay;->d(Lcom/dolphin/browser/tablist/ay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/tablist/az;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/ay;->b(Lcom/dolphin/browser/tablist/ay;Z)Z

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/tablist/az;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ay;->h()V

    .line 267
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/az;->a(Landroid/database/Cursor;)V

    return-void
.end method
