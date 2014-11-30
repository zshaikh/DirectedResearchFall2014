.class Lmobi/mgeek/TunnyBrowser/he;
.super Landroid/widget/ResourceCursorAdapter;
.source "SpeedDialChooser.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/gy;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/gy;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 730
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/he;->a:Lmobi/mgeek/TunnyBrowser/gy;

    .line 732
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 733
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 746
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/b/k;

    if-eqz v0, :cond_0

    .line 747
    check-cast p1, Lcom/dolphin/browser/bookmark/b/k;

    .line 748
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/k;->a(Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/dolphin/browser/bookmark/b/k;->a(Ljava/lang/String;Z)V

    .line 750
    invoke-virtual {p1, v2, v2, v2, v2}, Lcom/dolphin/browser/bookmark/b/k;->setPadding(IIII)V

    .line 751
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 752
    if-eqz v0, :cond_0

    .line 753
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 754
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/k;->a(Landroid/graphics/Bitmap;)V

    .line 757
    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 738
    new-instance v0, Lcom/dolphin/browser/bookmark/b/k;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/bookmark/b/k;-><init>(Landroid/content/Context;)V

    .line 739
    const/16 v1, 0x36

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/b/k;->setMinimumHeight(I)V

    .line 740
    return-object v0
.end method
