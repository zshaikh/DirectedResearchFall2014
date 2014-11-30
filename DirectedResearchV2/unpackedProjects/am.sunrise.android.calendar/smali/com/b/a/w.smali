.class Lcom/b/a/w;
.super Lcom/b/a/m;
.source "FileBitmapHunter.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/b/a/m;-><init>(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;)V

    .line 35
    return-void
.end method

.method static a(Landroid/net/Uri;)I
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    packed-switch v0, :pswitch_data_0

    .line 54
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 48
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 50
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 52
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p1, Lcom/b/a/ap;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/b/a/w;->a(Landroid/net/Uri;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/b/a/w;->a(I)V

    .line 40
    invoke-super {p0, p1}, Lcom/b/a/m;->a(Lcom/b/a/ap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
