.class Lcom/dolphin/browser/u/b;
.super Lcom/dolphin/browser/util/f;
.source "BaseCursorAdapter.java"


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
.field final synthetic a:Lcom/dolphin/browser/u/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/u/a;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/u/a;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/u/b;->a([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/u/a;->changeCursor(Landroid/database/Cursor;)V

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/u/a;->e()Lcom/dolphin/browser/u/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-virtual {v2}, Lcom/dolphin/browser/u/a;->e()Lcom/dolphin/browser/u/c;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-interface {v2, v3, v0}, Lcom/dolphin/browser/u/c;->a(Lcom/dolphin/browser/u/a;Z)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-static {v0, v1}, Lcom/dolphin/browser/u/a;->a(Lcom/dolphin/browser/u/a;Z)Z

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-static {v0}, Lcom/dolphin/browser/u/a;->a(Lcom/dolphin/browser/u/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-static {v0, v1}, Lcom/dolphin/browser/u/a;->b(Lcom/dolphin/browser/u/a;Z)Z

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/u/b;->a:Lcom/dolphin/browser/u/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/u/a;->d()V

    .line 94
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/u/b;->a(Landroid/database/Cursor;)V

    return-void
.end method
