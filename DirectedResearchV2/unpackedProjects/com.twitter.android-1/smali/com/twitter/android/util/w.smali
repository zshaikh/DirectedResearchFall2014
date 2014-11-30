.class public final Lcom/twitter/android/util/w;
.super Lcom/twitter/android/util/k;


# instance fields
.field public final d:I

.field private final e:Ljava/util/ArrayList;

.field private final f:Landroid/content/Context;

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/16 v0, 0x96

    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/twitter/android/util/k;-><init>(Landroid/content/Context;III)V

    iput p2, p0, Lcom/twitter/android/util/w;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/util/w;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/twitter/android/util/w;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/android/ca;->user_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/util/w;->g:I

    return-void
.end method

.method private a([BLjava/lang/Long;Ljava/lang/String;)Lcom/twitter/android/util/n;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/twitter/android/util/w;->d:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/util/w;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/android/ca;->mini_user_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p1, v0, v0}, Lcom/twitter/android/util/h;->b([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/twitter/android/util/w;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/n;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/twitter/android/util/w;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/n;

    goto :goto_0
.end method


# virtual methods
.method public final a(J)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/twitter/android/util/k;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p5

    invoke-super/range {v0 .. v5}, Lcom/twitter/android/util/k;->a(JLjava/lang/Object;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(JLjava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;
    .locals 3

    check-cast p3, Ljava/lang/Long;

    iget-object v0, p0, Lcom/twitter/android/util/w;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/util/w;->d:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid cache type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/util/w;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/provider/al;->e(J)[B

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/twitter/android/util/w;->a([BLjava/lang/Long;Ljava/lang/String;)Lcom/twitter/android/util/n;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final bridge synthetic a(JLjava/lang/Object;Ljava/lang/String;[B)Lcom/twitter/android/util/f;
    .locals 6

    check-cast p3, Ljava/lang/Long;

    iget-object v0, p0, Lcom/twitter/android/util/w;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/util/w;->d:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v5, p0, Lcom/twitter/android/util/w;->g:I

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/al;->a(JLjava/lang/String;[BI)[B

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/twitter/android/util/w;->a([BLjava/lang/Long;Ljava/lang/String;)Lcom/twitter/android/util/n;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;
    .locals 3

    check-cast p1, Ljava/lang/Long;

    new-instance v0, Lcom/twitter/android/util/n;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p2}, Lcom/twitter/android/util/n;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/twitter/android/util/j;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/util/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Ljava/util/HashMap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/util/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/j;

    invoke-interface {v0, p0, p1}, Lcom/twitter/android/util/j;->a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/util/j;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/util/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
