.class Lcom/dolphin/browser/downloads/i;
.super Landroid/database/CursorWrapper;
.source "DownloadProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# instance fields
.field private a:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 747
    check-cast p1, Landroid/database/CrossProcessCursor;

    iput-object p1, p0, Lcom/dolphin/browser/downloads/i;->a:Landroid/database/CrossProcessCursor;

    .line 748
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/dolphin/browser/downloads/i;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 760
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/dolphin/browser/downloads/i;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/dolphin/browser/downloads/i;->a:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
