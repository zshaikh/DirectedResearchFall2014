.class final Lcom/twitter/android/network/l;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private final a:Lcom/twitter/android/network/g;

.field private final b:J

.field private final c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JLcom/twitter/android/network/g;)V
    .locals 4

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p4, p0, Lcom/twitter/android/network/l;->a:Lcom/twitter/android/network/g;

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/twitter/android/network/l;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/android/network/l;->d:J

    iget-wide v0, p0, Lcom/twitter/android/network/l;->b:J

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/l;->c:J

    iget-wide v0, p0, Lcom/twitter/android/network/l;->c:J

    iput-wide v0, p0, Lcom/twitter/android/network/l;->e:J

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 5

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iget-wide v0, p0, Lcom/twitter/android/network/l;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/l;->d:J

    iget-wide v0, p0, Lcom/twitter/android/network/l;->d:J

    iget-wide v2, p0, Lcom/twitter/android/network/l;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    iget-object v0, p0, Lcom/twitter/android/network/l;->a:Lcom/twitter/android/network/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/network/l;->a:Lcom/twitter/android/network/g;

    iget-wide v1, p0, Lcom/twitter/android/network/l;->d:J

    iget-wide v3, p0, Lcom/twitter/android/network/l;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/twitter/android/network/g;->a(JJ)V

    :cond_0
    iget-wide v0, p0, Lcom/twitter/android/network/l;->e:J

    iget-wide v2, p0, Lcom/twitter/android/network/l;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/l;->e:J

    :cond_1
    return-void
.end method

.method public final write([BII)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    iget-wide v0, p0, Lcom/twitter/android/network/l;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/l;->d:J

    iget-wide v0, p0, Lcom/twitter/android/network/l;->d:J

    iget-wide v2, p0, Lcom/twitter/android/network/l;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    iget-object v0, p0, Lcom/twitter/android/network/l;->a:Lcom/twitter/android/network/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/network/l;->a:Lcom/twitter/android/network/g;

    iget-wide v1, p0, Lcom/twitter/android/network/l;->d:J

    iget-wide v3, p0, Lcom/twitter/android/network/l;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/twitter/android/network/g;->a(JJ)V

    :cond_0
    iget-wide v0, p0, Lcom/twitter/android/network/l;->e:J

    iget-wide v2, p0, Lcom/twitter/android/network/l;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/network/l;->e:J

    :cond_1
    return-void
.end method
