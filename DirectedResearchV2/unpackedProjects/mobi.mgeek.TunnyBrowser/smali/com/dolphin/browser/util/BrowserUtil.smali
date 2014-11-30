.class public Lcom/dolphin/browser/util/BrowserUtil;
.super Ljava/lang/Object;
.source "BrowserUtil.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 464
    const-string v0, "(?i)((?:http|https|file):\\/\\/|(?:inline|data|about|content|javascript|dolphin|fullscreen|dolphingame):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/BrowserUtil;->a:Ljava/util/regex/Pattern;

    .line 617
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "about:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javascript:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/util/BrowserUtil;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Landroid/content/Intent;
    .locals 11

    .prologue
    const/high16 v10, 0x41000000

    const/high16 v9, 0x3f800000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 675
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 676
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 677
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v2, "new_tab"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    const-string v2, "type"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 682
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    if-eqz p3, :cond_0

    .line 687
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p3, v1, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 688
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 692
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 693
    sget-object v4, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 694
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 695
    invoke-virtual {v4, v9, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 696
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v10, v10, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 700
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 701
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 702
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 704
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 713
    :goto_0
    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    return-object v0

    .line 707
    :cond_0
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget v2, Lcom/dolphin/browser/core/R$drawable;->default_touch_icon:I

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 670
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/content/Intent;
    .locals 9

    .prologue
    .line 720
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 721
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 722
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v2, "new_tab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    const-string v2, "type"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 727
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    if-eqz p3, :cond_0

    .line 731
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 732
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 736
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 737
    sget-object v4, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 738
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 739
    const/high16 v5, 0x3f800000

    const/high16 v6, 0x3f800000

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 740
    const/high16 v5, 0x41000000

    const/high16 v6, 0x41000000

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 744
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 745
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 746
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 748
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 787
    :goto_0
    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 788
    return-object v0

    .line 750
    :cond_0
    if-nez p4, :cond_1

    .line 751
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget v2, Lcom/dolphin/browser/core/R$drawable;->ic_launcher_shortcut_browser_bookmark:I

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 755
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$drawable;->ic_launcher_shortcut_browser_bookmark:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 759
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 760
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 764
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 765
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 766
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 772
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x41a00000

    sub-float/2addr v1, v5

    .line 773
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/high16 v7, 0x41a00000

    const/high16 v8, 0x41a00000

    add-float/2addr v8, v1

    invoke-direct {v5, v6, v1, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 776
    const/high16 v1, 0x40000000

    const/high16 v6, 0x40000000

    invoke-virtual {v3, v5, v1, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 781
    const/high16 v1, 0x40000000

    const/high16 v6, 0x40000000

    invoke-virtual {v5, v1, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 782
    const/4 v1, 0x0

    invoke-virtual {v3, p4, v1, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 783
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/ContentResolver;)Lcom/dolphin/browser/util/al;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 278
    const-string v2, ""

    .line 280
    if-eqz p0, :cond_d

    .line 281
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 282
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 285
    :cond_0
    const-string v4, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "application/dolphin-url"

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    .line 290
    :try_start_0
    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 292
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 293
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    :goto_0
    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    if-eqz v2, :cond_2

    const-string v3, "dolphinvideo://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    new-instance v0, Lcom/dolphin/browser/util/al;

    invoke-direct {v0, v2}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;)V

    .line 358
    :goto_1
    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 296
    new-instance v0, Lcom/dolphin/browser/util/al;

    invoke-direct {v0, v2, v1}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_3

    const-string v2, "content:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 311
    if-eqz v2, :cond_3

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_3
    const-string v2, "inline:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 316
    new-instance v0, Lcom/dolphin/browser/util/ak;

    const-string v1, "com.android.browser.inline.content"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.browser.inline.encoding"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.browser.inline.failurl"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/util/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 358
    :goto_2
    new-instance v2, Lcom/dolphin/browser/util/al;

    invoke-direct {v2, v1, v0}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    goto :goto_1

    .line 321
    :cond_5
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 324
    :cond_6
    const-string v2, "query"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_d

    .line 326
    const-string v4, "engine_type"

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 327
    invoke-static {v4, v2}, Lcom/dolphin/browser/util/BrowserUtil;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 335
    :cond_7
    invoke-static {v2}, Lcom/dolphin/browser/util/BrowserUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 338
    const-string v2, "fullscreen://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullscreen://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fullscreen://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/BrowserUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    :goto_3
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/dolphin/browser/search/g;->a()Ljava/lang/String;

    move-result-object v2

    .line 347
    sget-object v3, Lcom/dolphin/browser/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/dolphin/browser/util/BrowserUtil;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_8
    const-string v3, "rakuton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "http://search.rakuten.co.jp/search/mall/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 348
    :cond_9
    new-instance v2, Lcom/dolphin/browser/util/al;

    invoke-direct {v2, v1, v0}, Lcom/dolphin/browser/util/al;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    goto/16 :goto_1

    .line 341
    :cond_a
    invoke-static {v4, v1}, Lcom/dolphin/browser/util/BrowserUtil;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 351
    :cond_b
    invoke-static {v4, v1}, Lcom/dolphin/browser/util/BrowserUtil;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 353
    :cond_c
    const-string v4, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 355
    invoke-static {p0}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto/16 :goto_2

    :cond_d
    move-object v1, v2

    goto/16 :goto_2
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    invoke-static {p1}, Lcom/dolphin/browser/util/BrowserUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 366
    const-string v1, "fullscreen://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fullscreen://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fullscreen://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/search/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 375
    sget-object v2, Lcom/dolphin/browser/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/dolphin/browser/util/BrowserUtil;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string v2, "rakuton"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://search.rakuten.co.jp/search/mall/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 379
    :cond_1
    :goto_1
    return-object v0

    .line 369
    :cond_2
    invoke-static {p0, v0}, Lcom/dolphin/browser/util/BrowserUtil;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_3
    invoke-static {p0, v0}, Lcom/dolphin/browser/util/BrowserUtil;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    const-string v1, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_0

    .line 414
    const-string v1, "android.speech.extras.VOICE_SEARCH_RESULT_URLS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 416
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 417
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 420
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    if-eqz p0, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 881
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 882
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 884
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 847
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 849
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 853
    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 2

    .prologue
    .line 797
    invoke-static {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v1

    .line 798
    if-eqz p5, :cond_0

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 800
    return-void

    .line 798
    :cond_0
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 2

    .prologue
    .line 821
    if-nez p2, :cond_0

    .line 827
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-static {p0, p1, p2, p3, p5}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Landroid/content/Intent;

    move-result-object v1

    .line 825
    if-eqz p4, :cond_1

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 825
    :cond_1
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 892
    .line 894
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 895
    const-string v0, "content://com.android.launcher.settings/favorites?notify=true"

    .line 901
    :goto_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 902
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 904
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_4

    move v0, v8

    .line 910
    :goto_1
    if-eqz v1, :cond_0

    .line 912
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 918
    :cond_0
    :goto_2
    return v0

    .line 897
    :cond_1
    const-string v0, "content://com.android.launcher2.settings/favorites?notify=true"

    goto :goto_0

    .line 913
    :catch_0
    move-exception v1

    .line 914
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 907
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 908
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 910
    if-eqz v1, :cond_3

    .line 912
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v6

    .line 915
    goto :goto_2

    .line 913
    :catch_2
    move-exception v0

    .line 914
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v6

    .line 915
    goto :goto_2

    .line 910
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_2

    .line 912
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 915
    :cond_2
    :goto_5
    throw v0

    .line 913
    :catch_3
    move-exception v1

    .line 914
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 910
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 907
    :catch_4
    move-exception v0

    goto :goto_3

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 862
    .line 866
    :try_start_0
    const-string v1, "shortcut"

    invoke-static {p3, p4, v1}, Lcom/dolphin/browser/util/at;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 871
    :goto_0
    if-eqz v1, :cond_0

    .line 872
    invoke-static {p0, p1, p2, v1, v2}, Lcom/dolphin/browser/util/BrowserUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 873
    const/4 v0, 0x1

    .line 876
    :cond_0
    return v0

    .line 867
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 868
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 383
    if-eqz p0, :cond_1

    .line 384
    invoke-static {p0}, Lcom/dolphin/browser/util/BrowserUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 385
    sget-object v1, Lcom/dolphin/browser/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dolphin/browser/util/BrowserUtil;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string v0, ""

    .line 399
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 400
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getVerticalSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/search/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    .line 403
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/search/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dolphin/browser/search/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 816
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 817
    return-void
.end method

.method public static c(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 533
    if-nez p1, :cond_0

    .line 534
    const-string v0, ""

    .line 576
    :goto_0
    return-object v0

    .line 536
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 537
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 539
    :goto_1
    sget-object v3, Lcom/dolphin/browser/util/BrowserUtil;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 540
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 542
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 544
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    :goto_2
    if-eqz v0, :cond_5

    .line 548
    const-string v0, " "

    const-string v2, "%20"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 552
    :cond_2
    if-eqz v0, :cond_4

    .line 555
    invoke-static {v2}, Lcom/dolphin/browser/util/BrowserUtil;->g(Ljava/lang/String;)I

    move-result v0

    .line 556
    if-eqz v0, :cond_3

    .line 558
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    packed-switch v0, :pswitch_data_0

    .line 576
    :cond_3
    invoke-static {p0, v2}, Lcom/dolphin/browser/util/BrowserUtil;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :pswitch_0
    const-string v0, "http://www.google.com/m?q=%s"

    const-string v2, "%s"

    invoke-static {v1, v0, v2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 563
    :pswitch_1
    const-string v0, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    const-string v2, "%s"

    invoke-static {v1, v0, v2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 565
    :pswitch_2
    const-string v0, "http://dictionary.reference.com/search?q=%s"

    const-string v2, "%s"

    invoke-static {v1, v0, v2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 568
    :pswitch_3
    const-string v0, "http://www.google.com/m/search?site=local&q=%s&near=mountain+view"

    const-string v2, "%s"

    invoke-static {v1, v0, v2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 572
    :cond_4
    sget-object v0, Lcom/dolphin/browser/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    invoke-static {v2}, Lcom/dolphin/browser/util/BrowserUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_2

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 424
    if-nez p0, :cond_1

    .line 425
    const/4 v0, 0x0

    .line 454
    :cond_0
    :goto_0
    return-object v0

    .line 432
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 433
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    move-object v0, p0

    .line 434
    :goto_1
    if-ge v1, v4, :cond_2

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 436
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 444
    :cond_2
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    :cond_3
    const-string v1, "http:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 449
    :cond_4
    const-string v1, "/"

    const-string v2, "//"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_5
    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    and-int/2addr v3, v5

    .line 440
    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_6

    if-nez v3, :cond_6

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :cond_7
    const-string v1, ":"

    const-string v2, "://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 479
    if-nez p0, :cond_0

    .line 480
    const-string v0, ""

    .line 522
    :goto_0
    return-object v0

    .line 482
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 483
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 485
    :goto_1
    sget-object v3, Lcom/dolphin/browser/util/BrowserUtil;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 486
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 488
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 490
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    :goto_2
    if-eqz v0, :cond_5

    .line 494
    const-string v0, " "

    const-string v2, "%20"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 498
    :cond_2
    if-eqz v0, :cond_4

    .line 501
    invoke-static {v2}, Lcom/dolphin/browser/util/BrowserUtil;->g(Ljava/lang/String;)I

    move-result v0

    .line 502
    if-eqz v0, :cond_3

    .line 504
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    packed-switch v0, :pswitch_data_0

    .line 522
    :cond_3
    invoke-static {v2}, Lcom/dolphin/browser/util/BrowserUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 507
    :pswitch_0
    const-string v0, "http://www.google.com/m?q=%s"

    const-string v2, "%s"

    invoke-static {v1, v0, v2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 509
    :pswitch_1
    const-string v0, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    const-string v2, "%s"

    invoke-static {v1, v0, v2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 511
    :pswitch_2
    const-string v0, "http://dictionary.reference.com/search?q=%s"

    const-string v2, "%s"

    invoke-static {v1, v0, v2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 514
    :pswitch_3
    const-string v0, "http://www.google.com/m/search?site=local&q=%s&near=mountain+view"

    const-string v2, "%s"

    invoke-static {v1, v0, v2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 518
    :cond_4
    sget-object v0, Lcom/dolphin/browser/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    invoke-static {v2}, Lcom/dolphin/browser/util/BrowserUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_2

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x23

    const/4 v3, -0x1

    .line 583
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 584
    invoke-static {p0}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_0
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 622
    if-nez p0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v6, v2

    .line 626
    :goto_1
    sget-object v0, Lcom/dolphin/browser/util/BrowserUtil;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 627
    sget-object v0, Lcom/dolphin/browser/util/BrowserUtil;->b:[Ljava/lang/String;

    aget-object v3, v0, v6

    .line 628
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    .line 629
    goto :goto_0

    .line 626
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1
.end method

.method private static g(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 240
    if-nez p0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 252
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 248
    goto :goto_0

    :sswitch_2
    move v0, v2

    .line 250
    goto :goto_0

    .line 254
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x67 -> :sswitch_1
        0x6c -> :sswitch_3
        0x77 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 645
    invoke-static {v0}, Lcom/dolphin/browser/util/URIUtil;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 650
    if-eqz v2, :cond_0

    .line 651
    new-instance v0, Ljava/net/URISyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invalid for bookmark"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/util/ds;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/ds;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    iget-object v1, v0, Lcom/dolphin/browser/util/ds;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 660
    const-string v0, ""

    .line 665
    :cond_1
    :goto_0
    return-object v0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    const-string v0, ""

    goto :goto_0

    .line 662
    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/util/ds;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
