.class final Lcom/twitter/android/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/twitter/android/util/k;


# direct methods
.method constructor <init>(Lcom/twitter/android/util/k;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/util/c;->a:Lcom/twitter/android/util/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/twitter/android/util/f;

    check-cast p2, Lcom/twitter/android/util/f;

    iget v0, p1, Lcom/twitter/android/util/f;->b:I

    iget v1, p2, Lcom/twitter/android/util/f;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/twitter/android/util/f;->b:I

    iget v1, p2, Lcom/twitter/android/util/f;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
