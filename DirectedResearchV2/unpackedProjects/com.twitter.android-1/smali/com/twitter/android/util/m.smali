.class public final Lcom/twitter/android/util/m;
.super Lcom/twitter/android/util/k;


# instance fields
.field private final d:Lcom/twitter/android/util/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/util/e;I)V
    .locals 2

    const/16 v0, 0x19

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/twitter/android/util/k;-><init>(Landroid/content/Context;III)V

    iput-object p2, p0, Lcom/twitter/android/util/m;->d:Lcom/twitter/android/util/e;

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p3

    invoke-super/range {v0 .. v5}, Lcom/twitter/android/util/k;->a(JLjava/lang/Object;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(JLjava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(JLjava/lang/Object;Ljava/lang/String;[B)Lcom/twitter/android/util/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;
    .locals 2

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/util/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/twitter/android/util/f;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method protected final a(Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/util/m;->d:Lcom/twitter/android/util/e;

    invoke-interface {v0, p0, p1}, Lcom/twitter/android/util/e;->a(Lcom/twitter/android/util/k;Ljava/util/HashMap;)V

    return-void
.end method
