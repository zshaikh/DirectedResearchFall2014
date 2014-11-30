.class public Lcom/acmeaom/android/a/c/j;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/c/b;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/c/b;J)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/acmeaom/android/a/c/j;->a:Lcom/acmeaom/android/a/c/b;

    .line 11
    iput-wide p2, p0, Lcom/acmeaom/android/a/c/j;->b:J

    .line 12
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/acmeaom/android/a/c/k;->a:[I

    iget-object v1, p0, Lcom/acmeaom/android/a/c/j;->a:Lcom/acmeaom/android/a/c/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/c/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 20
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 21
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 17
    :pswitch_0
    iget-wide v0, p0, Lcom/acmeaom/android/a/c/j;->b:J

    goto :goto_0

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
