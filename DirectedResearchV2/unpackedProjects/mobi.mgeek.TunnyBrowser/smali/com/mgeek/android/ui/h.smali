.class Lcom/mgeek/android/ui/h;
.super Lcom/dolphin/browser/util/f;
.source "CrashRestoreView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/e;


# direct methods
.method private constructor <init>(Lcom/mgeek/android/ui/e;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mgeek/android/ui/h;->a:Lcom/mgeek/android/ui/e;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/e;Lcom/mgeek/android/ui/f;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/h;-><init>(Lcom/mgeek/android/ui/e;)V

    return-void
.end method

.method private b(I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 195
    .line 196
    iget-object v0, p0, Lcom/mgeek/android/ui/h;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->b(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    iget-object v0, p0, Lcom/mgeek/android/ui/h;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->e(Lcom/mgeek/android/ui/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->IMAGES_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "favicon"

    aput-object v3, v2, v7

    const-string v3, "url_key=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 200
    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-object v5

    .line 203
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 206
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 212
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v2, "Crash restore get favicon error"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v0, p0, Lcom/mgeek/android/ui/h;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->b(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 174
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 176
    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/h;->b(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    if-nez v2, :cond_0

    .line 174
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/mgeek/android/ui/h;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    :cond_1
    return-object v4

    .line 183
    :cond_2
    new-instance v3, Lcom/mgeek/android/ui/i;

    invoke-direct {v3, p0, v0, v2}, Lcom/mgeek/android/ui/i;-><init>(Lcom/mgeek/android/ui/h;ILandroid/graphics/Bitmap;)V

    invoke-static {v3}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
