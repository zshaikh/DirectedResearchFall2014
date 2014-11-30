.class public final Lcom/google/android/gms/drive/internal/h;
.super Lcom/google/android/gms/internal/cj;


# static fields
.field public static final a:[Lcom/google/android/gms/drive/internal/h;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/drive/internal/h;

    sput-object v0, Lcom/google/android/gms/drive/internal/h;->a:[Lcom/google/android/gms/drive/internal/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cj;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/h;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/h;->c:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/h;->d:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/h;->e:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/h;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/h;->b:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ch;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/h;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ch;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/h;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ch;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/h;->e:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ch;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/drive/internal/h;->g:I

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/ch;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/h;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ch;->a(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ch;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/h;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ch;->a(IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/h;->e:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ch;->a(IJ)V

    return-void
.end method
