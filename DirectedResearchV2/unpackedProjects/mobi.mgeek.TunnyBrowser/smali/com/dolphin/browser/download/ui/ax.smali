.class Lcom/dolphin/browser/download/ui/ax;
.super Lcom/dolphin/browser/util/f;
.source "DownloadedCategoryAdapter.java"


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
.field final synthetic a:Lcom/dolphin/browser/download/a;

.field final synthetic b:Lcom/dolphin/browser/download/ui/aw;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/aw;Lcom/dolphin/browser/download/a;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ax;->b:Lcom/dolphin/browser/download/ui/aw;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/ax;->a:Lcom/dolphin/browser/download/a;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ax;->b:Lcom/dolphin/browser/download/ui/aw;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/ax;->a:Lcom/dolphin/browser/download/a;

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/aw;->a(Lcom/dolphin/browser/download/ui/aw;Lcom/dolphin/browser/download/a;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/ax;->a([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ax;->b:Lcom/dolphin/browser/download/ui/aw;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/download/ui/aw;->changeCursor(Landroid/database/Cursor;)V

    .line 47
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/ax;->a(Landroid/database/Cursor;)V

    return-void
.end method
