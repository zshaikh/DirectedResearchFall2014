.class Lcom/dolphin/browser/download/ui/az;
.super Lcom/dolphin/browser/util/f;
.source "DownloadedCategoryGridAdapter.java"


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
.field final synthetic a:Lcom/dolphin/browser/download/ui/ay;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/ay;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/az;->a:Lcom/dolphin/browser/download/ui/ay;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/az;->a:Lcom/dolphin/browser/download/ui/ay;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ay;->a(Lcom/dolphin/browser/download/ui/ay;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/az;->a([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/az;->a:Lcom/dolphin/browser/download/ui/ay;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/download/ui/ay;->changeCursor(Landroid/database/Cursor;)V

    .line 47
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/az;->a(Landroid/database/Cursor;)V

    return-void
.end method
